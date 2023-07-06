import 'dart:developer';
import 'dart:io';
import 'package:bio_data_maker/variable_page.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Stapper extends StatefulWidget {
  const Stapper({Key? key}) : super(key: key);

  @override
  State<Stapper> createState() => _StapperState();
}

class _StapperState extends State<Stapper> {
  int currentStep = 0;
  final doc = pw.Document();

  void pdf() async {
    doc.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            children: [
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Container(
                    height: 200,
                    width: 200,
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          'Personal Details',
                        ),
                        pw.Container(
                          height: 2,
                          width: 145,
                        ),
                        pw.Text(
                          "Name:${name.text}",
                        ),
                        pw.Text(
                          "Date of Birth:${dateOfBirth.text}",
                        ),
                        pw.Text(
                          "Native place:${heightF.text}",
                        ),
                        pw.Text(
                          "height:${heightI.text}",
                        ),
                        pw.Text(
                          "weight:${weight.text}",
                        ),
                        pw.Text(
                          "Contact number:${phoneNumber.text}",
                        ),
                        pw.Text(
                          "Cast:${cast.text}",
                        ),
                        pw.Text(
                          "Address:${address.text}",
                        ),
                        pw.Text(
                          "Hobbies:${hobbies.text}",
                        ),
                      ],
                    ),
                  ),
                  pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Container(
                        height: 200,
                        width: 350,
                        //  color: Colors.yellow,
                        child: pw.Text('data'),
                      ),
                    ],
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
    final output = await getExternalStorageDirectory();
    String path = ('${output?.path ?? ''}/example.pdf');
    final file = File(path);
    await file.writeAsBytes(await doc.save());
    log(output?.path ?? '');
    await SfPdfViewer.file(
      File('${output?.path ?? ''}/example.pdf'),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Stepper(
        currentStep: currentStep,
        onStepTapped: (index) {
          setState(() {
            currentStep = index;
          });
        },
        onStepContinue: () {
          if (currentStep != 2) {
            setState(() {
              currentStep++;
              log('++');
            });
          }
        },
        onStepCancel: () {
          if (currentStep != 0) {
            setState(() {
              currentStep--;
            });
          }
        },
        steps: [
          Step(
            isActive: currentStep >= 0,
            title: const Text('Personal Details'),
            content: SingleChildScrollView(
              child: SizedBox(
                height: height * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      style: const TextStyle(fontSize: 22),
                      controller: dateOfBirth,
                      decoration: const InputDecoration(
                        hintText: 'Date of Birth',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width * 0.37,
                          child: TextFormField(
                            style: const TextStyle(fontSize: 17),
                            controller: heightF,
                            decoration: const InputDecoration(
                              hintText: 'Height(Feet)',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.37,
                          child: TextFormField(
                            style: const TextStyle(fontSize: 17),
                            controller: heightI,
                            decoration: const InputDecoration(
                              hintText: 'Height(Inch)',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      style: const TextStyle(fontSize: 22),
                      controller: weight,
                      decoration: const InputDecoration(
                        hintText: 'Weight(Kg)',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(fontSize: 22),
                      controller: phoneNumber,
                      decoration: const InputDecoration(
                        hintText: 'Contact number',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(fontSize: 22),
                      controller: cast,
                      decoration: const InputDecoration(
                        hintText: 'Cast',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(fontSize: 22),
                      controller: address,
                      decoration: const InputDecoration(
                        hintText: 'Address',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(fontSize: 22),
                      controller: education,
                      decoration: const InputDecoration(
                        hintText: 'Education',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(fontSize: 22),
                      controller: hobbies,
                      decoration: const InputDecoration(
                        hintText: 'Hobbies',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Step(
            isActive: currentStep >= 1,
            title: const Text('Family Details'),
            content: SizedBox(
              height: height * 0.35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    style: const TextStyle(fontSize: 22),
                    controller: father,
                    decoration: const InputDecoration(
                      hintText: 'Father name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    style: const TextStyle(fontSize: 22),
                    controller: mother,
                    decoration: const InputDecoration(
                      hintText: 'Mother name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    style: const TextStyle(fontSize: 22),
                    controller: native,
                    decoration: const InputDecoration(
                      hintText: 'Native place',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Step(
            isActive: currentStep >= 2,
            title: const Text('Step 1'),
            content: SizedBox(
              height: height * 0.35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    style: const TextStyle(fontSize: 22),
                    controller: maternalN,
                    decoration: const InputDecoration(
                      hintText: 'Mother name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    style: const TextStyle(fontSize: 22),
                    controller: maternalP,
                    decoration: const InputDecoration(
                      hintText: 'Native place',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: pdf,
                    child: const Text('Download pdf'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
