import 'package:flutter/material.dart';
import 'package:restaurant_app_yakup/CommentsPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController nestedScrollController;
  ScrollController listViewController;
  ScrollController productListViewController;

  @override
  void initState() {
    super.initState();
    nestedScrollController = ScrollController();
    listViewController = ScrollController();
    productListViewController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    nestedScrollController.dispose();
    listViewController.dispose();
    productListViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      body: CustomScrollView(
        controller: nestedScrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: orangeColor,
            title: Text(fakeProductMekanAdi,
              style: TextStyle(fontSize: 16),
            ),
            centerTitle: true,
            pinned: true,
            leading: Icon(Icons.keyboard_arrow_left, size: 35,),
            leadingWidth: 50,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsets.only(
                    top: SliverAppBar().toolbarHeight +
                        MediaQuery.of(context).padding.top),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1000)),
                        child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: orangeColor,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                            left: 8,
                                            right: 8,
                                          ),
                                      hintText: "Yemek ara",
                                        hintStyle: TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.w500)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ))),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(fakeProductImageUrl,
                                    height: getSize(context) * 90/300,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                    height: getSize(context) * 90/300,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(fakeProductMekanAdi,
                                              overflow: TextOverflow.fade,
                                              softWrap: false,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            Text("Sokak Lezzetleri",
                                              overflow: TextOverflow.fade,
                                              softWrap: false,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: getSize(context) * 40/300,
                                              height: getSize(context) * 30/300,
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.star, color: Colors.white, size: 15,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 3.0),
                                                    child: Text("4.8", style: TextStyle(color: Colors.white),),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("25-40 dk", style: TextStyle(fontSize: 12, color: Colors.grey.shade800),),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 3.0),
                                                        child: Icon(Icons.info_outline_rounded, size: 15,),
                                                      )
                                                    ],
                                                  ),
                                                  Text("Min. Tutar: 20 TL", style: TextStyle(fontSize: 12, color: Colors.grey.shade800),),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Divider(),
                          IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                RichText(
                                  text: TextSpan(
                                      text: "Servis:",
                                      style: TextStyle(color: Colors.black, fontSize: 13),
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
                                VerticalDivider(),
                                RichText(
                                  text: TextSpan(
                                      text: "Servis:",
                                      style: TextStyle(color: Colors.black, fontSize: 13),
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
                                VerticalDivider(),
                                RichText(
                                  text: TextSpan(
                                      text: "Servis:",
                                      style: TextStyle(color: Colors.black, fontSize: 13),
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
                              ],
                            ),
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.access_time_rounded, color: Colors.red,),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 3.0,
                                      right: 8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Çalışma Saatleri", style: TextStyle(fontSize: 10, color: Colors.grey.shade800),),
                                        Text("11:00-23:30", style: TextStyle(fontSize: 10, color: Colors.grey.shade800),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: getSize(context) * 15/300,
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Center(child: Text("Kapalı", style: TextStyle(color: Colors.white, fontSize: 12),),),
                                  )
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => CommentsPage(),));
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.mode_comment_outlined, color: orangeColor,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3.0),
                                      child: Text("Yorumlar (45)", style: TextStyle(color: Colors.grey.shade700),),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: CategoriesSliverDelegate(),
            pinned: true,
          ),
          SliverPersistentHeader(
            delegate: TitleSliverDelegate(),
            pinned: true,
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index){
                  return Container(
                    width: getSize(context),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                        Border.all(color: Colors.grey.shade50, width: 2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(fakeProductTitle, style: TextStyle(color: Colors.grey.shade600),),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(fakeProductDescription, style: TextStyle(color: Colors.grey.shade600),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: getSize(context) * 30 / 300,
                                  height: getSize(context) * 20 / 300,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "${fakeProductPrice} TL",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              childCount: 10
            ),
          )
        ],
      ),
    );
  }
}

class CategoriesSliverDelegate extends SliverPersistentHeaderDelegate {

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return CategoriesListView();
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class TitleSliverDelegate extends SliverPersistentHeaderDelegate {

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        top: 15,
        bottom: 15,
      ),
      child: RichText(
        text: TextSpan(
            text: "Bu Restoranın En Sevilenleri",
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                  text: " (5 ürün)",
                  style: TextStyle(color: Colors.grey))
            ]),
      ),
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}


class CategoriesListView extends StatefulWidget {
  @override
  _CategoriesListViewState createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20),
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          var item = categoriesList[index];
          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 250),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: selectedIndex == index ? orangeColor : Colors.transparent, width: 5))
              ),
              child: Center(
                  child: Text(item,
                    style: TextStyle(
                        color: selectedIndex == index ? orangeColor : Colors.grey.shade600,
                        fontWeight: FontWeight.w600),
                  )
              ),
            ),
          );
        },
      ),
    );
  }
}



double getSize(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

String fakeProductMekanAdi = "Çamlıca Kumpir (Kısıklı Mah.)";
String fakeProductTitle = "Hamburger";
String fakeProductDescription = "90 gr. burger köftesi, kıvırcık marul, domates, turşu, amerikan salatası, patates kızartması ile";
double fakeProductPrice = 17.50;
Color orangeColor = Color.fromARGB(255, 231, 108, 32);
String fakeProductImageUrl = "https://steemitimages.com/DQmP1GGYrEZ1LTMcx1RfrG4ufsVw29eoupJPiV1KJQzEDfS/ortak%C3%B6y-kumpir.jpg";

List<String> categoriesList = [
  "Bu Restoranın En Sevilenleri",
  "Tostlar",
  "Kumpirler",
  "Çorbalar",
  "Ana Yemekler",
  "Tatlılar",
  "İçecekler",
];