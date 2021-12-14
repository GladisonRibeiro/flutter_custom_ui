// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

///# Tokens
// #region

//## Colors
// #region
const iconColor = Color(0xFF1C5E4E);

///  Aplicado em [headline4], [headline3], [headline2], [headline1], e [caption]
const displayColor = Color(0xFF737373);

/// é aplicado aos estilos de texto restantes.
const bodyColor = Color(0xFF333333);

/// A cor exibida com mais frequência nas telas e componentes do seu aplicativo.
const primaryColor = Colors.greenAccent;

/// Uma cor que é claramente legível quando desenhada no primário.
const onPrimaryColor = Color(0xFF333333);

/// Uma versão mais escura da cor primária é aplicada às entradas de cores da borda.
const primaryVariantColor = Color(0xFFF9F3E9);

/// A cor de fundo para widgets como Card.
const surfaceColor = Color(0xFFF7EEDE);

/// Uma cor que é claramente legível quando desenhada na surface.
const onSurfaceColor = Color(0xFF737373);

/// Uma cor de destaque que, quando usada com moderação, chama a atenção para partes do seu aplicativo.
/// Cores secundárias são melhores para:
/// Botões de ação flutuantes
/// Controles de seleção, como sliders e switches
/// Destacando o texto selecionado
/// Barras de progresso
/// Links e headlines
const secondaryColor = Color(0xFF69331F);

/// Uma cor que é claramente legível quando desenhada no secondary.
const onSecondaryColor = Color(0xFFFCF9F4);

/// Uma versão mais escura da cor secundária.
const secondaryVariantColor = Colors.greenAccent;

/// Uma cor que normalmente aparece atrás do conteúdo com scroll.
const backgroundColor = Colors.white;

/// Uma cor que é claramente legível quando desenhada no fundo.
const onBackgroundColor = Colors.black;

/// A cor a ser usada para erros de validação de entrada, por exemplo por InputDecoration.errorText.
const errorColor = Colors.red;

/// Uma cor que é claramente legível quando desenhada sobre errorColor.
const onErrorColor = Colors.white;
const disabledColor = bodyColor;

/// Buttons Colors
const buttonElevatedBackgroundColor = Color(0xFF007A5C);
const buttonElevatedLabelColor = Color(0xFFFCF9F4);
const buttonElevatedLabelDisabledColor = bodyColor;
const buttonOutlineLabelColor = Color(0xFF007A5C);
const buttonOutlineBorderColor = Color(0xFF007A5C);
const buttonTextLabelColor = Color(0xFF333333);

///
const brightnessColor = Brightness.light;

/// Input Color
const fillColorInput = Color(0xFFFCF9F4);
// #endregion

///## Inputs
// #region
const paddingVerticalInput = 16.0;
const paddingHorizontalInput = 24.0;
const shapeInput = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);
// #endregion

///## Styles
// #region
const String fontFamily = 'Montserrat';
// Mais configurações em AppTheme

/// #endregion

///## Buttons
// #region
const minimumSizeButton = Size(double.infinity, 48);
const paddingButton = EdgeInsets.symmetric(horizontal: 16);
const shapeButton = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(5.0)),
);
const elevationButton = 0.0;
const elevationButtonOnPressed = 0.0;
// #endregion

///## Cards
// #region
const shapeCard = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(5.0)),
);
const elevationCard = 0.0;
// #endregion

// #endregion
class AppTheme {
  set styles(StylesConfigTheme newStyles) {
    _styles = styles.merge(newStyles);
  }

