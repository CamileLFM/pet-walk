import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/bottom_navbar.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _searchController;

  final List<String> allNames = [
    'Adele Abe',
    'Adele Azouli',
    'Adele Berdon',
    'Adele Bertrand',
    'Adele Boulin',
    'Adele Colin',
    'Adele Cloth',
    'Adele Daniel',
    'Adele Dilan',
  ];

  List<String> filteredNames = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 1);
    _searchController = TextEditingController();
    filteredNames = List.from(allNames);

    _searchController.addListener(() {
      final query = _searchController.text.toLowerCase();
      setState(() {
        filteredNames =
            allNames
                .where((name) => name.toLowerCase().contains(query))
                .toList();
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  Widget _buildList() {
    return ListView.builder(
      itemCount: filteredNames.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: const Color(0xFFB3DAFF),
            radius: 12,
          ),
          title: Text(filteredNames[index]),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Community',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
            ),
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFF0F0F0),
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.search, color: Colors.grey),
                  hintText: 'Adele',
                  border: InputBorder.none,
                ),
              ),
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: const Color(0xFF87BFFF),
              labelColor: const Color(0xFF87BFFF),
              unselectedLabelColor: Colors.black,
              tabs: const [
                Tab(text: 'Posts'),
                Tab(text: 'Accounts'),
                Tab(text: 'Places'),
              ],
            ),
            const SizedBox(height: 8),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  const Center(child: Text('Posts')),
                  _buildList(),
                  const Center(child: Text('Places')),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
