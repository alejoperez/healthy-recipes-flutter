import 'package:flutter/material.dart';
import 'package:recipes/domain/model/recipe.dart';
import 'package:recipes/presentation/base/app/strings.dart';

class RecipeStepsWidget extends StatelessWidget {
  final Recipe recipe;

  const RecipeStepsWidget({Key key, @required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Theme.of(context).dividerColor))),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Text(Strings.stepsTitle,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .apply(color: Theme.of(context).primaryColor)),
                ),
              ),
            ),
          ),
          Wrap(
            children: recipe.steps
                .asMap()
                .entries
                .map((step) => Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Theme.of(context).dividerColor))),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColorLight,
                          child: Text('${step.key + 1}'),
                        ),
                        title: Text(step.value,
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                    ))
                .toList(),
          )
        ]),
      );
}
