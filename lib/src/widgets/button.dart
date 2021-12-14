import 'package:flutter/material.dart';

import '../app_theme.dart';

enum ButtonType { text, outline, elevated }

class CustomButton extends StatelessWidget {
  final String title;
  final bool busy;
  final void Function()? onPressed;
  final ButtonType type;
  final Widget? leading;

  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.leading,
    this.busy = false,
  })  : type = ButtonType.elevated,
        super(key: key);

  const CustomButton.text({
    Key? key,
    required this.title,
    required this.onPressed,
    this.leading,
  })  : busy = false,
        type = ButtonType.text,
        super(key: key);

  const CustomButton.outline({
    Key? key,
    required this.title,
    required this.onPressed,
    this.leading,
  })  : busy = false,
        type = ButtonType.outline,
        super(key: key);

  Color get _color {
    Color _cor = AppTheme().colors.buttonTextLabelColor!;

    if (type == ButtonType.outline) {
      _cor = AppTheme().colors.buttonOutlineLabelColor!;
    } else if (type == ButtonType.elevated) {
      _cor = onPressed != null
          ? AppTheme().colors.buttonElevatedLabelColor!
          : AppTheme().colors.buttonElevatedLabelDisabledColor!;
    }

    return onPressed != null ? _cor : _cor.withOpacity(.4);
  }

  Color get _backgroundColor {
    if (type == ButtonType.elevated) {
      return onPressed != null
          ? AppTheme().colors.buttonElevatedBackgroundColor!
          : AppTheme().colors.buttonElevatedLabelDisabledColor!.withOpacity(.1);
    }
    return Colors.transparent;
  }

  BoxDecoration get _decoration {
    return BoxDecoration(
      borderRadius: AppTheme().buttons.shapeButton!.borderRadius,
      border: type == ButtonType.outline
          ? Border.all(
              color: AppTheme().colors.buttonOutlineBorderColor!,
              width: AppTheme().buttons.shapeButton!.side.width,
            )
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _backgroundColor,
      borderRadius: AppTheme().buttons.shapeButton?.borderRadius,
      elevation: type == ButtonType.elevated
          ? AppTheme().buttons.elevationButton ?? 0.0
          : 0.0,
      child: InkWell(
        borderRadius:
            AppTheme().buttons.shapeButton?.borderRadius as BorderRadius,
        onTap: onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          width: double.infinity,
          height: AppTheme().buttons.minimumSizeButton!.height,
          alignment: Alignment.center,
          decoration: _decoration,
          child: !busy
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (leading != null) leading!,
                    if (leading != null) const SizedBox(width: 5),
                    Text(
                      title,
                      style: AppTheme().styles.buttonStyle!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: _color,
                          ),
                    ),
                  ],
                )
              : const CircularProgressIndicator(
                  strokeWidth: 8,
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
        ),
      ),
    );
  }
}
