import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:podcasic_app/constant/constant.dart';

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({super.key});

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  List<Widget>? carouselList;
  late bool blur = true;
  @override
  void initState() {
    super.initState();
    setState(() {
      carouselList = [
        carouselItem(blur),
        carouselItem(false),
        carouselItem(blur),
      ];
    });
  }

  changeActiveImageText(int index) {
    setState(() {
      blur = false;
      carouselList?[index] = carouselItem(blur);
      if (index - 1 > 0) {
        carouselList?[index - 1] = carouselItem(true);
      }
      if (index + 1 < carouselList!.length) {
        carouselList?[index + 1] = carouselItem(true);
      }
      if (index + 2 < carouselList!.length) {
        carouselList?[index + 2] = carouselItem(true);
      }
      if (index - index >= 0 && index - index != index) {
        carouselList?[index - index] = carouselItem(true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 5,
      ),
      child: SizedBox(
        height: 250,
        width: MediaQuery.of(context).size.width,
        child: CarouselSlider(
          options: CarouselOptions(
              autoPlayCurve: Curves.fastOutSlowIn,
              onPageChanged: ((index, reason) => changeActiveImageText(index)),
              initialPage: 1,
              aspectRatio: 1.0,
              enlargeCenterPage: true,
              viewportFraction: 0.5,
              autoPlay: true,
              scrollDirection: Axis.horizontal),
          items: carouselList!,
        ),
      ),
    );
  }

  Widget carouselItem(bool blur) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          foregroundDecoration: blur
              ? BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14)),
                  color: secondaryBlackColor,
                  backgroundBlendMode: BlendMode.multiply)
              : null,
          constraints: const BoxConstraints(
              minHeight: 70, minWidth: 80, maxHeight: 146, maxWidth: 196),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14), topRight: Radius.circular(14)),
            image: DecorationImage(
                image: AssetImage('assets/img/nycSlider.png'),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          foregroundDecoration: blur
              ? BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14)),
                  color: secondaryBlackColor,
                  backgroundBlendMode: BlendMode.multiply)
              : null,
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints(
              minHeight: 60, minWidth: 196, maxHeight: 65, maxWidth: 196),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14)),
            color: secondaryBlackColor,
            backgroundBlendMode: BlendMode.darken,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Nigth at NYC',
                    style: TextStyle(color: primaryPurpleColor),
                  ),
                  Text(
                    '4 days ago | 8 min',
                    style: TextStyle(color: secondaryWhiteColor),
                  )
                ],
              ),
              IconButton(
                  iconSize: 40,
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    color: primaryPurpleColor,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
