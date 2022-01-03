import 'package:banking_app_ui/constants/app_textstyle.dart';
import 'package:banking_app_ui/data/card_data.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final CardModel card;
  const MyCard({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 180,
      width: 320,
      decoration: BoxDecoration(
        color: card.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CARD NAME",
                    style: ApptextStyle.MY_CARD_TITLE,
                  ),
                  Text(
                    card.cardHolderName,
                    style: ApptextStyle.MY_CARD_SUBTITLE,
                  )
                ],
              ),
              Text(
                card.cardNumber,
                style: ApptextStyle.MY_CARD_SUBTITLE,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EXP DATE",
                        style: ApptextStyle.MY_CARD_TITLE,
                      ),
                      Text(
                        card.expDate,
                        style: ApptextStyle.MY_CARD_SUBTITLE,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CVV NUMBER",
                        style: ApptextStyle.MY_CARD_TITLE,
                      ),
                      Text(
                        card.cvv,
                        style: ApptextStyle.MY_CARD_SUBTITLE,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                child: Image.asset("icons/mcard.png"),
              )
            ],
          )
        ],
      ),
    );
  }
}
