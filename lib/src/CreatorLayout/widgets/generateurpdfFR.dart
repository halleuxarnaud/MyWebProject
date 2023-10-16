import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mywebproject/components/color.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:typed_data';
import 'dart:html' as html;

class GeneratePDFFR {
  final pdf = pw.Document();
  var anchor;

  savePDF() async {
    Uint8List pdfInBytes = await pdf.save();

    final blob = html.Blob([pdfInBytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);
    anchor = html.document.createElement('a') as html.AnchorElement
      ..href = url
      ..style.display = 'none'
      ..download = 'CV-Arnaud Halleux.pdf';
    html.document.body?.children.add(anchor);
    await anchor.click();
  }

  createPDF() async {
    final profileImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/photodeprofil.png'))
          .buffer
          .asUint8List(),
    );
    final contactImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/photodeprofil.png'))
          .buffer
          .asUint8List(),
    );
    final phoneImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/telephone.png'))
          .buffer
          .asUint8List(),
    );
    final mailImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/email.png')).buffer.asUint8List(),
    );
    final positionImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/localisateur.png'))
          .buffer
          .asUint8List(),
    );
    final fullImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/full.png')).buffer.asUint8List(),
    );
    final emptyImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/Umpty.png')).buffer.asUint8List(),
    );
    final userImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/user.png')).buffer.asUint8List(),
    );
    final searchImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/search.png')).buffer.asUint8List(),
    );
    final helpImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/help.png')).buffer.asUint8List(),
    );
    final learnImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/knowledge.png'))
          .buffer
          .asUint8List(),
    );
    final penImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/crayon.png')).buffer.asUint8List(),
    );
    final linkedinImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/linkedin.png')).buffer.asUint8List(),
    );
    final githubImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/github.png')).buffer.asUint8List(),
    );
    final logoContactImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/userr.png')).buffer.asUint8List(),
    );
    final logoCompetImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/code.png')).buffer.asUint8List(),
    );
    final logoFormatImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/graduation-cap.png'))
          .buffer
          .asUint8List(),
    );
    final logoexperienceImage = pw.MemoryImage(
      (await rootBundle.load('assets/image/briefcase2.png'))
          .buffer
          .asUint8List(),
    );
    pdf.addPage(
      pw.Page(
        pageFormat:
            PdfPageFormat.a4.applyMargin(left: 0, top: 0, right: 0, bottom: 0),
        margin:
            const pw.EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 25),
        build: (pw.Context context) => pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          mainAxisAlignment: pw.MainAxisAlignment.start,
          children: [
            pw.Container(
              width: 150,
              color: MyWebProjectColorPdf.backline,
              child: pw.Column(
                children: [
                  pw.Container(
                      height: 200,
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                          width: 3,
                          color: MyWebProjectColorPdf.purpulColor,
                        ),
                      ),
                      child: pw.Image(profileImage)),
                  pw.SizedBox(height: 15),
                  pw.Padding(
                    padding: const pw.EdgeInsets.all(10.0),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Container(
                          width: 250,
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Container(
                                height: 2,
                                width: 30,
                                color: MyWebProjectColorPdf.classicBlack,
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.only(
                                    top: 6, bottom: 6, left: 9),
                                child: pw.Row(
                                  children: [
                                    pw.Container(
                                        height: 15,
                                        width: 15,
                                        child: pw.Image(logoContactImage)),
                                    pw.SizedBox(
                                      width: 15,
                                    ),
                                    pw.Text(
                                      'CONTACTS',
                                      style: pw.TextStyle(
                                          //fontFamily: 'SweetSans',
                                          fontWeight: pw.FontWeight.bold,
                                          fontSize: 9),
                                    )
                                  ],
                                ),
                              ),
                              pw.Container(
                                height: 2,
                                width: 30,
                                color: MyWebProjectColorPdf.classicBlack,
                              ),
                              pw.SizedBox(
                                height: 10,
                              ),
                              pw.Column(
                                children: [
                                  pw.Row(
                                    mainAxisAlignment:
                                        pw.MainAxisAlignment.start,
                                    children: [
                                      pw.SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: pw.Image(phoneImage),
                                      ),
                                      pw.SizedBox(
                                        width: 4,
                                      ),
                                      pw.Text(
                                        '0472/30.89.13',
                                        style: const pw.TextStyle(
                                          //fontFamily: 'SweetSans',
                                          fontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  pw.SizedBox(
                                    height: 3,
                                  ),
                                  pw.Row(
                                    mainAxisAlignment:
                                        pw.MainAxisAlignment.start,
                                    children: [
                                      pw.SizedBox(
                                          height: 10,
                                          width: 10,
                                          child: pw.Image(mailImage)),
                                      pw.SizedBox(
                                        width: 4,
                                      ),
                                      pw.Text(
                                        'halleuxarnaudpro@gmail.com',
                                        style: const pw.TextStyle(
                                            //fontFamily: 'SweetSans',
                                            fontSize: 8),
                                      ),
                                    ],
                                  ),
                                  pw.SizedBox(
                                    height: 3,
                                  ),
                                  pw.Row(
                                    mainAxisAlignment:
                                        pw.MainAxisAlignment.start,
                                    children: [
                                      pw.SizedBox(
                                          height: 10,
                                          width: 10,
                                          child: pw.Image(positionImage)),
                                      pw.SizedBox(
                                        width: 4,
                                      ),
                                      pw.Text(
                                        'Bruxelles, Belgique',
                                        style: const pw.TextStyle(
                                            //fontFamily: 'SweetSans',
                                            fontSize: 8),
                                      ),
                                    ],
                                  ),
                                  pw.SizedBox(
                                    height: 3,
                                  ),
                                  pw.Row(
                                    mainAxisAlignment:
                                        pw.MainAxisAlignment.start,
                                    children: [
                                      pw.SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: pw.Image(githubImage),
                                      ),
                                      pw.SizedBox(
                                        width: 4,
                                      ),
                                      pw.Text(
                                        'https://github.com/halleuxarnaud',
                                        style: const pw.TextStyle(
                                          //fontFamily: 'SweetSans',
                                          fontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  pw.SizedBox(
                                    height: 3,
                                  ),
                                  pw.Row(
                                    mainAxisAlignment:
                                        pw.MainAxisAlignment.start,
                                    children: [
                                      pw.SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: pw.Image(linkedinImage),
                                      ),
                                      pw.SizedBox(
                                        width: 4,
                                      ),
                                      pw.SizedBox(
                                        width: 100,
                                        child: pw.Text(
                                          'arnaud-halleux',
                                          style: const pw.TextStyle(
                                            //fontFamily: 'SweetSans',
                                            fontSize: 8,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  pw.SizedBox(
                                    height: 3,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                        // FormationViuw(),
                        // SizedBox(
                        //   height: 50,
                        // ),
                        // SoftSkillViuw(),
                      ],
                    ),
                  ),
                  pw.SizedBox(height: 7),
                  pw.Padding(
                    padding: const pw.EdgeInsets.all(10.0),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Container(
                            height: 2,
                            width: 30,
                            color: MyWebProjectColorPdf.classicBlack),
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(
                              top: 6, bottom: 6, left: 9),
                          child: pw.Row(
                            children: [
                              pw.Container(
                                  height: 15,
                                  width: 15,
                                  child: pw.Image(logoCompetImage)),
                              pw.SizedBox(
                                width: 15,
                              ),
                              pw.Text(
                                'COMPÉTENCE',
                                style: pw.TextStyle(
                                    //fontFamily: 'SweetSans',
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 9),
                              )
                            ],
                          ),
                        ),
                        pw.Container(
                            height: 2,
                            width: 30,
                            color: MyWebProjectColorPdf.classicBlack),
                        pw.SizedBox(
                          height: 10,
                        ),
                        pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Row(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceBetween,
                              children: [
                                pw.Text(
                                  'FLUTTER',
                                  style: const pw.TextStyle(
                                      //fontFamily: 'Helvetica',
                                      fontSize: 9),
                                ),
                                pw.SizedBox(
                                  width: 80,
                                  child: pw.Row(
                                    mainAxisAlignment: pw.MainAxisAlignment.end,
                                    children: [
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Row(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceBetween,
                              children: [
                                pw.Text(
                                  'DART',
                                  style: const pw.TextStyle(
                                      //fontFamily: 'Helvetica',
                                      fontSize: 9),
                                ),
                                pw.SizedBox(
                                  width: 80,
                                  child: pw.Row(
                                    mainAxisAlignment: pw.MainAxisAlignment.end,
                                    children: [
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(emptyImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Row(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceBetween,
                              children: [
                                pw.Text(
                                  'FIREBASE',
                                  style: const pw.TextStyle(
                                      //fontFamily: 'Helvetica',
                                      fontSize: 9),
                                ),
                                pw.SizedBox(
                                  width: 80,
                                  child: pw.Row(
                                    mainAxisAlignment: pw.MainAxisAlignment.end,
                                    children: [
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(emptyImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(emptyImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(emptyImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Row(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceBetween,
                              children: [
                                pw.Text(
                                  'GIT',
                                  style: const pw.TextStyle(
                                      //fontFamily: 'Helvetica',
                                      fontSize: 9),
                                ),
                                pw.SizedBox(
                                  width: 80,
                                  child: pw.Row(
                                    mainAxisAlignment: pw.MainAxisAlignment.end,
                                    children: [
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Row(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceBetween,
                              children: [
                                pw.Text(
                                  'C',
                                  style: const pw.TextStyle(
                                      //fontFamily: 'Helvetica',
                                      fontSize: 9),
                                ),
                                pw.SizedBox(
                                  width: 80,
                                  child: pw.Row(
                                    mainAxisAlignment: pw.MainAxisAlignment.end,
                                    children: [
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(fullImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(emptyImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(emptyImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                      pw.SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: pw.Image(emptyImage)),
                                      pw.SizedBox(
                                        width: 5,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            pw.SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  pw.SizedBox(height: 7),
                  pw.Padding(
                    padding: const pw.EdgeInsets.all(10.0),
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Container(
                            height: 2,
                            width: 30,
                            color: MyWebProjectColorPdf.classicBlack),
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(
                              top: 6, bottom: 6, left: 9),
                          child: pw.Row(
                            children: [
                              pw.Container(
                                  height: 15,
                                  width: 15,
                                  child: pw.Image(logoFormatImage)),
                              pw.SizedBox(
                                width: 15,
                              ),
                              pw.Text(
                                'FORMATIONS',
                                style: pw.TextStyle(
                                    //fontFamily: 'SweetSans',
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 9),
                              )
                            ],
                          ),
                        ),
                        pw.Container(
                            height: 2,
                            width: 30,
                            color: MyWebProjectColorPdf.classicBlack),
                        pw.SizedBox(
                          height: 10,
                        ),
                        pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(
                              'APPRENTISSAGE INFORMATIQUE',
                              style: pw.TextStyle(
                                  //fontFamily: 'Helvetica',
                                  fontWeight: pw.FontWeight.bold,
                                  fontSize: 8),
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Text(
                              'École 19 (42 Paris) | 2022 - 2023',
                              style: const pw.TextStyle(
                                  //fontFamily: 'SweetSans',
                                  fontSize: 8),
                            ),
                          ],
                        ),
                        pw.SizedBox(
                          height: 15,
                        ),
                        pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(
                              'APPRENTISAGE INFORMATIQUE',
                              style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                  //fontFamily: 'Helvetica',
                                  fontSize: 8),
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Text(
                              'Autodidacte | 2020 - 2022',
                              style: const pw.TextStyle(fontSize: 8),
                            ),
                          ],
                        ),
                        pw.SizedBox(
                          height: 15,
                        ),
                        pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(
                              'MENUISERIE',
                              style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold, fontSize: 8),
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Text(
                              'École de menuiserie | 2010 - 2018',
                              style: const pw.TextStyle(fontSize: 8),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  pw.SizedBox(height: 7),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(
                        top: 10.0, left: 10, right: 10),
                    child: pw.Container(
                      width: 250,
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Container(
                              height: 2,
                              width: 30,
                              color: MyWebProjectColorPdf.classicBlack),
                          pw.Padding(
                            padding: const pw.EdgeInsets.only(
                                top: 6, bottom: 6, left: 9),
                            child: pw.Row(
                              children: [
                                pw.Container(
                                    height: 15,
                                    width: 15,
                                    child: pw.Image(logoContactImage)),
                                pw.SizedBox(
                                  width: 15,
                                ),
                                pw.Text(
                                  'SOFTSKILLS',
                                  style: pw.TextStyle(
                                      //fontFamily: 'SweetSans',
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 9),
                                )
                              ],
                            ),
                          ),
                          pw.Container(
                              height: 2,
                              width: 30,
                              color: MyWebProjectColorPdf.classicBlack),
                          pw.SizedBox(
                            height: 10,
                          ),
                          pw.Column(
                            children: [
                              pw.Row(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                children: [
                                  pw.SizedBox(
                                      height: 10,
                                      width: 10,
                                      child: pw.Image(userImage)),
                                  pw.SizedBox(
                                    width: 12,
                                  ),
                                  pw.Text(
                                    'Sociable',
                                    style: pw.TextStyle(fontSize: 8),
                                  ),
                                ],
                              ),
                              pw.SizedBox(
                                height: 3,
                              ),
                              pw.Row(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                children: [
                                  pw.SizedBox(
                                      height: 10,
                                      width: 10,
                                      child: pw.Image(searchImage)),
                                  pw.SizedBox(
                                    width: 12,
                                  ),
                                  pw.Text(
                                    'Curieux',
                                    style: pw.TextStyle(fontSize: 8),
                                  ),
                                ],
                              ),
                              pw.SizedBox(
                                height: 3,
                              ),
                              pw.Row(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                children: [
                                  pw.SizedBox(
                                      height: 10,
                                      width: 10,
                                      child: pw.Image(helpImage)),
                                  pw.SizedBox(
                                    width: 12,
                                  ),
                                  pw.Text(
                                    'Aime aider',
                                    style: pw.TextStyle(fontSize: 8),
                                  ),
                                ],
                              ),
                              pw.SizedBox(
                                height: 3,
                              ),
                              pw.Row(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                children: [
                                  pw.SizedBox(
                                      height: 10,
                                      width: 10,
                                      child: pw.Image(learnImage)),
                                  pw.SizedBox(
                                    width: 12,
                                  ),
                                  pw.Text(
                                    'Aime apprendre',
                                    style: pw.TextStyle(fontSize: 8),
                                  ),
                                ],
                              ),
                              pw.SizedBox(
                                height: 3,
                              ),
                              pw.Row(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                children: [
                                  pw.SizedBox(
                                      height: 10,
                                      width: 10,
                                      child: pw.Image(penImage)),
                                  pw.SizedBox(
                                    width: 12,
                                  ),
                                  pw.Text(
                                    'Créatif',
                                    style: pw.TextStyle(fontSize: 8),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            pw.SizedBox(
              width: 395,
              child: pw.Padding(
                padding: const pw.EdgeInsets.only(left: 25),
                child: pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(top: 25),
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            children: [
                              pw.Text(
                                'ARNAUD  HALLEUX',
                                style: pw.TextStyle(
                                    fontSize: 25,
                                    fontWeight: pw.FontWeight.bold,
                                    letterSpacing: 4),
                              ),
                              pw.SizedBox(height: 5),
                              pw.Text(
                                'Développeur FullStack Flutter',
                                style: pw.TextStyle(
                                  color: MyWebProjectColorPdf.classicBlack,
                                  fontSize: 15,
                                ),
                              ),
                              pw.SizedBox(height: 5),
                              pw.Text(
                                '(Mobile/Web/Soft)',
                                style: pw.TextStyle(
                                  color: MyWebProjectColorPdf.classicBlack,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                        pw.Container(
                          height: 40,
                          width: 40,
                          decoration: pw.BoxDecoration(
                              border: pw.Border.all(
                                  width: 2,
                                  color: MyWebProjectColorPdf.purpulColor)),
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.all(4.0),
                            child: pw.BarcodeWidget(
                              barcode:
                                  Barcode.qrCode(), // Barcode type and settings
                              data: 'mywebproject.be', // Content
                            ),
                          ),
                        )
                      ],
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.only(top: 10, bottom: 10),
                      child: pw.Container(
                        height: 1,
                        width: 150,
                        color: MyWebProjectColorPdf.colorLineDiviser,
                      ),
                    ),
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          'En quelques mots...',
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 12),
                        ),
                        pw.SizedBox(
                          height: 10,
                        ),
                        pw.Container(
                          child: pw.Text(
                            'Je suis un développeur Flutter junior et je suis convaincu que je suis né avec un clavier entre les mains. J\'aime les défis techniques et les projets créatifs. Si vous cherchez un développeur qui peut vous aider à créer des applications mobiles aussi cool que les gadgets de James Bond, alors vous êtes au bon endroit.',
                            style: pw.TextStyle(fontSize: 9),
                          ),
                        )
                      ],
                    ),
                    pw.SizedBox(
                      height: 10,
                    ),
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Row(
                          children: [
                            pw.Container(
                                height: 2,
                                width: 30,
                                color: MyWebProjectColorPdf.classicBlack),
                            pw.Container(
                                height: 2,
                                width: 120,
                                color: MyWebProjectColorPdf.colorLineDiviser),
                          ],
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(
                              top: 6, bottom: 6, left: 9),
                          child: pw.Row(
                            children: [
                              pw.SizedBox(
                                  height: 10,
                                  width: 10,
                                  child: pw.Image(logoexperienceImage)),
                              pw.SizedBox(
                                width: 15,
                              ),
                              pw.Text(
                                'EXPÉRIENCES PROFESSIONNELLES',
                                style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 9),
                              )
                            ],
                          ),
                        ),
                        pw.Row(
                          children: [
                            pw.Container(
                                height: 2,
                                width: 30,
                                color: MyWebProjectColorPdf.classicBlack),
                            pw.Container(
                                height: 2,
                                width: 120,
                                color: MyWebProjectColorPdf.colorLineDiviser),
                          ],
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 20),
                    pw.Stack(
                      children: [
                        pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          children: [
                            pw.SizedBox(
                              width: 50,
                            ),
                            pw.Container(
                                color: MyWebProjectColorPdf.colorLineDiviser,
                                width: 1,
                                height: 518.5),
                          ],
                        ),
                        pw.Column(
                          children: [
                            pw.Padding(
                              padding: const pw.EdgeInsets.only(bottom: 20),
                              child: pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Padding(
                                      padding: pw.EdgeInsets.only(left: 10),
                                      child: pw.Column(
                                        children: [
                                          pw.Text(
                                            '2023',
                                            style: pw.TextStyle(
                                                fontSize: 11,
                                                fontWeight: pw.FontWeight.bold),
                                          ),
                                          pw.Text(
                                            '2023',
                                            style: pw.TextStyle(
                                                fontSize: 11,
                                                fontWeight: pw.FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    pw.SizedBox(
                                      width: 13.2,
                                    ),
                                    pw.Container(
                                      height: 6,
                                      width: 6,
                                      decoration: pw.BoxDecoration(
                                          color:
                                              MyWebProjectColorPdf.purpulColor,
                                          shape: pw.BoxShape.circle),
                                    ),
                                    pw.SizedBox(
                                      width: 13.2,
                                    ),
                                    pw.Column(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text(
                                          'Développeur Junior Full Stack Flutter',
                                          style: pw.TextStyle(
                                              fontWeight: pw.FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        pw.SizedBox(
                                          height: 7,
                                        ),
                                        pw.Text(
                                          'HappyHoursMarket | Bruxelles',
                                          style: pw.TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                        pw.SizedBox(
                                          height: 10,
                                        ),
                                        pw.Row(
                                          mainAxisAlignment:
                                              pw.MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Container(
                                              height: 4,
                                              width: 4,
                                              decoration: pw.BoxDecoration(
                                                  color: MyWebProjectColorPdf
                                                      .classicBlack,
                                                  shape: pw.BoxShape.circle),
                                            ),
                                            pw.SizedBox(
                                              width: 8,
                                            ),
                                            pw.SizedBox(
                                              width: 285,
                                              child: pw.Text(
                                                "Participation active au développement de l'app",
                                                style:
                                                    pw.TextStyle(fontSize: 9),
                                              ),
                                            ),
                                          ],
                                        ),
                                        pw.Row(
                                          mainAxisAlignment:
                                              pw.MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Container(
                                              height: 4,
                                              width: 4,
                                              decoration: pw.BoxDecoration(
                                                  color: MyWebProjectColorPdf
                                                      .classicBlack,
                                                  shape: pw.BoxShape.circle),
                                            ),
                                            pw.SizedBox(
                                              width: 8,
                                            ),
                                            pw.SizedBox(
                                              width: 285,
                                              child: pw.Text(
                                                "Design UX/UI de l'app",
                                                style:
                                                    pw.TextStyle(fontSize: 9),
                                              ),
                                            ),
                                          ],
                                        ),
                                        pw.Row(
                                          mainAxisAlignment:
                                              pw.MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Container(
                                              height: 4,
                                              width: 4,
                                              decoration: pw.BoxDecoration(
                                                  color: MyWebProjectColorPdf
                                                      .classicBlack,
                                                  shape: pw.BoxShape.circle),
                                            ),
                                            pw.SizedBox(
                                              width: 8,
                                            ),
                                            pw.SizedBox(
                                              width: 285,
                                              child: pw.Text(
                                                "Rédaction de procédures et de documentations",
                                                style:
                                                    pw.TextStyle(fontSize: 9),
                                              ),
                                            ),
                                          ],
                                        ),
                                        pw.Row(
                                          mainAxisAlignment:
                                              pw.MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Container(
                                              height: 4,
                                              width: 4,
                                              decoration: pw.BoxDecoration(
                                                  color: MyWebProjectColorPdf
                                                      .classicBlack,
                                                  shape: pw.BoxShape.circle),
                                            ),
                                            pw.SizedBox(
                                              width: 8,
                                            ),
                                            pw.SizedBox(
                                              width: 285,
                                              child: pw.Text(
                                                "Participation et organisation de réunions avec l'équipe IT / Marketing",
                                                style:
                                                    pw.TextStyle(fontSize: 9),
                                              ),
                                            ),
                                          ],
                                        ),
                                        pw.Row(
                                          mainAxisAlignment:
                                              pw.MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Container(
                                              height: 4,
                                              width: 4,
                                              decoration: pw.BoxDecoration(
                                                  color: MyWebProjectColorPdf
                                                      .classicBlack,
                                                  shape: pw.BoxShape.circle),
                                            ),
                                            pw.SizedBox(
                                              width: 8,
                                            ),
                                            pw.SizedBox(
                                              width: 285,
                                              child: pw.Text(
                                                "Création et maintenance de nouvelles fonctionnalités",
                                                style:
                                                    pw.TextStyle(fontSize: 9),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ]),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.only(bottom: 20),
                              child: pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Padding(
                                      padding: pw.EdgeInsets.only(left: 10),
                                      child: pw.Column(
                                        children: [
                                          pw.Text(
                                            '2022',
                                            style: pw.TextStyle(
                                                fontSize: 11,
                                                fontWeight: pw.FontWeight.bold),
                                          ),
                                          pw.Text(
                                            '2023',
                                            style: pw.TextStyle(
                                                fontSize: 11,
                                                fontWeight: pw.FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    pw.SizedBox(
                                      width: 13.2,
                                    ),
                                    pw.Container(
                                      height: 6,
                                      width: 6,
                                      decoration: pw.BoxDecoration(
                                          color:
                                              MyWebProjectColorPdf.purpulColor,
                                          shape: pw.BoxShape.circle),
                                    ),
                                    pw.SizedBox(
                                      width: 13.2,
                                    ),
                                    pw.Column(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text(
                                          'Développement Application Mobile',
                                          style: pw.TextStyle(
                                              fontWeight: pw.FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        pw.SizedBox(
                                          height: 7,
                                        ),
                                        pw.Text(
                                          'MédicalNote | Bruxelles',
                                          style: pw.TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                        pw.SizedBox(
                                          height: 10,
                                        ),
                                        pw.Row(
                                          mainAxisAlignment:
                                              pw.MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Container(
                                              height: 4,
                                              width: 4,
                                              decoration: pw.BoxDecoration(
                                                  color: MyWebProjectColorPdf
                                                      .classicBlack,
                                                  shape: pw.BoxShape.circle),
                                            ),
                                            pw.SizedBox(
                                              width: 8,
                                            ),
                                            pw.SizedBox(
                                              width: 285,
                                              child: pw.Text(
                                                "Création de plusieur fonctionnalités: PDF, mémoire local, etc.",
                                                style:
                                                    pw.TextStyle(fontSize: 9),
                                              ),
                                            ),
                                          ],
                                        ),
                                        pw.Row(
                                          mainAxisAlignment:
                                              pw.MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Container(
                                              height: 4,
                                              width: 4,
                                              decoration: pw.BoxDecoration(
                                                  color: MyWebProjectColorPdf
                                                      .classicBlack,
                                                  shape: pw.BoxShape.circle),
                                            ),
                                            pw.SizedBox(
                                              width: 8,
                                            ),
                                            pw.SizedBox(
                                              width: 285,
                                              child: pw.Text(
                                                "Participation et organisation de réunions avec l'equipe IT / Marketing",
                                                style:
                                                    pw.TextStyle(fontSize: 9),
                                              ),
                                            ),
                                          ],
                                        ),
                                        pw.Row(
                                          mainAxisAlignment:
                                              pw.MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Container(
                                              height: 4,
                                              width: 4,
                                              decoration: pw.BoxDecoration(
                                                  color: MyWebProjectColorPdf
                                                      .classicBlack,
                                                  shape: pw.BoxShape.circle),
                                            ),
                                            pw.SizedBox(
                                              width: 8,
                                            ),
                                            pw.SizedBox(
                                              width: 285,
                                              child: pw.Text(
                                                "Résolution de problème techniques",
                                                style:
                                                    pw.TextStyle(fontSize: 9),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ]),
                            ),
                             pw.Padding(
                              padding: const pw.EdgeInsets.only(bottom: 20),
                              child: pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Padding(
                                      padding: pw.EdgeInsets.only(left: 10),
                                      child: pw.Column(
                                        children: [
                                          pw.Text(
                                            '2022',
                                            style: pw.TextStyle(
                                                fontSize: 11,
                                                fontWeight: pw.FontWeight.bold),
                                          ),
                                          pw.Text(
                                            '2023',
                                            style: pw.TextStyle(
                                                fontSize: 11,
                                                fontWeight: pw.FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    pw.SizedBox(
                                      width: 13.2,
                                    ),
                                    pw.Container(
                                      height: 6,
                                      width: 6,
                                      decoration: pw.BoxDecoration(
                                          color:
                                              MyWebProjectColorPdf.purpulColor,
                                          shape: pw.BoxShape.circle),
                                    ),
                                    pw.SizedBox(
                                      width: 13.2,
                                    ),
                                    pw.Column(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text(
                                          'Etude en Développement Information',
                                          style: pw.TextStyle(
                                              fontWeight: pw.FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        pw.SizedBox(
                                          height: 7,
                                        ),
                                        pw.Text(
                                          'Ecole 19 (42 Paris) | Bruxelles',
                                          style: pw.TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                        pw.SizedBox(
                                          height: 10,
                                        ),
                                        pw.Row(
                                          mainAxisAlignment:
                                              pw.MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Container(
                                              height: 4,
                                              width: 4,
                                              decoration: pw.BoxDecoration(
                                                  color: MyWebProjectColorPdf
                                                      .classicBlack,
                                                  shape: pw.BoxShape.circle),
                                            ),
                                            pw.SizedBox(
                                              width: 8,
                                            ),
                                            pw.SizedBox(
                                              width: 285,
                                              child: pw.Text(
                                                "Apprentisage de différentes technologies: Flutter, Firebase, Dart, GIT, C, Shell",
                                                style:
                                                    pw.TextStyle(fontSize: 9),
                                              ),
                                            ),
                                          ],
                                        ),
                                        pw.Row(
                                          mainAxisAlignment:
                                              pw.MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Container(
                                              height: 4,
                                              width: 4,
                                              decoration: pw.BoxDecoration(
                                                  color: MyWebProjectColorPdf
                                                      .classicBlack,
                                                  shape: pw.BoxShape.circle),
                                            ),
                                            pw.SizedBox(
                                              width: 8,
                                            ),
                                            pw.SizedBox(
                                              width: 285,
                                              child: pw.Text(
                                                "",
                                                style:
                                                    pw.TextStyle(fontSize: 9),
                                              ),
                                            ),
                                          ],
                                        ),
                                        pw.Row(
                                          mainAxisAlignment:
                                              pw.MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Container(
                                              height: 4,
                                              width: 4,
                                              decoration: pw.BoxDecoration(
                                                  color: MyWebProjectColorPdf
                                                      .classicBlack,
                                                  shape: pw.BoxShape.circle),
                                            ),
                                            pw.SizedBox(
                                              width: 8,
                                            ),
                                            pw.SizedBox(
                                              width: 285,
                                              child: pw.Text(
                                                "Résolution de problème techniques",
                                                style:
                                                    pw.TextStyle(fontSize: 9),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                    pw.Container(
                        height: 30,
                        width: 395,
                        color: MyWebProjectColorPdf.backline,
                        child: pw.Center(
                            child: pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.center,
                          children: [
                            pw.Row(
                              children: [
                                pw.Text(
                                  'Français',
                                  style: pw.TextStyle(
                                      fontSize: 10,
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.SizedBox(
                                  width: 15,
                                ),
                                pw.SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: pw.SizedBox(
                                      height: 8,
                                      width: 8,
                                      child: pw.Image(fullImage)),
                                ),
                                pw.SizedBox(
                                  width: 5,
                                ),
                                pw.SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: pw.SizedBox(
                                      height: 8,
                                      width: 8,
                                      child: pw.Image(fullImage)),
                                ),
                                pw.SizedBox(
                                  width: 5,
                                ),
                                pw.SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: pw.SizedBox(
                                      height: 8,
                                      width: 8,
                                      child: pw.Image(fullImage)),
                                ),
                                pw.SizedBox(
                                  width: 5,
                                ),
                                pw.SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: pw.SizedBox(
                                      height: 8,
                                      width: 8,
                                      child: pw.Image(fullImage)),
                                ),
                                pw.SizedBox(
                                  width: 5,
                                ),
                                pw.SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: pw.SizedBox(
                                      height: 8,
                                      width: 8,
                                      child: pw.Image(fullImage)),
                                ),
                                pw.SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            pw.SizedBox(
                              width: 50,
                            ),
                            pw.Row(
                              children: [
                                pw.Text(
                                  'Anglais',
                                  style: pw.TextStyle(
                                      fontSize: 10,
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.SizedBox(
                                  width: 15,
                                ),
                                pw.SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: pw.SizedBox(
                                      height: 8,
                                      width: 8,
                                      child: pw.Image(fullImage)),
                                ),
                                pw.SizedBox(
                                  width: 5,
                                ),
                                pw.SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: pw.SizedBox(
                                      height: 8,
                                      width: 8,
                                      child: pw.Image(fullImage)),
                                ),
                                pw.SizedBox(
                                  width: 5,
                                ),
                                pw.SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: pw.SizedBox(
                                      height: 8,
                                      width: 8,
                                      child: pw.Image(fullImage)),
                                ),
                                pw.SizedBox(
                                  width: 5,
                                ),
                                pw.SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: pw.SizedBox(
                                      height: 8,
                                      width: 8,
                                      child: pw.Image(emptyImage)),
                                ),
                                pw.SizedBox(
                                  width: 5,
                                ),
                                pw.SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: pw.SizedBox(
                                      height: 8,
                                      width: 8,
                                      child: pw.Image(emptyImage)),
                                ),
                                pw.SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ],
                        ))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    savePDF();
  }
}
