// ignore_for_file: duplicate_import

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class NarinoProfileScreen extends StatefulWidget {
  const NarinoProfileScreen({Key? key}) : super(key: key);

  @override
  State<NarinoProfileScreen> createState() => _NarinoProfileScreenState();
}

class _NarinoProfileScreenState extends State<NarinoProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Container(
            height: 230,
            decoration: const BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.brown, Colors.blueGrey])),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                centerTitle: true,
                pinned: true,
                elevation: 0,
                backgroundColor: Colors.white,
                expandedHeight: 140,
                flexibleSpace: LayoutBuilder(
                  builder: (context, constraints) {
                    return FlexibleSpaceBar(
                      title: AnimatedOpacity(
                        duration: const Duration(microseconds: 200),
                        opacity: constraints.biggest.height <= 120 ? 1 : 0,
                        child: const Text(
                          'Perfil',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      background: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.brown, Colors.blueGrey])),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25, left: 30),
                          child: Row(children: [
                            const CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(
                                  'images/narino_appbar_images/guest.jpg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text(
                                'Alcaldía de Nariño'.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w600),
                              ),
                            )
                          ]),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30))),
                            child: TextButton(
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Center(
                                  child: Text(
                                    'Mapas Municipio',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            color: Colors.yellow,
                            child: TextButton(
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Center(
                                  child: Text(
                                    'Graficos Municipio',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30))),
                            child: TextButton(
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Center(
                                  child: Text(
                                    'Contactos Alcaldia',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey[300],
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 200,
                            child: Image(
                              image: AssetImage(
                                  'images/narino_appbar_images/narino_escudo.png'),
                              width: 125,
                            ),
                          ),
                          const ProfileHeaderLabel(
                              headerLabel: '  Información de la Cuenta  '),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 260,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(children: const [
                                RepeatedListTile(
                                  icon: Icons.email,
                                  subTitle: 'ejemplo_123@email.com',
                                  title: 'Dirección Email',
                                ),
                                BrownDivider(),
                                RepeatedListTile(
                                  icon: Icons.phone,
                                  subTitle: '+111-1111',
                                  title: 'Número Celular',
                                ),
                                BrownDivider(),
                                RepeatedListTile(
                                  icon: Icons.location_pin,
                                  subTitle: 'ejemplo. Cra 123 # 45 sur 67',
                                  title: 'Dirección',
                                ),
                              ]),
                            ),
                          ),
                          const ProfileHeaderLabel(
                              headerLabel: '  Configuración Cuenta '),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 260,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(children: [
                                RepeatedListTile(
                                  title: 'Editar Perfil',
                                  subTitle: '',
                                  icon: Icons.edit,
                                  onPressed: () {},
                                ),
                                const BrownDivider(),
                                RepeatedListTile(
                                  title: 'Cambiar Contraseña',
                                  icon: Icons.lock,
                                  onPressed: () {},
                                ),
                                const BrownDivider(),
                                RepeatedListTile(
                                  title: 'Salir',
                                  icon: Icons.logout,
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/narino_login');
                                  },
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class BrownDivider extends StatelessWidget {
  const BrownDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Divider(
        color: Colors.brown,
        thickness: 1,
      ),
    );
  }
}

class RepeatedListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Function()? onPressed;
  const RepeatedListTile(
      {Key? key,
      required this.icon,
      this.onPressed,
      this.subTitle = '',
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        leading: Icon(icon),
      ),
    );
  }
}

class ProfileHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const ProfileHeaderLabel({Key? key, required this.headerLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Text(
            headerLabel,
            style: const TextStyle(
                color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
