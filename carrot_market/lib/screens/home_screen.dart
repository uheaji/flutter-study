import 'package:carrot_market/constants.dart';
import 'package:carrot_market/screens/home/components/floating_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> datas = [];
  late int _currentPageIndex;

  @override
  void initState() {
    super.initState();
    datas = [
      {
        "image": "images/images_1.jpg",
        "title": "파란색 장갑",
        "location": "부산광역시 가야동",
        "price": "30000",
        "likes": "2"
      },
      {
        "image": "images/images_2.jpg",
        "title": "LA갈비 5kg팔아요~",
        "location": "부산광역시 가야동",
        "price": "100000",
        "likes": "5"
      },
      {
        "image": "images/images_1.jpg",
        "title": "치약팝니다",
        "location": "부산광역시 가야동",
        "price": "5000",
        "likes": "0"
      },
      {
        "image": "images/images_2.jpg",
        "title": "[풀박스]맥북프로16인치 터치바 스페이스그레이",
        "location": "부산광역시 가야동",
        "price": "2500000",
        "likes": "6"
      },
      {
        "image": "images/images_1.jpg",
        "title": "디월트존기임팩",
        "location": "부산광역시 가야동",
        "price": "150000",
        "likes": "2"
      },
      {
        "image": "images/images_2.jpg",
        "title": "갤럭시s10",
        "location": "부산광역시 가야동",
        "price": "180000",
        "likes": "2"
      },
      {
        "image": "images/images_1.jpg",
        "title": "선반",
        "location": "부산광역시 가야동",
        "price": "15000",
        "likes": "2"
      },
      {
        "image": "images/images_2.jpg",
        "title": "냉장 쇼케이스",
        "location": "부산광역시 가야동",
        "price": "80000",
        "likes": "3"
      },
      {
        "image": "images/images_1.jpg",
        "title": "대우 미니냉장고",
        "location": "부산광역시 가야동",
        "price": "30000",
        "likes": "3"
      },
      {
        "image": "images/images_2.jpg",
        "title": "멜킨스 풀업 턱걸이 판매합니다.",
        "location": "부산광역시 가야동",
        "price": "50000",
        "likes": "7"
      },
    ];
    _currentPageIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // number format change
    final oCcy = new NumberFormat("#,###", "ko_KR");
    String calcStringtowon(String priceString) {
      return "${oCcy.format(int.parse(priceString))}원";
    }

    return Scaffold(
      // appBar: homeAppBar(),
      body: objectList(size, calcStringtowon),
      bottomNavigationBar: bottomNavBar(),
      floatingActionButton: FloatingBtn(),
    );
  }

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      onTap: (value) {
        setState(() {
          _currentPageIndex = value;
        });
      },
      currentIndex: _currentPageIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kPrimaryColor,
      selectedFontSize: 11,
      unselectedFontSize: 11,
      items: [
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.home,
            size: 18,
          ),
          label: "홈",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.newspaper,
            size: 18,
          ),
          label: "동네생활",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.mapMarkerAlt,
            size: 18,
          ),
          label: "내 근처",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.comments,
            size: 18,
          ),
          label: "채팅",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.user,
            size: 18,
          ),
          label: "나의 당근",
        ),
      ],
    );
  }

  Widget objectList(Size size, String calcStringtowon(String priceString)) {
    switch (_currentPageIndex) {
      case 0:
        return ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 10),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    child: Image.asset(
                      datas[index]['image'].toString(),
                      width: size.width * 0.25,
                      height: size.height * 0.15,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: size.height * 0.15,
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            datas[index]['title'].toString(),
                            overflow: TextOverflow.ellipsis, // 긴 글 ... 처리
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 5),
                          Text(
                            datas[index]['location'].toString(),
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            calcStringtowon(datas[index]['price'].toString()),
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                FaIcon(FontAwesomeIcons.heart, size: 15),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(datas[index]['likes'].toString()),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Container(
              height: 1,
              color: Colors.black.withOpacity(0.2),
            );
          },
          itemCount: datas.length,
        );
        break;
      case 1:
        return Container();
        break;
      case 2:
        return Container();
        break;
      case 3:
        return Container();
        break;
      case 4:
        return Container();
        break;
      default:
    }
    return Container();
  }
}
