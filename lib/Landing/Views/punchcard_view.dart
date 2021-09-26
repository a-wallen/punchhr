import 'package:flutter/material.dart';
import 'package:punchhr/Models/models.dart';
import 'package:punchhr/Landing/Widgets/widgets.dart';

// TODO: Overlay punchcard image on the bottom of the card. Ignore clip behavior it is desired
// TODO ?? Overlay secondary color on image -> might not be desirable on non black/white logos
// TODO: Rearrange layout such that name/title and QR are in the same row -> Image in background
class PunchcardView extends StatelessWidget {
  const PunchcardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PunchCardWidget(
        punchcard: Punchcard(
          name: "Coffee Bean & Tea Leaf",
          ownerId: "e7NZEWj6X0grHFA3HnQm",
          picture:
              "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Coffee_Bean_%26_Tea_Leaf_logo.svg/1200px-Coffee_Bean_%26_Tea_Leaf_logo.svg.png",
          primaryColor: "#388E3C",
          secondaryColor: "#E8F5E9",
        ),
      ),
    );
  }
}
