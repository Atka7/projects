import 'package:rauble/models/categorypart.dart';
import 'category.dart';
import 'dart:ui';

class SubCategory extends Category {

  List<CategoryPart>? parts;

  SubCategory({
    this.parts,
    String? name,
    String? icon,
    Color? color,
    String? imgName
  }): super(
      name: name,
      icon: icon,
      color: color,
      imgName: imgName
  );
}