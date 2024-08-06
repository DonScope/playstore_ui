import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> recommended_images = [
      "assets/hayday.png",
      "assets/angrybirds.jpg",
      "assets/offline.png",
      "assets/clash.png",
    ];
    List<String> recommended_text = [
      "Hay Day",
      "Angry Birds",
      "Offline Games - No Wifi Games",
      "Clash of Clans",
    ];
    List<String> recommended_ratings = [
      "4.9",
      "4.7",
      "4.6",
      "4.3",
    ];
    List<String> game_images = [
      'assets/candycrush.png',
      'assets/royalmatch.png',
      'assets/projectmakeover.png'
    ];
    List<String> game_names = [
      'Candy Crush Saga',
      'Royal Match',
      'Project Makeover',
    ];
    List<String> game_categories = [
      'Puzzle • Match 3 • Casual • Offline',
      'Puzzle • Match 3 adventure • Casual',
      'Puzzle • Match 3 adventure • Casual',
    ];
    List<String> game_ratings = [
      '4.5',
      '4.7',
      '4.6',
    ];
    List<String> game_sizes = [
      '95 MB',
      '161 MB',
      '276 MB',
    ];

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0XFF131313),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.15,
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.7,
                            height: size.height * 0.08,
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white60,
                                  size: 25,
                                ),
                                suffixIcon: Icon(
                                  Icons.mic,
                                  color: Colors.white60,
                                  size: 25,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                hintText:
                                    "      Search apps & games           ",
                                hintStyle: TextStyle(color: Colors.white60),
                                hintMaxLines: 1,
                                filled: true,
                                fillColor: Color(0XFF282A2C),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2.0),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                                isDense: true,
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.notifications_none,
                            color: Colors.white54,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/3.jpeg"),
                            radius: 20,
                          ),
                        ],
                      ),
                      TabBar(
                        tabs: [
                          Tab(text: 'For you'),
                          Tab(text: 'Top charts'),
                          Tab(text: 'Premium'),
                          Tab(text: 'Categories'),
                        ],
                        indicatorColor: Colors.blue,
                        indicatorWeight: 3.0,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recommended for you",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_double_arrow_right_sharp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            width: size.width,
                            height: size.height * 0.22,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: size.width * 0.3,
                                        height: size.height * 0.10,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "${recommended_images[index]}"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: size.width * 0.3,
                                      child: Column(
                                        children: [
                                          Text(
                                            recommended_text[index],
                                            overflow: TextOverflow.clip,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            "${recommended_ratings[index]} ★",
                                            overflow: TextOverflow.clip,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                              separatorBuilder: (context, index) => SizedBox(
                                width: 10,
                              ),
                              itemCount: 4,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Sponsored ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "•",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                " Suggested for you",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: size.width,
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: game_names.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: Image.asset(
                                    game_images[index],
                                    fit: BoxFit.cover,
                                    width: 50,
                                    height: 50,
                                  ),
                                  title: Text(
                                    game_names[index],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        game_categories[index],
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                      Text(
                                        '${game_ratings[index]} ★ • ${game_sizes[index]}',
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Color(0xFF034A78),
          backgroundColor: Color.fromARGB(255, 27, 27, 27),
          unselectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.games),
              label: 'Games',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: 'Apps',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Books',
            ),
          ],
        ),
      ),
    );
  }
}
