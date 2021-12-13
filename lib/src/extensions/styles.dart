import 'package:flutter/material.dart';

import '../app_theme.dart';

extension FontTokens on Text {
  /// Texto extremamente grande.
  Text headline1({TextStyle? style}) {
    return _customText(
        text: this,
        style: style != null
            ? AppTheme().styles.headline1Style!.merge(style)
            : AppTheme().styles.headline1Style!);
  }

  Text headline2({TextStyle? style}) {
    return _customText(
        text: this,
        style: style != null
            ? AppTheme().styles.headline2Style!.merge(style)
            : AppTheme().styles.headline2Style!);
  }

  Text headline3({TextStyle? style}) {
    return _customText(
        text: this,
        style: style != null
            ? AppTheme().styles.headline3Style!.merge(style)
            : AppTheme().styles.headline3Style!);
  }

  Text headline4({TextStyle? style}) {
    return _customText(
        text: this,
        style: style != null
            ? AppTheme().styles.headline4Style!.merge(style)
            : AppTheme().styles.headline4Style!);
  }

  /// Usado para texto grande em diálogos (por exemplo, o mês e o ano na caixa de diálogo mostrada por showDatePicker).
  Text headline5({TextStyle? style}) {
    return _customText(
        text: this,
        style: style != null
            ? AppTheme().styles.headline5Style!.merge(style)
            : AppTheme().styles.headline5Style!);
  }

  /// * Usado para o texto principal em barras de aplicativos e caixas de diálogo (por exemplo, AppBar.title e AlertDialog.title).
  Text headline6({TextStyle? style}) {
    return _customText(
        text: this,
        style: style != null
            ? AppTheme().styles.headline6Style!.merge(style)
            : AppTheme().styles.headline6Style!);
  }

  /// Usado para o texto principal em listas (por exemplo, ListTile.title).
  Text subtitle1({TextStyle? style}) {
    return _customText(
        text: this,
        style: style != null
            ? AppTheme().styles.subtitle1Style!.merge(style)
            : AppTheme().styles.subtitle1Style!);
  }

  Text subtitle2({TextStyle? style}) {
    return _customText(
        text: this,
        style: style != null
            ? AppTheme().styles.subtitle2Style!.merge(style)
            : AppTheme().styles.subtitle2Style!);
  }

  /// Usado para enfatizar o texto que, de outra forma, seria bodyText2
  Text bodyText1({TextStyle? style}) {
    return _customText(
        text: this,
        style: style != null
            ? AppTheme().styles.bodyText1Style!.merge(style)
            : AppTheme().styles.bodyText1Style!);
  }

  /// * O estilo de texto padrão para Material.
  Text bodyText2({TextStyle? style}) {
    return _customText(
        text: this,
        style: style != null
            ? AppTheme().styles.bodyText2Style!.merge(style)
            : AppTheme().styles.bodyText2Style!);
  }

  /// Usado para texto em ElevatedButton, TextButton e OutlinedButton.
  Text button({TextStyle? style}) {
    return _customText(
        text: this,
        style: style != null
            ? AppTheme().styles.buttonStyle!.merge(style)
            : AppTheme().styles.buttonStyle!);
  }

  /// Usado para texto auxiliar associado a imagens.
  Text caption({TextStyle? style}) {
    return _customText(
        text: this,
        style: style != null
            ? AppTheme().styles.captionStyle!.merge(style)
            : AppTheme().styles.captionStyle!);
  }

  /// O menor estilo
  Text overline({TextStyle? style}) {
    return _customText(
        text: this,
        style: style != null
            ? AppTheme().styles.overlineStyle!.merge(style)
            : AppTheme().styles.overlineStyle!);
  }
}

Text _customText({
  required Text text,
  required TextStyle style,
  TextAlign align = TextAlign.start,
}) {
  return Text(
    text.data ?? '',
    style: text.style?.merge(style) ?? style,
    textAlign: align,
  );
}
