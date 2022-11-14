import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_list_mobile/components/components_home/texts_style.dart';

class MyInputField extends StatelessWidget {
  const MyInputField(
      {super.key,
      required this.title,
      required this.hint,
      this.textEditingController,
      this.widget});

  final String title;
  final String hint;
  final TextEditingController? textEditingController;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          title,
          style: titleStyle,
        ),
        Container(
          height: 52,
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.only(left: 14),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  readOnly: widget == null ? false : true,
                  autofocus: false,
                  cursorColor: Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
                  controller: textEditingController,
                  style: subTitleStyle,
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: subTitleStyle,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: context.theme.backgroundColor,
                        width: 0,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: context.theme.backgroundColor,
                      width: 0,
                    ),
                  ),
                  ),
                )),
              widget == null ? Container() : Container(child: widget),
            ],
          ),
        ),
      ]),
    );
  }
}
