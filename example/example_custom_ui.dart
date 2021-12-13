import 'package:flutter/material.dart';
import 'package:flutter_custom_ui/flutter_custom_ui.dart';

main() {
  runApp(const ExampleCutomUIApp());
}

class ExampleCutomUIApp extends StatelessWidget {
  const ExampleCutomUIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}

class ExampleCustomUIPage extends StatelessWidget {
  const ExampleCustomUIPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textoComExtensions = [
      const Text(
        'Texto com Extenssion',
      ).headline6(
        style: const TextStyle(color: Colors.red),
      ),
      const SizedBox().vertical(),
      const Text('h1').headline1(),
      const Text('h2').headline2(),
      const Text('h3').headline3(),
      const Text('h4').headline4(),
      const Text('h5').headline5(),
      const Text('h6').headline6(),
      const Text('subtitle1').subtitle1(),
      const Text('subtitle2').subtitle2(),
      const Text('body1').bodyText1(),
      const SizedBox().vertical(),
      const Text('body2').bodyText2(),
      const Text('Extension text comom'),
      const SizedBox().vertical(),
      const Text('button').button(),
      const Text('caption').caption(),
      const Text('overline').overline(),
      VerticalSpacing2,
    ];

    var textoComWidgetCustomizado = [
      const CustomText.headline6(
        'Texto com Widget customizado',
        style: TextStyle(
          color: Colors.green,
        ),
      ),
      VerticalSpacing2,
      const CustomText.headline1('h1'),
      const CustomText.headline2('h2'),
      const CustomText.headline3('h3'),
      const CustomText.headline4('h4'),
      const CustomText.headline5('h5'),
      const CustomText.headline6('h6'),
      const CustomText.subtitle1('subtitle1'),
      const CustomText.subtitle2('subtitle2'),
      const CustomText.bodyText1('body1'),
      VerticalSpacing2,
      const CustomText.bodyText2('body2'),
      const CustomText('Custom text comom'),
      VerticalSpacing2,
      const CustomText.button('button'),
      const CustomText.caption('caption'),
      const CustomText.overline('overline'),
      VerticalSpacing2,
    ];

    var buttons = [
      const CustomText.headline6(
        'Botão obtendo estilo do tema',
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
      VerticalSpacing2,
      TextButton(onPressed: () {}, child: const Text('Text button')),
      const SizedBox().vertical(size: 2),
      ElevatedButton(onPressed: () {}, child: const Text('Elevated button')),
      const SizedBox().vertical(size: 2),
      OutlinedButton(onPressed: () {}, child: const Text('Outline button')),
      VerticalSpacing2,
    ];

    var buttonsWidget = [
      const CustomText.headline6(
        'Botão com Widget customizado',
        style: TextStyle(
          color: Colors.red,
        ),
      ),
      VerticalSpacing2,
      CustomButton.text(
        title: 'Text CustomButton',
        onPressed: () {},
      ),
      const SizedBox().vertical(size: 2),
      CustomButton(
        title: 'Elevated CustomButton',
        onPressed: () {},
      ),
      const SizedBox().vertical(size: 2),
      CustomButton.outline(
        title: 'Outline CustomButton',
        onPressed: () {},
      ),
      VerticalSpacing2,
    ];

    var inputs = [
      const CustomText.headline6(
        'Input obtendo estilo do tema',
        style: TextStyle(
          color: Colors.green,
        ),
      ),
      VerticalSpacing2,
      TextFormField(
        decoration: const InputDecoration(
          hintText: 'Enter your email',
        ),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
      VerticalSpacing2,
    ];

    var controller = TextEditingController();

    var inputsWidget = [
      const CustomText.headline6(
        'Input com Widget customizado',
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
      VerticalSpacing2,
      CustomInput(
        controller: controller,
        placeholder: 'Enter your email',
      ),
      VerticalSpacing2,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Custom UI'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: (screenWidth(context) / 2) * -1,
            left: screenWidth(context) - screenWidth(context) / 2,
            child: Container(
              width: screenWidth(context),
              height: screenWidth(context),
              decoration: BoxDecoration(
                color: AppTheme().colors.primaryColor?.withOpacity(.3),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: (screenHeight(context) / 2) - (screenWidth(context) / 4),
            left: (screenWidth(context) / 2) - (screenWidth(context) / 4),
            child: Container(
              width: screenWidth(context) / 2,
              height: screenWidth(context) / 2,
              decoration: BoxDecoration(
                color: AppTheme().colors.primaryColor?.withOpacity(.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: screenHeight(context) - (screenWidth(context) / 2),
            left: (screenWidth(context) / 2) * -1,
            child: Container(
              width: screenWidth(context),
              height: screenWidth(context),
              decoration: BoxDecoration(
                color: AppTheme().colors.primaryColor?.withOpacity(.5),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                ...textoComExtensions,
                const SizedBox().vertical(size: 2),
                ...textoComWidgetCustomizado,
                VerticalSpacing2,
                ...buttons,
                const SizedBox().vertical(size: 2),
                ...buttonsWidget,
                const SizedBox().vertical(size: 2),
                ...inputs,
                const SizedBox().vertical(size: 2),
                ...inputsWidget,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
