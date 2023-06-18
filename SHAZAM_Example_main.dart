// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shazam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [
            TabBarView(
              children: [
                FirstTab(),
                SecondTab(),
                ThirdTab(),
              ],
            ),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: TabPage(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return TabPageSelector(
      color: DefaultTabController.of(context).index == 1
          ? Colors.blue[300]
          : Colors.grey[400],
      selectedColor: DefaultTabController.of(context).index == 1
          ? Colors.white
          : Colors.blue,
      indicatorSize: 8,
    );
  }
}

// 첫번째 페이지
class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const songs = [
      {
        'imageUrl':
            'https://cdnimg.melon.co.kr/cm/album/images/102/45/887/10245887_500.jpg?6d6d3b3a1ba0e38c619820f70e0098bb/melon/resize/260/quality/80/optimize',
        'title': '질풍가도',
        'artist': '하현으',
      },
      {
        'imageUrl':
            'https://cdnimg.melon.co.kr/cm2/album/images/112/37/684/11237684_20230503161229_500.jpg?80a5d641744a1d633108b9c0bd44ffc1/melon/resize/260/quality/80/optimize',
        'title': 'HYBRID',
        'artist': '하현우,최강창민',
      },
      {
        'imageUrl':
            'https://cdnimg.melon.co.kr/cm2/album/images/105/38/568/10538568_20201223163330_500.jpg?95c8a2faeaa26e0a3fe965a6726c7aeb/melon/resize/260/quality/80/optimize',
        'title': 'Higher',
        'artist': '하현우',
      },
      {
        'imageUrl':
            'https://cdnimg.melon.co.kr/cm2/album/images/103/85/262/10385262_20200206141416_500.jpg?de3cdcdb80845908583f8e228f4d63da/melon/resize/260/quality/80/optimize',
        'title': '돌덩이',
        'artist': '하현우',
      },
      {
        'imageUrl':
            'https://cdnimg.melon.co.kr/cm2/album/images/104/44/100/10444100_20200612153415_500.jpg?6373d3339b0c6378b86531f898fde818/melon/resize/260/quality/80/optimize',
        'title': '태양처럼',
        'artist': '하현우',
      },
      {
        'imageUrl':
            'https://cdnimg.melon.co.kr/cm/album/images/026/64/299/2664299_500.jpg/melon/resize/260/quality/80/optimize',
        'title': '어디에도',
        'artist': '엠씨더맥스',
      },
      {
        'imageUrl':
            'https://cdnimg.melon.co.kr/cm2/album/images/111/16/153/11116153_20221205072108_500.jpg?81d5168fe7858346f16ebd8f06d66d0d/melon/resize/260/quality/80/optimize',
        'title': '흩어지지않게',
        'artist': '엠씨더맥스',
      },
      {
        'imageUrl':
            'https://cdnimg.melon.co.kr/cm/album/images/102/38/710/10238710_500.jpg?371847088d24f17dc11964c8afb224b0/melon/resize/260/quality/80/optimize',
        'title': 'circularop.1',
        'artist': '엠씨더맥스',
      },
      {
        'imageUrl':
            'https://cdnimg.melon.co.kr/cm2/album/images/112/40/232/11240232_20230509151820_500.jpg/melon/resize/120/quality/80/optimize',
        'title': '퀸카',
        'artist': '여자아이들',
      },
      {
        'imageUrl':
            'https://cdnimg.melon.co.kr/cm2/album/images/112/11/297/11211297_20230410151046_500.jpg/melon/resize/120/quality/80/optimize',
        'title': 'l AM',
        'artist': '아이브',
      },
      {
        'imageUrl':
            'https://cdnimg.melon.co.kr/cm2/album/images/110/11/565/11011565_20220801102637_500.jpg/melon/resize/120/quality/80/optimize',
        'title': 'Hype boy',
        'artist': 'NewJeans',
      },
      {
        'imageUrl':
            'https://cdnimg.melon.co.kr/cm2/album/images/112/36/264/11236264_20230508184331_500.jpg/melon/resize/120/quality/80/optimize',
        'title': 'Spicy',
        'artist': 'aespa',
      },
      {
        'imageUrl':
            'https://cdnimg.melon.co.kr/cm2/album/images/112/34/678/11234678_20230502162327_500.jpg/melon/resize/120/quality/80/optimize',
        'title': 'UNFORGIVEN',
        'artist': '르세라핌',
      },
      {
        'imageUrl':
            'https://cdnimg.melon.co.kr/cm2/album/images/112/11/297/11211297_20230410151046_500.jpg/melon/resize/120/quality/80/optimize',
        'title': ' Kitsch',
        'artist': '아이브',
      },
    ];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Icon(Icons.settings),
                ),
                Text(
                  "라이브러리",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(null),
              ],
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ImageIcon(
                    NetworkImage("https://i.ibb.co/hxNbZ8p/shazam.png"),
                    size: 18,
                  ),
                  SizedBox(width: 12),
                  Text(
                    "Shazam",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Icon(Icons.person_rounded),
                  SizedBox(width: 8),
                  Text(
                    "아티스트",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Icon(Icons.music_note),
                  SizedBox(width: 8),
                  Text(
                    "회원님을 위한 재생목록",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(height: 16),
            Text(
              "최근 Shazam",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 5,
                ),
                itemCount: songs.length,
                itemBuilder: (context, index) {
                  var song = songs[index];
                  String imageUrl = song['imageUrl']!;
                  String title = song['title']!;
                  String artist = song['artist']!;

                  index % 2 == 0; // 왼쪽, 1이면 오른쪽

                  return Container(
                    margin: EdgeInsets.only(
                      left: 4,
                      right: 4,
                      top: 4,
                      bottom: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 1,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          child: Image.network(
                            imageUrl,
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.width *
                                0.5 *
                                5 /
                                3 *
                                0.55,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  artist,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Spacer(),
                                Image.network(
                                  "https://i.ibb.co/KG9m5QS/applemusic.png",
                                  width: 60,
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
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

// 두번째 페이지
class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue[300]!, Colors.blue[900]!],
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      DefaultTabController.of(context).animateTo(0);
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        Text(
                          "라이브러리",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      DefaultTabController.of(context).animateTo(2);
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.show_chart,
                          color: Colors.white,
                        ),
                        Text(
                          "차트",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Text(
              "Shazam하려면 탭하세요",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            Container(
              alignment: Alignment.center,
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue[300],
                shape: BoxShape.circle,
              ),
              child: Image.network(
                "https://i.ibb.co/hxNbZ8p/shazam.png",
                color: Colors.white,
                width: 130,
                height: 130,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.12),
            Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue[400],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// 세번째 페이지
class ThirdTab extends StatelessWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const chartData = {
      'korea': [
        {
          'imageUrl':
              'https://cdnimg.melon.co.kr/cm2/album/images/112/40/232/11240232_20230509151820_500.jpg/melon/resize/120/quality/80/optimize',
          'name': '퀸카',
          'artist': '여자아이들',
        },
        {
          'imageUrl':
              'https://cdnimg.melon.co.kr/cm2/album/images/112/11/297/11211297_20230410151046_500.jpg/melon/resize/120/quality/80/optimize',
          'name': 'l AM',
          'artist': '아이브',
        },
        {
          'imageUrl':
              'https://cdnimg.melon.co.kr/cm2/album/images/112/36/264/11236264_20230508184331_500.jpg/melon/resize/120/quality/80/optimize',
          'name': 'Spicy',
          'artist': 'aespa',
        },
      ],
      'global': [
        {
          'imageUrl':
              'https://cdnimg.melon.co.kr/cm/album/images/023/36/926/2336926_500.jpg/melon/resize/120/quality/80/optimize',
          'name': 'Dangerously',
          'artist': 'Charlie Puth',
        },
        {
          'imageUrl':
              'https://cdnimg.melon.co.kr/cm2/album/images/108/44/485/10844485_20221006154824_500.jpg/melon/resize/120/quality/80/optimize',
          'name': 'Thats Hilarious',
          'artist': 'Charlie Puth',
        },
        {
          'imageUrl':
              'https://cdnimg.melon.co.kr/cm2/album/images/108/44/485/10844485_20221006154824_500.jpg/melon/resize/120/quality/80/optimize',
          'name': 'I Dont Think That I Like Her',
          'artist': 'Charlie Puth',
        },
      ],
      'ballade': [
        {
          'imageUrl':
              'https://cdnimg.melon.co.kr/cm2/album/images/112/27/533/11227533_20230419162238_500.jpg/melon/resize/120/quality/80/optimize',
          'name': '헤어지자 말해요',
          'artist': '박재정',
        },
        {
          'imageUrl':
              'https://cdnimg.melon.co.kr/cm2/album/images/112/33/031/11233031_20230427140957_500.jpg/melon/resize/120/quality/80/optimize',
          'name': '물론',
          'artist': '허각',
        },
        {
          'imageUrl':
              'https://cdnimg.melon.co.kr/cm2/album/images/112/15/072/11215072_20230331123824_500.jpg/melon/resize/120/quality/80/optimize',
          'name': '사랑하지 않아서 그랬어',
          'artist': '임한별',
        },
      ],
    };

    return SafeArea(
      child: Column(
        children: [
          Text(
            '차트',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 180,
                      color: Colors.blue[900],
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            child: Text(
                              "국가 및 도시별 차트",
                              style: TextStyle(
                                color: Colors.purple[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "전 세계",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 8,
                  color: Colors.grey[400],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            '대한민국 차트',
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            '모두 보기',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ...chartData['korea']!.map((song) {
                          // 스프레드 연산자: 리스트 등의 이터러블 안에 있는 요소를 분해한다.
                          String imageUrl = song['imageUrl']!;
                          String name = song['name']!;
                          String artist = song['artist']!;

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  imageUrl,
                                  width:
                                      MediaQuery.of(context).size.width * 0.29,
                                ),
                                Text(
                                  name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(artist),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 8,
                  color: Colors.grey[400],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            '글로벌 차트',
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            '모두 보기',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ...chartData['global']!.map((song) {
                          String imageUrl = song['imageUrl']!;
                          String name = song['name']!;
                          String artist = song['artist']!;

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  imageUrl,
                                  width:
                                      MediaQuery.of(context).size.width * 0.29,
                                ),
                                Text(
                                  name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(artist),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 8,
                  color: Colors.grey[400],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            '발라드 차트',
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            '모두 보기',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ...chartData['ballade']!.map((song) {
                          String imageUrl = song['imageUrl']!;
                          String name = song['name']!;
                          String artist = song['artist']!;

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  imageUrl,
                                  width:
                                      MediaQuery.of(context).size.width * 0.29,
                                ),
                                Text(
                                  name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(artist),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
