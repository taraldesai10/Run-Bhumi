import 'package:flutter/material.dart';

class SearchAllCategoryScreen extends StatefulWidget {
  const SearchAllCategoryScreen({super.key});

  @override
  State<SearchAllCategoryScreen> createState() => _SearchAllCategoryScreenState();
}

class _SearchAllCategoryScreenState extends State<SearchAllCategoryScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  final List<String> _images = [
    "assets/images/event.jpg",
    "assets/images/event.jpg",
    "assets/images/event.jpg",
  ];
  int _currentImageIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      // reverseDuration: Duration(seconds: 1),
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      reverseCurve: Curves.fastLinearToSlowEaseIn,
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _startAutoSlide();
  }

  TextEditingController txtSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          selectedCity,
          style: const TextStyle(fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: searchBox(context, txtSearch),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Text("Best Offer"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: FadeTransition(
                opacity: _animation,
                child: Container(
                  height: 155,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: mainThemeColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(
                          _images[_currentImageIndex],
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Popular",
              ),
            ),
            SizedBox(
              height: 300,
              child: popular(),
            )
          ],
        ),
      ),
    );
  }

  void _startAutoSlide() {
    Future.delayed(const Duration(seconds: 10)).then((_) {
      if (mounted) {
        setState(() {
          _currentImageIndex = (_currentImageIndex + 1) % _images.length;
        });
        _startAutoSlide();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
