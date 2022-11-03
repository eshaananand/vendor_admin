import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vendor_admin/views/widgets/custom_tile.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomTile(
        imagePath: "assets/red_custom_tile.png",
        onTap: () {},
        title: "200",
        subtitle: "Total Orders",
        footerColor: HexColor("F32D2D"),
      ),
    );
  }
}
