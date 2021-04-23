import 'package:final_furniture_app/core/init/theme/colors.dart';
import 'package:final_furniture_app/features/furniture/model/furnitureModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_furniture_app/core/init/theme/colors.dart';

class FurnitureCard extends StatefulWidget {
  final FurnitureModel model;
  FurnitureCard({Key? key, required this.model}) : super(key: key);

  @override
  _FurnitureCardState createState() => _FurnitureCardState();
}

class _FurnitureCardState extends State<FurnitureCard> {
  late FurnitureModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(model.furnitureImage!),
                        fit: BoxFit.cover),
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(8)),
                child: Stack(
                  children: [
                    Positioned(
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.favorite_border),
                      ),
                      top: 8,
                      right: 8,
                    )
                  ],
                ),
              ),
              flex: 5,
            ),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        model.furnitureName!,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "₺" + model.furniturePrice!,
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.yellow,
                          ),
                          SizedBox(width: 16),
                          Text(model.furniturePoint!),
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Center(
                      child: Text(
                        "BUY",
                        style: GoogleFonts.montserrat(color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
