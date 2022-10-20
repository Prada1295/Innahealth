import 'package:flutter/material.dart';

import '../widgets/fake_search.dart';

class NarinoHomeBar extends StatefulWidget {
  const NarinoHomeBar({Key? key}) : super(key: key);

  @override
  State<NarinoHomeBar> createState() => _NarinoHomeBarState();
}

class _NarinoHomeBarState extends State<NarinoHomeBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            title: const FakeSearch(),
            bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.brown,
              indicatorWeight: 3,
              tabs: [
                RepeatedTab(
                  label: '¿Quienes Somos?',
                ),
                RepeatedTab(
                  label: 'Nuestros Indicadores',
                ),
                RepeatedTab(
                  label: 'Acerca de Nariño(Antioquia)',
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [
            Center(
                child: Text(
              'Pantalla de Presentacion de "¿Quienes Somos?", para añadir cualquier tipo de informacion relevante, imagenes, videos, links, etc',
              textAlign: TextAlign.center,
            )),
            Center(
                child: Text(
              'Pantalla de Presentacion de "Nuestros Indicadores", para dar una vista general de los aspecrtos positivos y negativos en relacion a los idnicadores',
              textAlign: TextAlign.center,
            )),
            Center(
                child: Text(
                    'Temas de interes realcionados con la alcaldia de Nariño')),
          ])),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}
