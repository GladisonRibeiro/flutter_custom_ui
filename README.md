Este projeto é uma tentativa de facilitar a criação de um tema que possa ser
reusado e que permita alterações pontuais. 

## Recursos

- Definição de cores
- Estilo de textos;
- Estilo de botões;
- Widget texto customizado;
- Widget botão customizado;
- Widget input customizado;
- Widget de espaçamento vertical e horizontal;
- Métodos utilitários para obter largura e altura da tela;

## Como usar

- Adicionar esse package como dependência no pubspec.yaml 
- Criar a instância do [AppTheme](lib/src/app_theme.dart)
- Preencher a propriedade theme do `MaterialApp` com o retorno do método `.theme()` de AppTheme

```dart
return MaterialApp(
  theme: AppTheme().theme(),
  home: const ExampleCustomUIPage(),
);
```

## Configuração

É possível alterar as constantes dentro do arquivo [app_theme.dart](lib/src/app_theme.dart) para criação de um tema único para vários apps, ou fazer a configuração pontual utilizando classes de configuração: 

```dart
return MaterialApp(
  theme: AppTheme(
    colors: ColorsConfigTheme(
      primaryColor: Colors.greenAccent,
      fillColorInput: Colors.green.withOpacity(.3),
      buttonTextLabelColor: Colors.lightGreen,
    ),
    styles: StylesConfigTheme(
      appBarTitleTextStyle:
          const TextStyle(fontSize: 24, color: Colors.black54),
      bodyText2Style: TextStyle(
        fontSize: 12,
        color: Colors.green.withAlpha(200),
      ),
    ),
    buttons: ButtonsConfigTheme(
      elevationButton: 0.0,
      shapeButton: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
    ),
    cards: CardsConfigTheme(
      elevationCard: 0.0,
    ),
    inputs: InputsConfigTheme(
      shapeInput: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
    ),
  ).theme(),
  home: const ExampleCustomUIPage(),
);
```

Algumas cores e textos possuem uma breve descrição sobre sua utilização seguindo o padrão do Material.

![Cores](assets/images/colors.png?raw=true "Cores")

![Textos](assets/images/styles.png?raw=true "Estilos de texto")

