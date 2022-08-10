// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:innahealthsas/Narino/narino_appbar_general.dart';

class NarinoLogin extends StatefulWidget {
  const NarinoLogin({Key? key}) : super(key: key);

  @override
  State<NarinoLogin> createState() => _NarinoLoginState();
}

class _NarinoLoginState extends State<NarinoLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Image(
                image: AssetImage('images/narino_appbar_images/coding.png'),
                width: 140,
              ),
              const SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.brown[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Image(
                    // ignore: unnecessary_const
                    image: const AssetImage(
                        'images/narino_appbar_images/user.png')),
                width: 60,
              ),
              const SizedBox(height: 15),
              const Text(
                'como Perfil Autorizado',
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),

              const SizedBox(height: 35),
              // Hello Again!!
              const Text(
                'Bienvenido a CBApp!!',
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Made in Medellín',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 50),

              // email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                          decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      )),
                    )),
              ),

              const SizedBox(height: 10),

              // password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              //sign in button

              const SizedBox(height: 25),

              //not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'No está registrado?',
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    '  Hazlo Ahora',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(25),
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.6,
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NarinoNavigationBar()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
