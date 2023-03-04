import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class CustomFilePicker extends StatefulWidget {
  final Function(String) setValue;
  const CustomFilePicker({super.key, required this.setValue});

  @override
  State<CustomFilePicker> createState() => CustomFilePickerState();
}

class CustomFilePickerState extends State<CustomFilePicker> {
  String? selectedpath;

  Future pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ["jpg", "png", "jpeg", "pdf"], 
    );
    if (result != null) {
      setState(() {
        selectedpath = result.paths[0]!;
        widget.setValue(selectedpath!);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      width: getWidth(context) - 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                selectedpath ?? "Select File",
                style: text2.copyWith(color: grey),
              ),
            ),
            const SizedBox(width: 15.0),
            GestureDetector(
              onTap: () {
                pickFiles();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 5.0),
                  child: Text(
                    "Browse",
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
