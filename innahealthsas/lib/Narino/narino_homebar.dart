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
      length: 8,
      child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            title: const FakeSearch(),
            bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.brown,
              indicatorWeight: 8,
              tabs: [
                RepeatedTab(
                  label: '¿Quienes Somos?',
                ),
                RepeatedTab(
                  label: 'Nuestros Indicadores',
                ),
                RepeatedTab(
                  label: 'MARK 3',
                ),
                RepeatedTab(
                  label: 'MARK 4',
                ),
                RepeatedTab(
                  label: 'MARK 5',
                ),
                RepeatedTab(
                  label: 'MARK 6',
                ),
                RepeatedTab(
                  label: 'MARK 7',
                ),
                RepeatedTab(
                  label: 'MARK 8',
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
            Center(child: Text('MARK 3 screen')),
            Center(child: Text('MARK 4 screen')),
            Center(child: Text('MARK 5 screen')),
            Center(child: Text('MARK 6 screen')),
            Center(child: Text('MARK 7 screen')),
            Center(child: Text('MARK 8 screen')),
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