  StylesConfigTheme get styles {
    if (_styles != null) {
      return _styles!;
    }

    return StylesConfigTheme(
      fontFamily: fontFamily,
      appBarTitleTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: colors.onPrimaryColor ?? onPrimaryColor,
      ),

      /// Texto extremamente grande.
      headline1Style: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w800,
        color: colors.displayColor ?? displayColor,
      ),
      headline2Style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: colors.displayColor ?? displayColor),
      headline3Style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: colors.displayColor ?? displayColor,
      ),
      headline4Style: TextStyle(
        fontSize: 16,
        color: colors.displayColor ?? displayColor,
      ),

      /// Usado para texto grande em diálogos (por exemplo, o mês e o ano na caixa de diálogo mostrada por showDatePicker).
      headline5Style: TextStyle(
        fontSize: 16,
        color: colors.bodyColor ?? bodyColor,
      ),

      /// * Usado para o texto principal em barras de aplicativos e caixas de diálogo (por exemplo, AppBar.title e AlertDialog.title).
      headline6Style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: colors.displayColor ?? displayColor,
      ),

      /// Usado para o texto principal em listas (por exemplo, ListTile.title).
      subtitle1Style: TextStyle(
        fontSize: 14,
        color: colors.bodyColor ?? bodyColor,
      ),
      subtitle2Style: TextStyle(
        fontSize: 12,
        color: colors.bodyColor ?? bodyColor,
      ),

      /// Usado para enfatizar o texto que, de outra forma, seria bodyText2
      bodyText1Style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: colors.bodyColor ?? bodyColor,
      ),

      /// * O estilo de texto padrão para Material.
      bodyText2Style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: colors.bodyColor ?? bodyColor,
      ),

      /// Usado para texto em ElevatedButton, TextButton e OutlinedButton.
      buttonStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),

      /// Usado para texto auxiliar associado a imagens.
      captionStyle: TextStyle(
        fontSize: 10,
        color: colors.displayColor ?? displayColor,
      ),

      /// O menor estilo
      overlineStyle: TextStyle(
        fontSize: 8,
        color: colors.bodyColor ?? bodyColor,
      ),
    );
  }

  StylesConfigTheme? _styles;

  ColorsConfigTheme colors;
  ButtonsConfigTheme buttons;
  CardsConfigTheme cards;
  InputsConfigTheme inputs;

  AppTheme._privateConstructor({
    required this.colors,
    required this.buttons,
    required this.cards,
    required this.inputs,
  });

  // ignore: prefer_final_fields
  static AppTheme _instance = AppTheme._privateConstructor(
    colors: ColorsConfigTheme(
      iconColor: iconColor,
      displayColor: displayColor,
      bodyColor: bodyColor,
      primaryColor: primaryColor,
      onPrimaryColor: onPrimaryColor,
      primaryVariantColor: primaryVariantColor,
      surfaceColor: surfaceColor,
      onSurfaceColor: onSurfaceColor,
      secondaryColor: secondaryColor,
      onSecondaryColor: onSecondaryColor,
      secondaryVariantColor: secondaryVariantColor,
      backgroundColor: backgroundColor,
      onBackgroundColor: onBackgroundColor,
      errorColor: errorColor,
      onErrorColor: onErrorColor,
      disabledColor: disabledColor,
      buttonElevatedBackgroundColor: buttonElevatedBackgroundColor,
      buttonElevatedLabelColor: buttonElevatedLabelColor,
      buttonElevatedLabelDisabledColor: buttonElevatedLabelDisabledColor,
      buttonOutlineLabelColor: buttonOutlineLabelColor,
      buttonOutlineBorderColor: buttonOutlineBorderColor,
      buttonTextLabelColor: buttonTextLabelColor,
      brightnessColor: brightnessColor,
    ),
    buttons: ButtonsConfigTheme(
      minimumSizeButton: minimumSizeButton,
      paddingButton: paddingButton,
      shapeButton: shapeButton,
      elevationButton: elevationButton,
      elevationButtonOnPressed: elevationButtonOnPressed,
    ),
    cards: CardsConfigTheme(
      shapeCard: shapeCard,
      elevationCard: elevationCard,
    ),
    inputs: InputsConfigTheme(
      paddingHorizontalInput: paddingHorizontalInput,
      paddingVerticalInput: paddingVerticalInput,
      shapeInput: shapeInput,
    ),
  );

  factory AppTheme({
    ColorsConfigTheme? colors,
    StylesConfigTheme? styles,
    ButtonsConfigTheme? buttons,
    CardsConfigTheme? cards,
    InputsConfigTheme? inputs,
  }) {
    if (colors != null) {
      _instance.colors = _instance.colors.merge(colors);
    }

    if (styles != null) {
      _instance.styles = _instance.styles.merge(styles);
    }

    if (buttons != null) {
      _instance.buttons = _instance.buttons.merge(buttons);
    }

    if (cards != null) {
      _instance.cards = _instance.cards.merge(cards);
    }

    if (inputs != null) {
      _instance.inputs = _instance.inputs.merge(inputs);
    }

    return _instance;
  }

  ThemeData theme() {
    final ThemeData base = ThemeData.from(
      colorScheme: ColorScheme(
        primary: colors.primaryColor!,
        primaryVariant: colors.primaryVariantColor!,
        secondary: colors.secondaryColor!,
        secondaryVariant: colors.secondaryVariantColor!,
        surface: colors.surfaceColor!,
        background: colors.backgroundColor!,
        error: colors.errorColor!,
        onPrimary: colors.onPrimaryColor!,
        onSecondary: colors.onSecondaryColor!,
        onSurface: colors.onSurfaceColor!,
        onBackground: colors.onBackgroundColor!,
        onError: colors.onErrorColor!,
        brightness: colors.brightnessColor!,
      ),
    );
    return base.copyWith(
      appBarTheme: base.appBarTheme.copyWith(
        titleTextStyle: base.appBarTheme.titleTextStyle
                ?.merge(styles.appBarTitleTextStyle) ??
            styles.appBarTitleTextStyle,
      ),
      primaryIconTheme: base.iconTheme.copyWith(color: colors.iconColor),
      scaffoldBackgroundColor: colors.backgroundColor,
      cardColor: colors.surfaceColor,
      errorColor: colors.errorColor,
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      textButtonTheme: TextButtonThemeData(style: buttons.textButtonStyle),
      elevatedButtonTheme:
          ElevatedButtonThemeData(style: buttons.elevatedButtonStyle),
      outlinedButtonTheme:
          OutlinedButtonThemeData(style: buttons.outlineButtonStyle),
      cardTheme:
          CardTheme(elevation: cards.elevationCard, shape: cards.shapeCard),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colors.onPrimaryColor,
      ),
    );
  }

  TextTheme _buildTextTheme(TextTheme base) {
    return base
        .copyWith(
          headline1: base.headline1?.merge(styles.headline1Style) ??
              styles.headline1Style,
          headline2: base.headline2?.merge(styles.headline2Style) ??
              styles.headline2Style,
          headline3: base.headline3?.merge(styles.headline3Style) ??
              styles.headline3Style,
          headline4: base.headline4?.merge(styles.headline4Style) ??
              styles.headline4Style,
          headline5: base.headline5?.merge(styles.headline5Style) ??
              styles.headline5Style,
          headline6: base.headline6?.merge(styles.headline6Style) ??
              styles.headline6Style,
          subtitle1: base.subtitle1?.merge(styles.subtitle1Style) ??
              styles.subtitle1Style,
          subtitle2: base.subtitle2?.merge(styles.subtitle2Style) ??
              styles.subtitle2Style,
          bodyText1: base.bodyText1?.merge(styles.bodyText1Style) ??
              styles.bodyText1Style,
          bodyText2: base.bodyText2?.merge(styles.bodyText2Style) ??
              styles.bodyText2Style,
          button: base.button?.merge(styles.buttonStyle) ?? styles.buttonStyle,
          caption:
              base.caption?.merge(styles.captionStyle) ?? styles.captionStyle,
          overline: base.overline?.merge(styles.overlineStyle) ??
              styles.overlineStyle,
        )
        .apply(
          fontFamily: styles.fontFamily,
          displayColor: colors.displayColor,
          bodyColor: colors.bodyColor,
        );
  }
}

