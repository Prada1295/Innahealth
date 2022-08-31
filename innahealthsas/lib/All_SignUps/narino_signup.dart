import 'package:flutter/material.dart';

// ignore_for_file: avoid_print, unnecessary_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:innahealthsas/widgets/signup_widgets.dart';
import 'package:innahealthsas/widgets/snackbar.dart';

//final TextEditingController _namecontroller = TextEditingController();
//final TextEditingController _emailcontroller = TextEditingController();
//final TextEditingController _passwordcontroller = TextEditingController();

class NarinoSignUp extends StatefulWidget {
  const NarinoSignUp({Key? key}) : super(key: key);

  @override
  State<NarinoSignUp> createState() => _NarinoSignUpState();
}

class _NarinoSignUpState extends State<NarinoSignUp> {
  late String name;
  late String email;
  late String password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  bool passwordVisibility = false;
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldKey,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              reverse: true,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Form(
                  key: _formKey,
                  child: Column(children: [
                    const SignUpHeaderLabel(
                      headerLabel: 'Registrate',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.lightBlue,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15))),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  print('toma una foto');
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.photo,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  print('escoje una de la galeria');
                                },
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Ingresa tu nombre completo';
                          } else if (value.isNotEmpty) {
                            return null;
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                        },
                        //controller: _namecontroller,
                        decoration: textFormDecoration.copyWith(
                          labelText: 'Nombre Completo',
                          hintText: 'Ingresa tu nombre completo',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Ingresa tu correo';
                          } else if (value.isValidEmail() == false) {
                            return 'Correo Invalido';
                          } else if (value.isValidEmail() == true) {
                            return null;
                          }
                          return null;
                        },
                        onChanged: (value) {
                          email = value;
                        },
                        //controller: _emailcontroller,
                        keyboardType: TextInputType.emailAddress,
                        decoration: textFormDecoration.copyWith(
                          labelText: 'Correo Electrónico',
                          hintText: 'Ingresa tu correo',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Ingresa una contraseña';
                          } else if (value.isNotEmpty) {
                            return null;
                          }
                          return null;
                        },
                        onChanged: (value) {
                          password = value;
                        },
                        //controller: _passwordcontroller,
                        obscureText: passwordVisibility,
                        decoration: textFormDecoration.copyWith(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordVisibility = !passwordVisibility;
                                });
                              },
                              icon: Icon(
                                passwordVisibility
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.green,
                              )),
                          labelText: 'Contraseña',
                          hintText: 'Ingresa una contrseña',
                        ),
                      ),
                    ),
                    HaveAccount(
                      haveAccount: 'Ya tienes una cuenta? ',
                      actionLabel: 'Logeate',
                      onPressed: () {},
                    ),
                    SignUpButton(
                      mainButtonLabel: 'Registrar',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print('valido');

                          print(name);
                          print(email);
                          print(password);
                        } else {
                          MyMessageHandler.showSnackBar(_scaffoldKey,
                              'por favor llenar todos los campos');
                        }
                      },
                    )
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
