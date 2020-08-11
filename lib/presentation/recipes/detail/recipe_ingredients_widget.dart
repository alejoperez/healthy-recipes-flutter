import 'package:flutter/material.dart';
import 'package:recipes/domain/model/recipe.dart';
import 'package:recipes/presentation/base/app/strings.dart';

class RecipeIngredientsWidget extends StatelessWidget {
  final Recipe recipe;

  const RecipeIngredientsWidget({Key key, @required this.recipe})
      : super(key: key);
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: DataTable(
            columns: [
              DataColumn(
                  label: Text(Strings.ingredientsTitle,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .apply(color: Theme.of(context).primaryColor)))
            ],
            rows: recipe.ingredients
                .map((ingredient) => DataRow(cells: [
                      DataCell(Text(ingredient,
                          style: Theme.of(context).textTheme.bodyText1))
                    ]))
                .toList()),
      );
}
