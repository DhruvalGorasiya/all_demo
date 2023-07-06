import 'package:favo_list_and_page/models/favorite_page_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This gets the current state of FavoritePageModel and also tells Flutter
    // to rebuild this widget when FavoritePageModel notifies listeners (in other words,
    // when it changes).
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                // to call FavoritePageList widget //
                child: _FavoritePageList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// UI of FavoritePageList //
class _FavoritePageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var itemNameStyle = Theme.of(context).textTheme.headline6;
    // This gets the current state of FavoritePageModel and also tells Flutter
    // to rebuild this widget when FavoritePageModel notifies listeners (in other words,
    // when it changes).
    var favoritepage = context.watch<FavoritePageModel>();

    return ListView.builder(
      itemCount: favoritepage.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: Image.asset(favoritepage.items[index].image),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          // code to remove the favorite list //
          onPressed: () {
            favoritepage.remove(favoritepage.items[index]);
          },
        ),
        title: Text(
          favoritepage.items[index].name,
          style: itemNameStyle,
        ),
        subtitle: Text(
          favoritepage.items[index].subtitle,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }
}
