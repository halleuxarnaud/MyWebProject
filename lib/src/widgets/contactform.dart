import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/color.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:lottie/lottie.dart';

class ContactForm extends StatefulWidget {
  final Size size;
  const ContactForm(this.size, {super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController messagecontroller = TextEditingController();
  bool errorText = true;
  bool passToogle = true;
  bool showMessage = true;
  bool isValidate = false;
  bool showError = true;

  sendEmail() async {
    if (isValidate == false) {
      setState(() {
        showError = !showError;
      });
      return;
    } else {
      const serviceId = "service_zb5ygwv";
      const templateId = "template_r4le21j";
      const userId = "JrlCmMtVKZ-uqoMqK";

      final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(
          {
            "service_id": serviceId,
            "template_id": templateId,
            "user_id": userId,
            "template_params": {
              "name": namecontroller.text,
              "subject": 'test',
              "message": messagecontroller.text,
              "user_email": emailcontroller.text,
            }
          },
        ),
      );
      setState(() {
        showMessage = false;
      });
      namecontroller.clear();
      emailcontroller.clear();
      messagecontroller.clear();
      return response.statusCode;
    }
  }

  @override
  Future validate() async {
    setState(() {
      isValidate = !isValidate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height,
      width: widget.size.width,
      color: kDefaultcolor,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 220,
          right: 220,
          top: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AutoSizeText(
              'Contact',
              presetFontSizes: [60, 50, 40, 30],
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'SpaceMono',
                color: primaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 60,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            showMessage
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: widget.size.width / 2.3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'Full Name',
                              style: TextStyle(
                                  color: secondColor,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'SpaceMono'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: namecontroller,
                              style: const TextStyle(fontFamily: 'SpaceMono'),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  filled: true,
                                  hintStyle: const TextStyle(
                                      color: colorFontField,
                                      fontFamily: 'SpaceMono'),
                                  hintText: "Halleux Arnaud",
                                  fillColor: backgroundColorField),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: widget.size.width / 2.3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'Email Address',
                              style: TextStyle(
                                  color: secondColor,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'SpaceMono'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: emailcontroller,
                                style: const TextStyle(fontFamily: 'SpaceMono'),
                                decoration: InputDecoration(
                                    errorText: errorText ? null : 'Erreur',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    filled: true,
                                    hintStyle: const TextStyle(
                                        color: colorFontField,
                                        fontFamily: 'SpaceMono'),
                                    hintText: "HelloWorld@gmail.com",
                                    fillColor: backgroundColorField),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: widget.size.width / 2.3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'Message',
                              style: TextStyle(
                                  color: secondColor,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'SpaceMono'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: messagecontroller,
                              maxLines: 5,
                              style: const TextStyle(fontFamily: 'SpaceMono'),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  filled: true,
                                  hintStyle: const TextStyle(
                                      color: colorFontField,
                                      fontFamily: 'SpaceMono'),
                                  hintText: "...",
                                  fillColor: backgroundColorField),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            backgroundColor: kDefaultcolor,
                                            side: BorderSide(
                                                width: 2,
                                                color: isValidate
                                                    ? Colors.green
                                                    : Colors.red),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8))),
                                        onPressed: validate,
                                        child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: isValidate
                                                ? const Text(
                                                    'Okay fine',
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily: 'SpaceMono',
                                                        fontSize: 19),
                                                  )
                                                : showError
                                                    ? const Text(
                                                        'Im not a robot',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontFamily:
                                                                'SpaceMono',
                                                            fontSize: 19),
                                                      )
                                                    : const Text(
                                                        'Validate me please',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontFamily:
                                                                'SpaceMono',
                                                            fontSize: 19),
                                                      ))),
                                  ],
                                ),
                                OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: kDefaultcolor,
                                        side: const BorderSide(
                                            width: 2, color: Colors.white),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8))),
                                    child: const Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Text(
                                        'Submit',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'SpaceMono',
                                            fontSize: 19),
                                      ),
                                    ),
                                    onPressed: () {
                                      sendEmail();
                                    }),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Merci de m'avoir contacté!",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SpaceMono',
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        "Votre message a bien été envoyé et je vous recontacterai bientôt.",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SpaceMono',
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Lottie.network(
                          'https://assets2.lottiefiles.com/private_files/lf30_nsqfzxxx.json',
                          width: 300,
                          height: 300)
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
