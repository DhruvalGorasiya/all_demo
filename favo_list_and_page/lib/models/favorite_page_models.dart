import 'package:favo_list_and_page/models/favorite_list_models.dart';
import 'package:flutter/foundation.dart';

class FavoritePageModel extends ChangeNotifier {
  /// The private field backing [favoritelist].
  late FavoriteListModel _favoritelist;

  /// Internal, private state of the favorite page. Stores the ids of each item.
  final List<int> _itemIds = [];

  /// The current favorite list. Used to construct items from numeric ids.
  FavoriteListModel get favoritelist => _favoritelist;

  set favoritelist(FavoriteListModel newList) {
    _favoritelist = newList;
    // Notify listeners, in case the new favorite list provides information
    // different from the previous one. For example, availability of an item
    // might have changed.
    notifyListeners();
  }

  /// List of items in the favorite page.
  List<Item> get items =>
      _itemIds.map((id) => _favoritelist.getById(id)).toList();

  /// Adds [item] to favorite page. This is the only way to modify the favorite page from outside.
  void add(Item item) {
    _itemIds.add(item.id);
    // This line tells [Model] that it should rebuild the widgets that
    // depend on it.
    notifyListeners();
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
    // Don't forget to tell dependent widgets to rebuild _every time_
    // you change the model.
    notifyListeners();
  }
}
