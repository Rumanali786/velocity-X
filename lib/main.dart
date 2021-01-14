import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: VStack([
          "hello".text
              .xl3
              .blue900
              .semiBold
              .makeCentered()
              .shimmer(),
          VxZeroCard(),
          Container().skeleton(height: 20,width: 100, color:Vx.green400),
          VxMarquee(text: "breaking news").h(200),
          const VxDiscList(
            ["Disc Item 1", "Disc Item 2"],
            primary: false,
          ),
          const VxDecimalList(
            ["Decimal Item 1", "Decimal Item 2"],
            primary: false,
          ),
          ["Item 1", "Item 2", "Item 3"]
              .textDropDown(
            selectedValue: "Item 1",
            onChanged: (value) {
              Vx.log(value);
            },
          )
              .make(),
          "Neumorphic"
              .text
              .bold
              .make()
              .box
              .alignCenter
              .width(200)
              .height(200)
              .roundedLg
              .neumorphic(color: Colors.white, curve: VxCurve.flat)
              .make(),
          DateTime.now().subtract(10.minutes).timeAgo().text.make(),
          "100100.1546".numCurrency.text.make(),
          12341.42334.numCurrencyWithLocale(locale: "hi_IN").text.make(),
          10.heightBox,
          "https://avatars0.githubusercontent.com/u/12619420?s=460&u=26db98cbde1dd34c7c67b85c240505a436b2c36d&v=4"
              .circularNetworkImage(),
          VxResponsive(
            xsmall: Text("Hi Extra Small"),
            small: Text("Hi Small"),
            medium: Text("Hi Medium"),
            large: Text("Hi Large"),
            xlarge: Text("Hi Extra Large"),
            fallback: Text("Hi Nothing Specified"),
          ),
        ]).p16().scrollVertical(),
        ),
    );
  }
}