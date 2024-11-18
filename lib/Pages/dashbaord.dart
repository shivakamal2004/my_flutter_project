import 'package:flutter/material.dart';
import '../widgets/Screens/menu_drawer.dart';
import '../widgets/Screens/voice_search_screen.dart';
import '../widgets/options.dart';
import '../widgets/places.dart';
import '../widgets/recommended.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool _isSearchVisible = false;

  void _toggleSearch() {
    setState(() {
      _isSearchVisible = !_isSearchVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var safeArea = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/background.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          SingleChildScrollView(
            child: Container(
              color: const Color(0xffECECEC),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: safeArea,
                    ),
                    SizedBox(
                      height: 60,
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MenuDrawer(),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.menu,
                              size: 30,
                            ),
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/rounak.jpg'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Hi, Alexa!',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Where Do \nyou want to go?',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: _toggleSearch,
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(Icons.search),
                              if (_isSearchVisible)
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    child: const SearchBar(),
                                  ),
                                ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const VoiceSearchScreen(),
                                    ),
                                  );
                                },
                                child: const Icon(Icons.mic_none),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Options(icon: Icons.flight, title: 'Flight', selected: true),
                        Options(icon: Icons.train, title: 'Train', selected: false),
                        Options(icon: Icons.hotel, title: 'Hotels', selected: false),
                        Options(icon: Icons.restaurant, title: 'Restaurants', selected: false),
                        Options(icon: Icons.spa, title: 'Spa', selected: false),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text('Recommended'),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          Recommended(
                            url: 'assets/image1.jpg',
                            place: 'Kathmandu',
                            latitude: 27.7172,
                            longitude: 85.3240,
                          ),
                          Recommended(
                            url: 'assets/image2.jpg',
                            place: 'Ilam',
                            latitude: 26.8985,
                            longitude: 88.1856,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text('Popular Places'),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: const [
                        Places(
                            url: 'assets/pokhara.jpg',
                            place: 'Pokhara',
                            description: 'Pokhara is a city on Phewa Lake, in central Nepal. It’s known as a gateway to the Annapurna Circuit, a popular trail in the Himalayas. Tal Barahi Temple, a 2-story pagoda, sits on an island in the lake. On the eastern shore, the Lakeside district has yoga centers and restaurants.',
                            rating: '4.8'),
                        Places(
                            url: 'assets/dharan.jpg',
                            place: 'Dharan',
                            description: 'Dharan is a sub-metropolitan city in the Sunsari District of Province No. 1, Nepal, which was established as a fourth municipality in the Kingdom.',
                            rating: '4.6')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