class ColorsConfigTheme {
  final Color? iconColor;

  ///  Aplicado em [headline4], [headline3], [headline2], [headline1], e [caption]
  final Color? displayColor;

  /// é aplicado aos estilos de texto restantes.
  final Color? bodyColor;

  /// A cor exibida com mais frequência nas telas e componentes do seu aplicativo.
  final Color? primaryColor;

  /// Uma cor que é claramente legível quando desenhada no primário.
  final Color? onPrimaryColor;

  /// Uma versão mais escura da cor primária é aplicada às entradas de cores da borda.
  final Color? primaryVariantColor;

  /// A cor de fundo para widgets como Card.
  final Color? surfaceColor;

  /// Uma cor que é claramente legível quando desenhada na surface.
  final Color? onSurfaceColor;

  /// Uma cor de destaque que, quando usada com moderação, chama a atenção para partes do seu aplicativo.
  /// Cores secundárias são melhores para:
  /// Botões de ação flutuantes
  /// Controles de seleção, como sliders e switches
  /// Destacando o texto selecionado
  /// Barras de progresso
  /// Links e headlines
  final Color? secondaryColor;

  /// Uma cor que é claramente legível quando desenhada no secondary.
  final Color? onSecondaryColor;

  /// Uma versão mais escura da cor secundária.
  final Color? secondaryVariantColor;

