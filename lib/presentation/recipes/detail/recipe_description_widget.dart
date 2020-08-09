import 'package:flutter/material.dart';
import 'package:recipes/domain/model/recipe.dart';

class RecipeDescriptionWidget extends StatelessWidget {
  final Recipe recipe;

  const RecipeDescriptionWidget({Key key, this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(recipe.name,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .apply(color: Theme.of(context).primaryColor)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.people),
                    SizedBox(
                      width: 6,
                    ),
                    Text(recipe.servings,
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .apply(color: Colors.black))
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(
                      width: 6,
                    ),
                    Text(recipe.duration,
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .apply(color: Colors.black))
                  ],
                ),
              ],
            )
          ],
        ),
      );
}
