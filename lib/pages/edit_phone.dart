import 'package:consejero_mental_health/user/user_data.dart';
import 'package:consejero_mental_health/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';


// This class handles the Page to edit the Phone Section of the User Profile.
class EditPhoneFormPage extends StatefulWidget {
  const EditPhoneFormPage({Key? key}) : super(key: key);
  @override
  EditPhoneFormPageState createState() {
    return EditPhoneFormPageState();
  }
}

class EditPhoneFormPageState extends State<EditPhoneFormPage> {
  final _formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void updateUserValue(String phone) {
    String formattedPhoneNumber = "(" +
        phone.substring(0, 3) +
        ") " +
        phone.substring(3, 6) +
        "-" +
        phone.substring(6, phone.length);
    user.phone = formattedPhoneNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6DEC8),
        appBar: buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                      width: 320,
                      child: const Text(
                        "Cuál es tu número de teléfono",
                        style:
                            TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: SizedBox(
                          height: 100,
                          width: 320,
                          child: TextFormField(
                            // Handles Form Validation
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Ingresa tu número de teléfono';
                              } else if (isAlpha(value)) {
                                return 'Ingrese solo números';
                              } else if (value.length < 10) {
                                return 'Por favor ingrese un número de teléfono válido';
                              }
                              return null;
                            },
                            controller: phoneController,
                            decoration: const InputDecoration(
                              labelText: 'Su número de teléfono',
                            ),
                          ))),
                  Padding(
                      padding: EdgeInsets.only(top: 150),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: 320,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                // Validate returns true if the form is valid, or false otherwise.
                                if (_formKey.currentState!.validate() &&
                                    isNumeric(phoneController.text)) {
                                  updateUserValue(phoneController.text);
                                  Navigator.pop(context);
                                }
                              },
                              child: const Text(
                                'Actualizar',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          )))
                ]),
          ),
        ));
  }
}