  /// Uma cor que normalmente aparece atrás do conteúdo com scroll.
  final Color? backgroundColor;

  /// Uma cor que é claramente legível quando desenhada no fundo.
  final Color? onBackgroundColor;

  /// A cor a ser usada para erros de validação de entrada, por exemplo por InputDecoration.errorText.
  final Color? errorColor;

  /// Uma cor que é claramente legível quando desenhada sobre errorColor.
  final Color? onErrorColor;

  final Color? disabledColor;

// Buttons
  final Color? buttonElevatedBackgroundColor;
  final Color? buttonElevatedLabelColor;
  final Color? buttonElevatedLabelDisabledColor;
  final Color? buttonOutlineLabelColor;
  final Color? buttonOutlineBorderColor;
  final Color? buttonTextLabelColor;

//
  final Brightness? brightnessColor;

  // Input
  final Color? fillColorInput;

  ColorsConfigTheme({
    this.iconColor,
    this.displayColor,
    this.bodyColor,
    this.primaryColor,
    this.onPrimaryColor,
    this.primaryVariantColor,
    this.surfaceColor,
    this.onSurfaceColor,
    this.secondaryColor,
    this.onSecondaryColor,
    this.secondaryVariantColor,
    this.backgroundColor,
    this.onBackgroundColor,
    this.errorColor,
    this.onErrorColor,
    this.disabledColor,
    this.buttonElevatedBackgroundColor,
    this.buttonElevatedLabelColor,
    this.buttonElevatedLabelDisabledColor,
    this.buttonOutlineLabelColor,
    this.buttonOutlineBorderColor,
    this.buttonTextLabelColor,
    this.brightnessColor,
    this.fillColorInput,
  });

  copyWith({
    Color? iconColor,
    Color? displayColor,
    Color? bodyColor,
    Color? primaryColor,
    Color? onPrimaryColor,
    Color? primaryVariantColor,
    Color? surfaceColor,
    Color? onSurfaceColor,
    Color? secondaryColor,
    Color? onSecondaryColor,
    Color? secondaryVariantColor,
    Color? backgroundColor,
    Color? onBackgroundColor,
    Color? errorColor,
    Color? onErrorColor,
    Color? disabledColor,
    Color? buttonElevatedBackgroundColor,
    Color? buttonElevatedLabelColor,
    Color? buttonElevatedLabelDisabledColor,
    Color? buttonOutlineLabelColor,
    Color? buttonOutlineBorderColor,
    Color? buttonTextLabelColor,
    Brightness? brightnessColor,
    Color? fillColorInput,
  }) {
    return ColorsConfigTheme(
      iconColor: iconColor ?? this.iconColor,
      displayColor: displayColor ?? this.displayColor,
      bodyColor: bodyColor ?? this.bodyColor,
      primaryColor: primaryColor ?? this.primaryColor,
      onPrimaryColor: onPrimaryColor ?? this.onPrimaryColor,
      primaryVariantColor: primaryVariantColor ?? this.primaryVariantColor,
      surfaceColor: surfaceColor ?? this.surfaceColor,
      onSurfaceColor: onSurfaceColor ?? this.onSurfaceColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      onSecondaryColor: onSecondaryColor ?? this.onSecondaryColor,
      secondaryVariantColor:
          secondaryVariantColor ?? this.secondaryVariantColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      onBackgroundColor: onBackgroundColor ?? this.onBackgroundColor,
      errorColor: errorColor ?? this.errorColor,
      onErrorColor: onErrorColor ?? this.onErrorColor,
      disabledColor: disabledColor ?? this.disabledColor,
      buttonElevatedBackgroundColor:
          buttonElevatedBackgroundColor ?? this.buttonElevatedBackgroundColor,
      buttonElevatedLabelColor:
          buttonElevatedLabelColor ?? this.buttonElevatedLabelColor,
      buttonElevatedLabelDisabledColor: buttonElevatedLabelDisabledColor ??
          this.buttonElevatedLabelDisabledColor,
      buttonOutlineLabelColor:
          buttonOutlineLabelColor ?? this.buttonOutlineLabelColor,
      buttonOutlineBorderColor:
          buttonOutlineBorderColor ?? this.buttonOutlineBorderColor,
      buttonTextLabelColor: buttonTextLabelColor ?? this.buttonTextLabelColor,
      brightnessColor: brightnessColor ?? this.brightnessColor,
      fillColorInput: fillColorInput ?? this.fillColorInput,
    );
  }

