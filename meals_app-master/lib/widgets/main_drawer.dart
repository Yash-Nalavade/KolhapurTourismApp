import 'package:flutter/material.dart';

import '../screens/bottom_tabs_screen.dart';
import '../screens/filters_screen.dart';
import '../screens/search_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            color: Theme.of(context).colorScheme.secondary,
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Welcome to Kolhapur !',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 23,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(height: 20),
          _buildListTile(
            icon:  Icons.location_on_outlined,
            title: 'Locations',
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(BottomTabScreen.ScreenRoute),
          ),
          /*
          _buildListTile(
            icon: Icons.filter_list,
            title: 'Filters',
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(FiltersScreen.ScreenRoute),
          ),*/
          _buildListTile(
            icon: Icons.search,
            title: 'Search',
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(SearchScreen.ScreenRoute),
          ),
        ],
      ),
    );
  }

  ListTile _buildListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }
}
