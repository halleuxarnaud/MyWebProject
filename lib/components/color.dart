import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';

/// Defines the color palette for MyWebProject.
abstract class MyWebProjectUI {
  //Default background color
  static const kDefaultcolor = Color(0xFF111111);

  ///Default footer color
  static const footerColor = Color.fromRGBO(252, 247, 240, 0.30);

  ///Primary color
  static const primaryColor = Color(0xFF7b7873);

  ///Secondary colo
  static const secondaryColor = Color(0xFFfff8ee);

  ///Default background color fontfield
  static const backgroundColorField = Color(0xFFFCF7F0);

  ///Font color in the field
  static const colorFontField = Color(0xFF999999);

  ///First color of the title gradient
  static const firstColorTitleGradient = Color(0XFFe3a165);

  ///First color of the title gradient
  static const secondColorTitleGradient = Color(0XFF739cca);

//Color of the container containing the title of the card
  static const containerTitleCardColor = Color(0XFFe3a165);

  //Text color of the card title
  static const titleColorCard = Color(0XFF739cca);
}

/// Defines the gradients for the MyWebProject.
class MyWebProjectGradient {
  /// titleAboutMeGradient
  static Gradient mainGradient = LinearGradient(
    colors: <Color>[
      MyWebProjectUI.firstColorTitleGradient,
      MyWebProjectUI.secondColorTitleGradient
    ],
  );

  static BoxDecoration kInnerDecoration = BoxDecoration(
    color: MyWebProjectUI.kDefaultcolor,
    border: Border.all(color: Colors.white),
    borderRadius: BorderRadius.circular(15),
  );

  static BoxDecoration kGradientBoxDecoration = BoxDecoration(
    gradient: LinearGradient(colors: [
      MyWebProjectUI.firstColorTitleGradient,
      MyWebProjectUI.secondColorTitleGradient
    ]),
    border: Border.all(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.circular(15),
  );
}

class MyWebProjectColorPdf {
  static const PdfColor backline = PdfColor.fromInt(0xffadadad);

  static const PdfColor purpulColor = PdfColor.fromInt(0xff41238a);
  static const PdfColor classicBlack = PdfColor.fromInt(0xFF000000);

  static const PdfColor colorLineDiviser = PdfColor.fromInt(0xff6c6c6c);
}
