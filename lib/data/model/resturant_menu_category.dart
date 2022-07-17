import 'package:pandafood/data/model/resturant_menu_item.dart';

class ResturantMenuCategory {
  final String categoryName;
  final List<ResturantMenuItem> items;

  ResturantMenuCategory({required this.categoryName, required this.items});
}
