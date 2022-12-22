import 'package:flutter/material.dart';
import 'package:printer_print/view/Components/spacer.dart';
import 'package:printer_print/view/Components/image_builder.dart';
import 'package:printer_print/view/Screens/Widgets/save_btn.dart';
import 'package:printer_print/view/Screens/Widgets/invoice_table.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.00),
            child: Column(
              children: const [
                Text(
                  "Test Purpose Printing",
                  style: TextStyle(
                    fontSize: 25.00,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                HeightSpacer(height: 10.00),
                Divider(),
                Align(
                  alignment: Alignment.topRight,
                  child: ImageBuilder(
                    imagePath: "assets/icons/printer.png",
                    imageWidth: 250,
                    imageHeight: 250,
                  ),
                ),
                InvoiceBuilder(),
                HeightSpacer(height: 15.00),
                SaveBtnBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
