import 'package:flutter/cupertino.dart';
import 'package:rauble/helpers/appcolors.dart';
import 'package:rauble/helpers/iconhelper.dart';
import 'package:rauble/models/category.dart';
import 'package:rauble/models/categorypart.dart';
import 'package:rauble/models/subcategory.dart';
import 'package:rauble/widgets/iconfont.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
          color: AppColors.DJ,
          name: "DJ-k",
          imgName: "djcategory",
          icon: IconFontHelper.DJ,
          subCategories: [
            SubCategory(
                color: AppColors.DJ,
                name: "Lennard",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Joer",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Jauri",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Kooszmilan",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ])
          ]),
      Category(
          color: AppColors.ELOADO,
          name: "Előadók",
          imgName: "eloadokcategory",
          icon: IconFontHelper.ELOADO,
          subCategories: [
            SubCategory(
                color: AppColors.DJ,
                name: "Lennard",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Joer",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Jauri",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Kooszmilan",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ])
          ]),
      Category(
          color: AppColors.KLUBOK,
          name: "Éjszakai klubok",
          imgName: "klubokcategory",
          icon: IconFontHelper.KLUBOK,
          subCategories: [
            SubCategory(
                color: AppColors.DJ,
                name: "Lennard",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Joer",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Jauri",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Kooszmilan",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ])
          ]),
      Category(
          color: AppColors.ELOADO,
          name: "Bulisorozatok",
          imgName: "djcategory",
          icon: IconFontHelper.ELOADO,
          subCategories: [
            SubCategory(
                color: AppColors.DJ,
                name: "Lennard",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Joer",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Jauri",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Kooszmilan",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ])
          ]),
      Category(
          color: AppColors.ELOADO,
          name: "Bárok",
          imgName: "djcategory",
          icon: IconFontHelper.ELOADO,
          subCategories: [
            SubCategory(
                color: AppColors.DJ,
                name: "Lennard",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Joer",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Jauri",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ]),
            SubCategory(
                color: AppColors.DJ,
                name: "Kooszmilan",
                imgName: "lennard",
                icon: IconFontHelper.DJ,
                parts: [
                  CategoryPart(
                      name: 'Retro', imgName: 'Retro', isSelected: false)
                ])
          ]),
    ];
  }
}
