import 'package:customer_app/features/uber_trips_history_feature/domain/entities/uber_trips_history_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class UberPaymentBottomSheet extends StatefulWidget {
  final TripHistoryEntity tripHistoryEntity;

  const UberPaymentBottomSheet({required this.tripHistoryEntity, Key? key})
      : super(key: key);

  @override
  _UberPaymentBottomSheetState createState() => _UberPaymentBottomSheetState();
}

class _UberPaymentBottomSheetState extends State<UberPaymentBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Stack(children: [
                Container(
                  margin: const EdgeInsets.only(top: 48),
                  height: 330,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                ),
                const Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40.0,
                            backgroundColor: Colors.transparent,
                            child: CircleAvatar(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(''),
                              ),
                              radius: 38.0,
                              backgroundImage: AssetImage('assets/cat.jpeg'),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Salahaddin Mohammed',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )),
              ]),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  decoration: const BoxDecoration(color: Colors.orangeAccent),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RatingBar.builder(
                          initialRating: 5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 55.0, right: 55.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Pickup Time',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("10:00 PM")
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 55.0, right: 55.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delivery Time',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("10:00 PM")
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                )),
            Positioned(
                bottom: 20,
                right: 0,
                left: 75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Total",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "SAR 30:00",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Submit",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              Icon(Icons.arrow_right_alt)
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
