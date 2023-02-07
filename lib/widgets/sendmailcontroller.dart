import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/color.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ContactSendMailer extends StatelessWidget {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController messagecontroller = TextEditingController();

  final Size size;
  ContactSendMailer(this.size, {super.key});

  Future sendEmail({
    required String name,
    required String message,
    required String email,
  }) async {
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
            "name": name,
            "subject": 'test',
            "message": message,
            "user_email": email,
          }
        },
      ),
    );
    print('Mail Send');
    return response.statusCode;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
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
                        style: TextStyle(fontFamily: 'SpaceMono'),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(
                                color: colorFontField, fontFamily: 'SpaceMono'),
                            hintText: "Halleux Arnaud",
                            fillColor: backgroundColorField),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
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
                      TextFormField(
                        controller: emailcontroller,
                        style: TextStyle(fontFamily: 'SpaceMono'),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(
                                color: colorFontField, fontFamily: 'SpaceMono'),
                            hintText: "HelloWorld@gmail.com",
                            fillColor: backgroundColorField),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
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
                        style: TextStyle(fontFamily: 'SpaceMono'),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(
                                color: colorFontField, fontFamily: 'SpaceMono'),
                            hintText: "...",
                            fillColor: backgroundColorField),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 110,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: kDefaultcolor,
                            primary: Colors.white,
                            side: BorderSide(width: 2, color: Colors.white),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
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
                          sendEmail(
                              name: namecontroller.text,
                              message: messagecontroller.text,
                              email: emailcontroller.text);
                        },
                      )
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
