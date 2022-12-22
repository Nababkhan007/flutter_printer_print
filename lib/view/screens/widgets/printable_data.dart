import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdf;

buildPrintableData(image) => pdf.Padding(
      padding: const pdf.EdgeInsets.all(25.00),
      child: pdf.Column(
        children: [
          pdf.Text(
            "Test Purpose Printing",
            style: pdf.TextStyle(
              fontSize: 25.00,
              fontWeight: pdf.FontWeight.bold,
            ),
          ),
          pdf.SizedBox(height: 10.00),
          pdf.Divider(),
          pdf.Align(
            alignment: pdf.Alignment.topRight,
            child: pdf.Image(
              image,
              width: 250,
              height: 250,
            ),
          ),
          pdf.Column(
            children: [
              pdf.Row(
                crossAxisAlignment: pdf.CrossAxisAlignment.end,
                children: [
                  pdf.SizedBox(width: 5.5),
                  pdf.Text(
                    "Invoice",
                    style: pdf.TextStyle(
                      fontSize: 23.00,
                      fontWeight: pdf.FontWeight.bold,
                    ),
                  )
                ],
              ),
              pdf.SizedBox(height: 10.00),
              pdf.Container(
                color: const PdfColor(0.5, 1, 0.5, 0.7),
                width: double.infinity,
                height: 36.00,
                child: pdf.Center(
                  child: pdf.Text(
                    "Approvals",
                    style: pdf.TextStyle(
                      color: const PdfColor(0.2, 0.6, 0.2, 0.7),
                      fontSize: 20.00,
                      fontWeight: pdf.FontWeight.bold,
                    ),
                  ),
                ),
              ),
              for (var i = 0; i < 3; i++)
                pdf.Container(
                  color: i % 2 != 0
                      ? const PdfColor(0.9, 0.9, 0.9, 0.6)
                      : const PdfColor(1, 1, 1, 0.1),
                  width: double.infinity,
                  height: 36.00,
                  child: pdf.Padding(
                    padding: const pdf.EdgeInsets.symmetric(horizontal: 25.0),
                    child: pdf.Row(
                      mainAxisAlignment: pdf.MainAxisAlignment.spaceBetween,
                      children: [
                        i == 2
                            ? pdf.Text(
                                "Tax",
                                style: pdf.TextStyle(
                                  fontSize: 18.00,
                                  fontWeight: pdf.FontWeight.bold,
                                ),
                              )
                            : pdf.Text(
                                "Item ${i + 1}",
                                style: pdf.TextStyle(
                                  fontSize: 18.00,
                                  fontWeight: pdf.FontWeight.bold,
                                ),
                              ),
                        i == 2
                            ? pdf.Text(
                                "Tk 2.50",
                                style: pdf.TextStyle(
                                  fontSize: 18.00,
                                  fontWeight: pdf.FontWeight.normal,
                                ),
                              )
                            : pdf.Text(
                                "Tk ${(i + 1) * 7}.00",
                                style: pdf.TextStyle(
                                  fontSize: 18.00,
                                  fontWeight: pdf.FontWeight.normal,
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              pdf.Padding(
                padding: const pdf.EdgeInsets.symmetric(horizontal: 25.0),
                child: pdf.Container(
                  width: double.infinity,
                  height: 36.00,
                  child: pdf.Row(
                    mainAxisAlignment: pdf.MainAxisAlignment.end,
                    children: [
                      pdf.Text(
                        "Tk 23.50",
                        style: pdf.TextStyle(
                          fontSize: 22.00,
                          fontWeight: pdf.FontWeight.bold,
                          color: const PdfColor(0.2, 0.6, 0.2, 0.7),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              pdf.SizedBox(height: 15.00),
            ],
          )
        ],
      ),
    );