  merge(ColorsConfigTheme? colors) {
    if (colors == null) {
      return this;
    }

    return copyWith(
      iconColor: colors.iconColor ?? iconColor,
      displayColor: colors.displayColor ?? displayColor,
      bodyColor: colors.bodyColor ?? bodyColor,
      primaryColor: colors.primaryColor ?? primaryColor,
      onPrimaryColor: colors.onPrimaryColor ?? onPrimaryColor,
      primaryVariantColor: colors.primaryVariantColor ?? primaryVariantColor,
      surfaceColor: colors.surfaceColor ?? surfaceColor,
      onSurfaceColor: colors.onSurfaceColor ?? onSurfaceColor,
      secondaryColor: colors.secondaryColor ?? secondaryColor,
      onSecondaryColor: colors.onSecondaryColor ?? onSecondaryColor,
      secondaryVariantColor:
          colors.secondaryVariantColor ?? secondaryVariantColor,
      backgroundColor: colors.backgroundColor ?? backgroundColor,
      onBackgroundColor: colors.onBackgroundColor ?? onBackgroundColor,
      errorColor: colors.errorColor ?? errorColor,
      onErrorColor: colors.onErrorColor ?? onErrorColor,
      disabledColor: colors.disabledColor ?? disabledColor,
      buttonElevatedBackgroundColor:
          colors.buttonElevatedBackgroundColor ?? buttonElevatedBackgroundColor,
      buttonElevatedLabelColor:
          colors.buttonElevatedLabelColor ?? buttonElevatedLabelColor,
      buttonElevatedLabelDisabledColor:
          colors.buttonElevatedLabelDisabledColor ??
              buttonElevatedLabelDisabledColor,
      buttonOutlineLabelColor:
          colors.buttonOutlineLabelColor ?? buttonOutlineLabelColor,
      buttonOutlineBorderColor:
          colors.buttonOutlineBorderColor ?? buttonOutlineBorderColor,
      buttonTextLabelColor: colors.buttonTextLabelColor ?? buttonTextLabelColor,
      brightnessColor: colors.brightnessColor ?? brightnessColor,
      fillColorInput: colors.fillColorInput ?? fillColorInput,
    );
  }
}

class StylesConfigTheme {
  final String? fontFamily;

  final TextStyle? appBarTitleTextStyle;

  /// Texto extremamente grande.
  final TextStyle? headline1Style;
  final TextStyle? headline2Style;
  final TextStyle? headline3Style;
  final TextStyle? headline4Style;

  /// Usado para texto grande em diálogos (por exemplo, o mês e o ano na caixa de diálogo mostrada por showDatePicker).
  final TextStyle? headline5Style;

