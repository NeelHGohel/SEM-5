import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> brands = [
    {'name': 'Adidas', 'image': 'assets/images/adidas.jpg'},
    {'name': 'Nike', 'image': 'assets/images/nike.jpg'},
    {'name': 'Zara', 'image': 'assets/images/zara.jpg'},
    {'name': 'Gucci', 'image': 'assets/images/gucci.jpg'},
  ];

  List<Map<String, String>> products = [
    {
      'title': 'Nike Sportswear',
      'price': '\$46.00',
      'image': 'assets/images/nike.jpg',
    },
    {
      'title': 'Pullover Hoodie',
      'price': '\$36.00',
      'image': 'assets/images/zara.jpg',
    },
  ];

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const WishlistScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> brands = [
      {'name': 'Adidas', 'image': 'assets/images/adidas.jpg'},
      {'name': 'Nike', 'image': 'assets/images/nike.jpg'},
      {'name': 'Zara', 'image': 'assets/images/zara.jpg'},
      {'name': 'Gucci', 'image': 'assets/images/gucci.jpg'},
    ];

    List<Map<String, String>> products = [
      {
        'title': 'Nike Sportswear',
        'price': '\$46.00',
        'image': 'assets/images/nike.jpg',
      },
      {
        'title': 'Pullover Hoodie',
        'price': '\$36.00',
        'image': 'assets/images/zara.jpg',
      },
    ];

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // AppBar-like row
          Row(
            children: [
              const CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/images/.jpg'),
              ),
              const Spacer(),
              const Icon(Icons.notifications, color: Colors.black),
              const SizedBox(width: 16),
              const Icon(Icons.shopping_cart, color: Colors.black),
            ],
          ),
          const SizedBox(height: 20),

          // Search Bar
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search here...",
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.grey[200],
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
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

          // Discount Banner
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.orange[100],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Today Only", style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 4),
                      Text("80% OFF", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text("Super Discount"),
                      SizedBox(height: 10),
                      Text("Shop Now", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Image.asset("assets/images/zara.jpg", width: 100, fit: BoxFit.cover),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Top Brand
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Top Brand", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("See All", style: TextStyle(color: Colors.orange)),
            ],
          ),
          const SizedBox(height: 10),

          SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: brands.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final brand = brands[index];
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage(brand['image']!),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      brand['name']!,
                      style: const TextStyle(fontSize: 12, color: Colors.orange),
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 20),

          // Special For You
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Special For You", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("See All", style: TextStyle(color: Colors.orange)),
            ],
          ),
          const SizedBox(height: 10),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: products.map((product) {
                return Container(
                  width: 160,
                  margin: const EdgeInsets.only(right: 12),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          child: Image.asset(
                            product['image']!,
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(product['title']!, style: const TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(height: 4),
                              Text(product['price']!, style: const TextStyle(color: Colors.orange)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Wishlist Screen"));
  }
}

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Cart Screen"));
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Profile Screen"));
  }
}
