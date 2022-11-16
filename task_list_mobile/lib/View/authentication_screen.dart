import 'package:flutter/material.dart';
import 'package:task_list_mobile/components/components_authentication/get_started_button.dart';
import 'package:task_list_mobile/components/components_authentication/text_authentication.dart';
import 'package:task_list_mobile/components/components_initial/container_initial.dart';
import 'package:task_list_mobile/components/components_initial/row_initial.dart';
import 'package:task_list_mobile/components/components_initial/stack_initial.dart';

class AuthenticationScreen extends StatelessWidget {
  AuthenticationScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Scaffold(
          backgroundColor: const Color(0xff161616),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const RowInitial(),
                const ContainerInitial(),
                const StackInitial(),
                const SizedBox(height: 40),
                const TextAuthentication(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    maxLength: 14,
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Insert a valid name, please.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: const Color(0xFFF7F5F5),
                      filled: true,
                      hintText: 'Digite seu nome aqui',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GetStartedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context)
                          .pushNamed("/home", arguments: nameController.text);
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