  /// * Usado para o texto principal em barras de aplicativos e caixas de diálogo (por exemplo, AppBar.title e AlertDialog.title).
  final TextStyle? headline6Style;

  /// Usado para o texto principal em listas (por exemplo, ListTile.title).
  final TextStyle? subtitle1Style;
  final TextStyle? subtitle2Style;

  /// Usado para enfatizar o texto que, de outra forma, seria bodyText2
  final TextStyle? bodyText1Style;

  /// * O estilo de texto padrão para Material.
  final TextStyle? bodyText2Style;

  /// Usado para texto em ElevatedButton, TextButton e OutlinedButton.
  final TextStyle? buttonStyle;

  /// Usado para texto auxiliar associado a imagens.
  final TextStyle? captionStyle;

  /// O menor estilo
  final TextStyle? overlineStyle;

  StylesConfigTheme({
    this.fontFamily,
    this.appBarTitleTextStyle,
    this.headline1Style,
    this.headline2Style,
    this.headline3Style,
    this.headline4Style,
    this.headline5Style,
    this.headline6Style,
    this.subtitle1Style,
    this.subtitle2Style,
    this.bodyText1Style,
    this.bodyText2Style,
    this.buttonStyle,
    this.captionStyle,
    this.overlineStyle,
  });

  copyWith({
    String? fontFamily,
    TextStyle? appBarTitleTextStyle,
    TextStyle? headline1Style,
    TextStyle? headline2Style,
    TextStyle? headline3Style,
    TextStyle? headline4Style,
    TextStyle? headline5Style,
    TextStyle? headline6Style,
    TextStyle? subtitle1Style,
    TextStyle? subtitle2Style,
    TextStyle? bodyText1Style,
    TextStyle? bodyText2Style,
    TextStyle? buttonStyle,
    TextStyle? captionStyle,
    TextStyle? overlineStyle,
  }) {
    return StylesConfigTheme(
      fontFamily: fontFamily ?? this.fontFamily,
      appBarTitleTextStyle: appBarTitleTextStyle ?? this.appBarTitleTextStyle,
      headline1Style: headline1Style ?? this.headline1Style,
      headline2Style: headline2Style ?? this.headline2Style,
      headline3Style: headline3Style ?? this.headline3Style,
      headline4Style: headline4Style ?? this.headline4Style,
      headline5Style: headline5Style ?? this.headline5Style,
      headline6Style: headline6Style ?? this.headline6Style,
      subtitle1Style: subtitle1Style ?? this.subtitle1Style,
      subtitle2Style: subtitle2Style ?? this.subtitle2Style,
      bodyText1Style: bodyText1Style ?? this.bodyText1Style,
      bodyText2Style: bodyText2Style ?? this.bodyText2Style,
      buttonStyle: buttonStyle ?? this.buttonStyle,
      captionStyle: captionStyle ?? this.captionStyle,
      overlineStyle: overlineStyle ?? this.overlineStyle,
    );
  }

  merge(StylesConfigTheme? styles) {
    if (styles == null) {
      return this;
    }

    return copyWith(
      fontFamily: styles.fontFamily ?? fontFamily,
      appBarTitleTextStyle: styles.appBarTitleTextStyle ?? appBarTitleTextStyle,
      headline1Style: styles.headline1Style ?? headline1Style,
      headline2Style: styles.headline2Style ?? headline2Style,
      headline3Style: styles.headline3Style ?? headline3Style,
      headline4Style: styles.headline4Style ?? headline4Style,
      headline5Style: styles.headline5Style ?? headline5Style,
      headline6Style: styles.headline6Style ?? headline6Style,
      subtitle1Style: styles.subtitle1Style ?? subtitle1Style,
      subtitle2Style: styles.subtitle2Style ?? subtitle2Style,
      bodyText1Style: styles.bodyText1Style ?? bodyText1Style,
      bodyText2Style: styles.bodyText2Style ?? bodyText2Style,
      buttonStyle: styles.buttonStyle ?? buttonStyle,
      captionStyle: styles.captionStyle ?? captionStyle,
      overlineStyle: styles.overlineStyle ?? overlineStyle,
    );
  }

