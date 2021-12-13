import 'package:flutter/material.dart';

import '../app_theme.dart';

class CustomText extends StatelessWidget {
  final String text;
  final String _baseStyle;
  final TextStyle? style;
  final TextAlign alignment;

  const CustomText(
    this.text, {
    Key? key,
    this.style,
    this.alignment = TextAlign.start,
  })  : _baseStyle = 'bodyText2Style',
        super(key: key);

  const CustomText.appBarTitle(this.text,
      {Key? key, this.style, this.alignment = TextAlign.start})
      : _baseStyle = 'appBarTitleTextStyle',
        super(key: key);

  /// Texto extremamente grande.
  const CustomText.headline1(this.text,
      {Key? key, this.style, this.alignment = TextAlign.start})
      : _baseStyle = 'headline1Style',
        super(key: key);

  const CustomText.headline2(this.text,
      {Key? key, this.style, this.alignment = TextAlign.start})
      : _baseStyle = 'headline2Style',
        super(key: key);

  const CustomText.headline3(this.text,
      {Key? key, this.style, this.alignment = TextAlign.start})
      : _baseStyle = 'headline3Style',
        super(key: key);

  const CustomText.headline4(this.text,
      {Key? key, this.style, this.alignment = TextAlign.start})
      : _baseStyle = 'headline4Style',
        super(key: key);

  /// Usado para texto grande em diálogos (por exemplo, o mês e o ano na caixa de diálogo mostrada por showDatePicker).
  const CustomText.headline5(this.text,
      {Key? key, this.style, this.alignment = TextAlign.start})
      : _baseStyle = 'headline5Style',
        super(key: key);

  /// * Usado para o texto principal em barras de aplicativos e caixas de diálogo (por exemplo, AppBar.title e AlertDialog.title).
  const CustomText.headline6(this.text,
      {Key? key, this.style, this.alignment = TextAlign.start})
      : _baseStyle = 'headline6Style',
        super(key: key);

  /// Usado para o texto principal em listas (por exemplo, ListTile.title).
  const CustomText.subtitle1(this.text,
      {Key? key, this.style, this.alignment = TextAlign.start})
      : _baseStyle = 'subtitle1Style',
        super(key: key);

  const CustomText.subtitle2(this.text,
      {Key? key, this.style, this.alignment = TextAlign.start})
      : _baseStyle = 'subtitle2Style',
        super(key: key);

  /// Usado para enfatizar o texto que, de outra forma, seria bodyText2
  const CustomText.bodyText1(this.text,
      {Key? key, this.style, this.alignment = TextAlign.start})
      : _baseStyle = 'bodyText1Style',
        super(key: key);

  /// * O estilo de texto padrão para Material.
  const CustomText.bodyText2(this.text,
      {Key? key, this.style, this.alignment = TextAlign.start})
      : _baseStyle = 'bodyText2Style',
        super(key: key);

  /// Usado para texto em ElevatedButton, TextButton e OutlinedButton.
  const CustomText.button(this.text,
      {Key? key, this.style, this.alignment = TextAlign.start})
      : _baseStyle = 'buttonStyle',
        super(key: key);

  /// Usado para texto auxiliar associado a imagens.
  const CustomText.caption(this.text,
      {Key? key, this.style, this.alignment = TextAlign.start})
      : _baseStyle = 'captionStyle',
        super(key: key);

  /// O menor estilo
  const CustomText.overline(this.text,
      {Key? key, this.style, this.alignment = TextAlign.start})
      : _baseStyle = 'overlineStyle',
        super(key: key);

  _getStyle(
    TextStyle base,
    TextStyle? style,
  ) {
    return style != null ? base.merge(style) : base;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _getStyle(AppTheme().styles.getStyle(_baseStyle)!, style),
      textAlign: alignment,
    );
  }
}
