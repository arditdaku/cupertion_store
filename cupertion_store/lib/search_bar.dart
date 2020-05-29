import 'package:cupertionstore/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'styles.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;

  SearchBar({this.controller, this.focusNode});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Styles.searchBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: kSearchPadding,
        child: Row(
          children: <Widget>[
            kSearchIcon,
            Expanded(
              child: kCupertionTextField(
                  controller: controller, focusNode: focusNode),
            ),
            GestureDetector(
              onTap: controller.clear,
              child: kGestureIcon,
            ),
          ],
        ),
      ),
    );
  }
}
