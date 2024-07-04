import 'package:appreceitas/models/settings.dart';
import 'package:flutter/material.dart';
import '../components/main_drawer.dart';

class SettingsScreen extends StatefulWidget {
  final Function(Settings) onSettingsChanged;
  final Settings settings;
  const SettingsScreen(
      {super.key, required this.onSettingsChanged, required this.settings});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late Settings senttings;
  @override
  void initState() {
    super.initState();
    senttings = widget.settings;
  }

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value) {
        onChanged(value);
        widget.onSettingsChanged(senttings);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Configurações',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _createSwitch(
                  'Sem Glutén',
                  'Só exibe refeições sem glúten!',
                  senttings.isGlutenFree,
                  (value) => setState(() => senttings.isGlutenFree = value),
                ),
                _createSwitch(
                  'Sem lactose',
                  'Só exibe refeições sem lactose! ',
                  senttings.isLactoseFree,
                  (value) => setState(() => senttings.isLactoseFree = value),
                ),
                _createSwitch(
                  'Vegana',
                  'Só exibe refeições vaganas!',
                  senttings.isVegan,
                  (value) => setState(() => senttings.isVegan = value),
                ),
                _createSwitch(
                    'Vegetariana',
                    'Só exibe refeições vegetariana',
                    senttings.isVegetarian,
                    (value) => setState(() => senttings.isVegetarian = value)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