  TextStyle? getStyle(String name) {
    switch (name) {
      case 'appBarTitleTextStyle':
        return appBarTitleTextStyle;

      case 'headline1Style':
        return headline1Style;

      case 'headline2Style':
        return headline2Style;

      case 'headline3Style':
        return headline3Style;

      case 'headline4Style':
        return headline4Style;

      case 'headline5Style':
        return headline5Style;

      case 'headline6Style':
        return headline6Style;

      case 'subtitle1Style':
        return subtitle1Style;

      case 'subtitle2Style':
        return subtitle2Style;

      case 'bodyText1Style':
        return bodyText1Style;

      case 'bodyText2Style':
        return bodyText2Style;

      case 'buttonStyle':
        return buttonStyle;

      case 'captionStyle':
        return captionStyle;

      case 'overlineStyle':
        return overlineStyle;
    }
  }
}

class ButtonsConfigTheme {
  final Size? minimumSizeButton;
  final EdgeInsets? paddingButton;
  final RoundedRectangleBorder? shapeButton;
  final double? elevationButton;
  final double? elevationButtonOnPressed;
  final ButtonStyle? customOutlineButtonStyle;
  final ButtonStyle? customElevatedButtonStyle;
  final ButtonStyle? customTextButtonStyle;

  ButtonStyle get outlineButtonStyle {
    return customOutlineButtonStyle ??
        OutlinedButton.styleFrom(
          onSurface: AppTheme().colors.buttonOutlineLabelColor,
          primary: AppTheme().colors.buttonOutlineLabelColor,
          minimumSize: AppTheme().buttons.minimumSizeButton,
          padding: AppTheme().buttons.paddingButton,
          shape: AppTheme().buttons.shapeButton,
          fixedSize: AppTheme().buttons.minimumSizeButton,
        ).copyWith(
          side: MaterialStateProperty.resolveWith<BorderSide>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return BorderSide(
                  color: AppTheme().colors.buttonOutlineLabelColor!,
                  width: 1,
                );
              }

              return BorderSide(
                color: AppTheme().colors.buttonOutlineBorderColor!,
                width: 1,
              );
            },
          ),
        );
  }

  ButtonStyle get elevatedButtonStyle {
    return customElevatedButtonStyle ??
        ElevatedButton.styleFrom(
          onPrimary: AppTheme().colors.buttonElevatedLabelColor,
          primary: AppTheme().colors.buttonElevatedBackgroundColor,
          minimumSize: AppTheme().buttons.minimumSizeButton,
          padding: AppTheme().buttons.paddingButton,
          shape: AppTheme().buttons.shapeButton,
          elevation: AppTheme().buttons.elevationButton,
          fixedSize: AppTheme().buttons.minimumSizeButton,
        ).copyWith(
          elevation: MaterialStateProperty.resolveWith<double?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return AppTheme().buttons.elevationButtonOnPressed;
              }
              return null;
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return AppTheme()
                    .colors
                    .buttonElevatedLabelDisabledColor!
                    .withOpacity(.1);
              }
              return AppTheme().colors.buttonElevatedBackgroundColor!;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return AppTheme()
                    .colors
                    .buttonElevatedLabelDisabledColor!
                    .withOpacity(.4);
              }
              return AppTheme().colors.buttonElevatedLabelColor!;
            },
          ),
        );
  }

  ButtonStyle get textButtonStyle {
    return customTextButtonStyle ??
        TextButton.styleFrom(
          onSurface:
              AppTheme().colors.buttonTextLabelColor ?? buttonTextLabelColor,
          primary:
              AppTheme().colors.buttonTextLabelColor ?? buttonTextLabelColor,
          minimumSize:
              AppTheme().buttons.minimumSizeButton ?? minimumSizeButton,
          padding: AppTheme().buttons.paddingButton ?? paddingButton,
          shape: AppTheme().buttons.shapeButton ?? shapeButton,
          fixedSize: AppTheme().buttons.minimumSizeButton ?? minimumSizeButton,
        );
  }

  ButtonsConfigTheme({
    this.minimumSizeButton,
    this.paddingButton,
    this.shapeButton,
    this.elevationButton,
    this.elevationButtonOnPressed,
    this.customOutlineButtonStyle,
    this.customElevatedButtonStyle,
    this.customTextButtonStyle,
  });

  copyWith({
    Size? minimumSizeButton,
    EdgeInsets? paddingButton,
    RoundedRectangleBorder? shapeButton,
    double? elevationButton,
    double? elevationButtonOnPressed,
    ButtonStyle? customOutlineButtonStyle,
    ButtonStyle? customElevatedButtonStyle,
    ButtonStyle? customTextButtonStyle,
  }) {
    return ButtonsConfigTheme(
      minimumSizeButton: minimumSizeButton ?? this.minimumSizeButton,
      paddingButton: paddingButton ?? this.paddingButton,
      shapeButton: shapeButton ?? this.shapeButton,
      elevationButton: elevationButton ?? this.elevationButton,
      elevationButtonOnPressed:
          elevationButtonOnPressed ?? this.elevationButtonOnPressed,
      customOutlineButtonStyle:
          customOutlineButtonStyle ?? this.customOutlineButtonStyle,
      customElevatedButtonStyle:
          customElevatedButtonStyle ?? this.customElevatedButtonStyle,
      customTextButtonStyle:
          customTextButtonStyle ?? this.customTextButtonStyle,
    );
  }

  merge(ButtonsConfigTheme? buttons) {
    if (buttons == null) {
      return this;
    }

    return copyWith(
      minimumSizeButton: buttons.minimumSizeButton ?? minimumSizeButton,
      paddingButton: buttons.paddingButton ?? paddingButton,
      shapeButton: buttons.shapeButton ?? shapeButton,
      elevationButton: buttons.elevationButton ?? elevationButton,
      elevationButtonOnPressed:
          buttons.elevationButtonOnPressed ?? elevationButtonOnPressed,
      customOutlineButtonStyle:
          buttons.customOutlineButtonStyle ?? customOutlineButtonStyle,
      customElevatedButtonStyle:
          buttons.customElevatedButtonStyle ?? customElevatedButtonStyle,
      customTextButtonStyle:
          buttons.customTextButtonStyle ?? customTextButtonStyle,
    );
  }
}

