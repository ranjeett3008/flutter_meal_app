import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  bool _glutenFree = false;
  bool _vegeterian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTile(String title, 
  String description, 
  bool currentValue, 
  Function updateValue)
  {
    return SwitchListTile(title: Text(title),
          value: _glutenFree,
          subtitle: Text(description),
          onChanged:updateValue,
          );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Your filters'),),
      drawer: MainDrawer(),
      body: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Adjust your meal selection...',
          style: Theme.of(context).textTheme.title,
          ),
        ),
        Expanded(child: ListView(children: <Widget>[
          
          _buildSwitchListTile('Glutein-Free', 'Included glutein free meals', _glutenFree, (newValue){
            setState(() {
              _glutenFree = newValue;
            });
          },
          ),
          _buildSwitchListTile('Lactose Free', 'Included lactose free meals', _glutenFree, (newValue){
            setState(() {
              _lactoseFree = newValue;
            });
          },
          ),
          _buildSwitchListTile('Vegeterian', 'Vegeterian meals', _vegeterian, (newValue){
            setState(() {
              _vegeterian = newValue;
            });
          },
          ),
          _buildSwitchListTile('Vegan', 'Vegan meals', _vegan, (newValue){
            setState(() {
              _vegan = newValue;
            });
          },
          ),
        ],),)
      ],),
    );
  }
}