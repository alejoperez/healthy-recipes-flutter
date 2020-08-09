import 'package:flutter/material.dart';
import 'package:recipes/domain/model/recipe.dart';
import 'package:recipes/presentation/base/app/strings.dart';

class RecipeNutritionWidget extends StatelessWidget {
  final Recipe recipe;

  const RecipeNutritionWidget({Key key, this.recipe}) : super(key: key);
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: DataTable(
            columns: [
              DataColumn(
                  label: Text(Strings.nutritionInfoTitle,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .apply(color: Theme.of(context).primaryColor)))
            ],
            rows: recipe.nutrition
                .map((info) => DataRow(cells: [
                      DataCell(Text(info,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .apply(color: Colors.black)))
                    ]))
                .toList()),
      );
}
