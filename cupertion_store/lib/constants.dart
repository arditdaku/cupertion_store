import 'package:flutter/cupertino.dart';
import 'styles.dart';

const kSliverSafeAreaMin = EdgeInsets.only(top: 8);

const kProductRowSafeAreaMin =
    EdgeInsets.only(left: 16, top: 8, bottom: 8, right: 8);

const kAddIcon = Icon(
  CupertinoIcons.plus_circled,
  semanticLabel: 'Add',
);

const kNamePricePadding = Padding(
  padding: EdgeInsets.only(top: 8),
);

const kSearchPadding = EdgeInsets.symmetric(
  horizontal: 4,
  vertical: 8,
);

const kSearchIcon = Icon(
  CupertinoIcons.search,
  color: Styles.searchIconColor,
);

kCupertionTextField(
    {@required TextEditingController controller,
    @required FocusNode focusNode}) {
  return CupertinoTextField(
    controller: controller,
    focusNode: focusNode,
    style: Styles.searchText,
    cursorColor: Styles.searchCursorColor,
  );
}

const kGestureIcon = Icon(
  CupertinoIcons.clear_thick_circled,
  color: Styles.searchIconColor,
);
