import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> brands = [
    {'name': 'Adidas', 'image': 'assets/images/adidas.jpg'},
    {'name': 'Nike', 'image': 'assets/images/nike.png'},
    {'name': 'Zara', 'image': 'assets/images/zara.png'},
    {'name': 'Gucci', 'image': 'assets/images/gucci.png'},

  ];

  int _expandedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              // Search Bar and Filter
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search People here...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.orange),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.orange, width: 2),
                        ),
                        prefixIcon:
                            const Icon(Icons.search, color: Colors.orange),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_alt, color: Colors.orange),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Carousel
              CarouselSlider(
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  height: 200,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: [
                  "https://picsum.photos/800/400?image=0",
                  "https://picsum.photos/800/400?image=10",
                  "https://picsum.photos/800/400?image=20"
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(i),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

              const SizedBox(height: 20),

              // Top Brand Text Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Top Brand",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.orange),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Top Brand Icons
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: brands.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 12),
                  itemBuilder: (context, index) {
                    final brand = brands[index];
                    final isExpanded = _expandedIndex == index;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _expandedIndex = isExpanded ? -1 : index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  brand['image']!,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            if (isExpanded) ...[
                              const SizedBox(width: 8),
                              Text(
                                brand['name']!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ]
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