class CardsConfigTheme {
  final OutlinedBorder? shapeCard;
  final double? elevationCard;

  CardsConfigTheme({
    this.shapeCard,
    this.elevationCard,
  });

  copyWith({
    OutlinedBorder? shapeCard,
    double? elevationCard,
  }) {
    return CardsConfigTheme(
      shapeCard: shapeCard ?? this.shapeCard,
      elevationCard: elevationCard ?? this.elevationCard,
    );
  }

  merge(CardsConfigTheme? cards) {
    if (cards == null) {
      return this;
    }

    return copyWith(
      shapeCard: cards.shapeCard ?? shapeCard,
      elevationCard: cards.elevationCard ?? elevationCard,
    );
  }
}

class InputsConfigTheme {
  final double? paddingVerticalInput;
  final double? paddingHorizontalInput;
  final InputBorder? shapeInput;

  InputsConfigTheme({
    this.paddingVerticalInput,
    this.paddingHorizontalInput,
    this.shapeInput,
  });

  copyWith({
    double? paddingVerticalInput,
    double? paddingHorizontalInput,
    InputBorder? shapeInput,
  }) {
    return InputsConfigTheme(
      paddingVerticalInput: paddingVerticalInput ?? this.paddingVerticalInput,
      paddingHorizontalInput:
          paddingHorizontalInput ?? this.paddingHorizontalInput,
      shapeInput: shapeInput ?? this.shapeInput,
    );
  }

  merge(InputsConfigTheme? inputs) {
    if (inputs == null) {
      return this;
    }

    return copyWith(
      paddingVerticalInput: inputs.paddingVerticalInput ?? paddingVerticalInput,
      paddingHorizontalInput:
          inputs.paddingHorizontalInput ?? paddingHorizontalInput,
      shapeInput: inputs.shapeInput ?? shapeInput,
    );
  }
}
