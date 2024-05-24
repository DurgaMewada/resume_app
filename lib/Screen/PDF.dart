import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;
import 'package:printing/printing.dart';
import 'package:resume_app/utils/Global.dart';

class Pdf extends StatefulWidget {
  const Pdf({super.key});

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  @override
  Widget build(BuildContext context) {
    return PdfPreview(
      build: (format) => genterepdf(),
    );
  }
}

Future<Uint8List> genterepdf() async {
  final pdf = pd.Document();
  pdf.addPage(
    pd.Page(
      build: (context) {
        return pd.Column(children: [
          pd.Row(
              children: [
            pd.Container(
                height: 700,
                width: 220,
                decoration: pd.BoxDecoration(
                  color: PdfColors.white,
                ),
                child: pd.Column(children: [
                  pd.Row(children: [
                    pd.Align(
                      alignment: pd.Alignment.topLeft,
                      child: pd.Text(
                        'Personal Details',
                        textAlign: pd.TextAlign.start,
                        style: pd.TextStyle(
                          fontSize: 25,
                        ),
                      ),

                    )
                  ]),
                  pd.Text(name,
                      style: pd.TextStyle(
                        fontSize: 20,
                      )),
                  pd.Text(add,
                      style: pd.TextStyle(
                        fontSize: 20,
                      )),
                  pd.Text(phone,
                      style: pd.TextStyle(
                        fontSize: 20,
                      )),
                  pd.Text(
                    email,
                    style: pd.TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  pd.Text(profession,
                      style: pd.TextStyle(
                        fontSize: 20,
                      )),
                  pd.Text(gender,
                      style: pd.TextStyle(
                        fontSize: 20,
                      )),
                ])),
            pd.Container(
              height: 700,
              width: 700,
              decoration: pd.BoxDecoration(
                color: PdfColors.black,
              ),
            ),
          ])
        ]);
      },
    ),
  );
  // await Printing.layoutPdf(
  //     onLayout: (PdfPageFormat format) async => pdf.save());
  PdfPreview(
    build: (format) => pdf.save(),
  );
  return pdf.save();
}
