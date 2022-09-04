import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rauble/helpers/utils.dart';
import 'package:rauble/models/category.dart';
import 'package:rauble/pages/selectedcategorypage.dart';
import 'package:rauble/widgets/categorybottombar.dart';
import 'package:rauble/widgets/categorycard.dart';
import 'package:rauble/widgets/mainappbar.dart';
import 'selectedcategorypage.dart';


class CategoryListPage extends StatelessWidget {

  List<Category>? categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: MainAppBar(),
      body: Container(
          child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'Válaszd ki a kategóriát!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 200),
                itemCount: categories!.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return CategoryCard(
                      category: categories![index],
                    onCardClick: () {
                        // ÁTÍRÁNYÍT EGY MÁSIK OLDALRA
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedCategoryPage(selectedCategory: this.categories![index])
                      )
                      );
                    },
                  );
                },
              ))
            ],
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: CategoryBottomBar())
        ],
      )),
    );
  }
}
