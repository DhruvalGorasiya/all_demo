import 'package:favo_list_and_page/common/theme.dart';
import 'package:favo_list_and_page/models/favorite_list_models.dart';
import 'package:favo_list_and_page/models/favorite_page_models.dart';
import 'package:favo_list_and_page/screens/favorite_list.dart';
import 'package:favo_list_and_page/screens/favorite_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return MultiProvider(
      providers: [
        // In this sample app, FavoriteListModel never changes, so a simple Provider
        // is sufficient.
        Provider(create: (context) => FavoriteListModel()),
        // FavoritePageModel is implemented as a ChangeNotifier, which calls for the use
        // of ChangeNotifierProvider. Moreover, FavoritePageModel depends
        // on FavoriteListModel, so a ProxyProvider is needed.
        ChangeNotifierProxyProvider<FavoriteListModel, FavoritePageModel>(
          create: (context) => FavoritePageModel(),
          update: (context, favoritelist, favoritepage) {
            if (favoritepage == null)
              throw ArgumentError.notNull('favoritepage');
            favoritepage.favoritelist = favoritelist;
            return favoritepage;
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Favorite Provider',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => FavoriteList(),
          '/favoritepage': (context) => FavoritePage(),
        },
      ),
    );
  }
}

