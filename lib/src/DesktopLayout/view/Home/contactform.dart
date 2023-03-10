import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/components/data.dart';
import 'package:mywebproject/src/DesktopLayout/widgets/mouseTrackAnimation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:lottie/lottie.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

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
  TextEditingController timelinecontroller = TextEditingController();
  TextEditingController budgetcontroller = TextEditingController();

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
      final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(
          {
            "service_id": MyWebProjectData.serviceId,
            "template_id": MyWebProjectData.templateId,
            "user_id": MyWebProjectData.userId,
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
      color: MyWebProjectUI.kDefaultcolor,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              widget.size.width * 0.25, 0, widget.size.width * 0.25, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GradientText(
                colors: const [
                  Color(0XFFe3a165),
                  Color(0XFF739cca),
                ],
                'Contact',
                maxLines: 1,
                style: TextStyle(
                  fontFamily: 'SpaceMono',
                  color: MyWebProjectUI.secondaryColor,
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
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Full Name',
                                    style: TextStyle(
                                        color: MyWebProjectUI.secondaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'SpaceMono'),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  AnimatedCursorMouseRegion(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white.withOpacity(0),
                                    ),
                                    child: TextFormField(
                                      controller: namecontroller,
                                      style: const TextStyle(
                                          fontFamily: 'SpaceMono'),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        filled: true,
                                        hintStyle: const TextStyle(
                                            color:
                                                MyWebProjectUI.colorFontField,
                                            fontFamily: 'SpaceMono'),
                                        hintText: "Halleux Arnaud",
                                        fillColor:
                                            MyWebProjectUI.backgroundColorField,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Email Address',
                                    style: TextStyle(
                                        color: MyWebProjectUI.secondaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'SpaceMono'),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  AnimatedCursorMouseRegion(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white.withOpacity(0),
                                    ),
                                    child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      controller: emailcontroller,
                                      style: const TextStyle(
                                          fontFamily: 'SpaceMono'),
                                      decoration: InputDecoration(
                                        errorText: errorText ? null : 'Erreur',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        filled: true,
                                        hintStyle: const TextStyle(
                                            color:
                                                MyWebProjectUI.colorFontField,
                                            fontFamily: 'SpaceMono'),
                                        hintText: "HelloWorld@gmail.com",
                                        fillColor:
                                            MyWebProjectUI.backgroundColorField,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Timeline',
                                    style: TextStyle(
                                        color: MyWebProjectUI.secondaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'SpaceMono'),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  AnimatedCursorMouseRegion(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white.withOpacity(0),
                                    ),
                                    child: DropdownButtonFormField2(
                                      searchController: timelinecontroller,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.zero,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      isExpanded: true,
                                      hint: const Text(
                                        'Select one...',
                                        style: TextStyle(
                                            color:
                                                MyWebProjectUI.colorFontField,
                                            fontFamily: 'SpaceMono'),
                                      ),
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        color: MyWebProjectUI.colorFontField,
                                      ),
                                      iconSize: 30,
                                      buttonHeight: 56,
                                      dropdownDecoration: BoxDecoration(
                                        color:
                                            MyWebProjectUI.backgroundColorField,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      buttonDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            MyWebProjectUI.backgroundColorField,
                                      ),
                                      items: MyWebProjectData.timeline
                                          .map((item) =>
                                              DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(
                                                  item,
                                                  style: const TextStyle(
                                                      color: MyWebProjectUI
                                                          .colorFontField,
                                                      fontFamily: 'SpaceMono'),
                                                ),
                                              ))
                                          .toList(),
                                      onChanged: (value) {
                                        //Do something when changing the item if you want.
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Budget',
                                    style: TextStyle(
                                        color: MyWebProjectUI.secondaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'SpaceMono'),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  AnimatedCursorMouseRegion(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white.withOpacity(0),
                                    ),
                                    child: DropdownButtonFormField2(
                                      searchController: budgetcontroller,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.zero,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      isExpanded: true,
                                      hint: const Text(
                                        'Select one...',
                                        style: TextStyle(
                                            color:
                                                MyWebProjectUI.colorFontField,
                                            fontFamily: 'SpaceMono'),
                                      ),
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        color: MyWebProjectUI.colorFontField,
                                      ),
                                      iconSize: 30,
                                      buttonHeight: 56,
                                      dropdownDecoration: BoxDecoration(
                                        color:
                                            MyWebProjectUI.backgroundColorField,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      buttonDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            MyWebProjectUI.backgroundColorField,
                                      ),
                                      items: MyWebProjectData.budget
                                          .map((item) =>
                                              DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(
                                                  item,
                                                  style: const TextStyle(
                                                      color: MyWebProjectUI
                                                          .colorFontField,
                                                      fontFamily: 'SpaceMono'),
                                                ),
                                              ))
                                          .toList(),
                                      onChanged: (value) {
                                        //Do something when changing the item if you want.
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                ],
                              ),
                            )
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
                                  color: MyWebProjectUI.secondaryColor,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'SpaceMono'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            AnimatedCursorMouseRegion(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white.withOpacity(0),
                              ),
                              child: TextFormField(
                                controller: messagecontroller,
                                maxLines: 5,
                                style: const TextStyle(fontFamily: 'SpaceMono'),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  filled: true,
                                  hintStyle: const TextStyle(
                                      color: MyWebProjectUI.colorFontField,
                                      fontFamily: 'SpaceMono'),
                                  hintText: "...",
                                  fillColor:
                                      MyWebProjectUI.backgroundColorField,
                                ),
                              ),
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
                                            backgroundColor:
                                                MyWebProjectUI.kDefaultcolor,
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
                                        backgroundColor:
                                            MyWebProjectUI.kDefaultcolor,
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
                      ],
                    )
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Thank you for contacting me!",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SpaceMono',
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          const Text(
                            "Your message has been sent and I will contact you soon.",
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
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
