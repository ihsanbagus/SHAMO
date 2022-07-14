import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/product_card.dart';
import 'package:shamo/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.fromLTRB(
          defaultMargin,
          defaultMargin,
          defaultMargin,
          0,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, Alex',
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '@alexkeinn',
                    style: subtitleTextStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/image_profile.png'),
                  )),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: defaultMargin),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text(
                  'All Shoes',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparantColor,
                  border: Border.all(color: subtitleColor),
                ),
                child: Text(
                  'Running',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    color: subtitleColor,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparantColor,
                  border: Border.all(color: subtitleColor),
                ),
                child: Text(
                  'Training',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    color: subtitleColor,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparantColor,
                  border: Border.all(color: subtitleColor),
                ),
                child: Text(
                  'Basket Ball',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    color: subtitleColor,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparantColor,
                  border: Border.all(color: subtitleColor),
                ),
                child: Text(
                  'Hiking',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    color: subtitleColor,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProductTitle() {
      return Container(
        margin: EdgeInsets.fromLTRB(
          defaultMargin,
          defaultMargin,
          defaultMargin,
          0,
        ),
        child: Text(
          'Popular Products',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: defaultMargin),
              Row(
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.fromLTRB(
          defaultMargin,
          defaultMargin,
          defaultMargin,
          0,
        ),
        child: Text(
          'New Arrivals',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: Column(
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductTitle(),
        popularProducts(),
        newArrivalsTitle(),
        newArrivals(),
      ],
    );
  }
}
