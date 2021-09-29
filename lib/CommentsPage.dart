import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant_app_yakup/HomePage.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class CommentsPage extends StatefulWidget {
  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  double service = 0;
  double delicius = 0;
  double speed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: Text("Yorumlar"),
        centerTitle: true,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.keyboard_arrow_left)),
        elevation: 0,
      ),
      body: Container(
        width: getSize(context),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: getSize(context) * 45/300,
                    color: orangeColor,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: getSize(context),
                    height: getSize(context) * 90/300,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 5)]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(fakeProductMekanAdi, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.white, size: 20,),
                                  Text("4.8", style: TextStyle(color: Colors.white, fontSize: 20),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Servis:", style: TextStyle(fontWeight: FontWeight.w700),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: SmoothStarRating(
                                          onRated: (rating) {
                                            setState(() {
                                              service = rating;
                                            });
                                          },
                                          size: 20,
                                          allowHalfRating: false,
                                          borderColor: orangeColor,
                                          rating: service,
                                          color: orangeColor,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Text("4.9", style: TextStyle(color: orangeColor, fontWeight: FontWeight.w600),),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Servis:", style: TextStyle(fontWeight: FontWeight.w700),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: SmoothStarRating(
                                          onRated: (rating) {
                                            setState(() {
                                              delicius = rating;
                                            });
                                          },
                                          size: 20,
                                          allowHalfRating: false,
                                          borderColor: orangeColor,
                                          rating: delicius,
                                          color: orangeColor,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Text("4.9", style: TextStyle(color: orangeColor, fontWeight: FontWeight.w600),),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Servis:", style: TextStyle(fontWeight: FontWeight.w700),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: SmoothStarRating(
                                          onRated: (rating) {
                                            setState(() {
                                              speed = rating;
                                            });
                                          },
                                          size: 20,
                                          allowHalfRating: false,
                                          borderColor: orangeColor,
                                          rating: speed,
                                          color: orangeColor,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Text("4.9", style: TextStyle(color: orangeColor, fontWeight: FontWeight.w600),),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(height: 40,),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                separatorBuilder: (context, index) => Divider(),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade400,
                            child: FaIcon(FontAwesomeIcons.user, color: Colors.white,),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          text: "Lezzet:",
                                          style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w700),
                                          children: [
                                            TextSpan(
                                                text: " 4.9",
                                                style: TextStyle(
                                                    color: orangeColor,
                                                    fontWeight: FontWeight.w600
                                                )
                                            )
                                          ]
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: "Servis:",
                                            style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w700),
                                            children: [
                                              TextSpan(
                                                  text: " 4.9",
                                                  style: TextStyle(
                                                      color: orangeColor,
                                                      fontWeight: FontWeight.w600
                                                  )
                                              )
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Text("Bugün", style: TextStyle(color: Colors.grey),),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16.0,
                                bottom: 8.0,
                              ),
                              child: Text(loremIpsum),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

String loremIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris";