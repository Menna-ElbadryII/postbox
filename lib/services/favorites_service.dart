import 'package:hive_flutter/hive_flutter.dart';
import '../models/post_model.dart';

class FavoritesService {
  final Box<Post> _box = Hive.box<Post>('favoritesBox');

  Future<void> toggleFavorite(Post post) async {
    if (_box.containsKey(post.id)) {
      await _box.delete(post.id);
    } else {
     
      final copy = Post(
        id: post.id,
        title: post.title,
        body: post.body,
        userId: post.userId,
      );
      await _box.put(post.id, copy);
    }
  }

  bool isFavorite(int id) {
    return _box.containsKey(id);
  }

  List<Post> getFavorites() {
    return _box.values.toList();
  }
}