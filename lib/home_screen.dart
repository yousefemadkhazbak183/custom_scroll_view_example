import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Custom Scroll View'),
            centerTitle: true,
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Text(
              'View item in ListView',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Text('Item $index');
            }, childCount: 100),
          ),
          SliverToBoxAdapter(
            child: Text(
              'View item in GridView',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: EdgeInsets.all(16),
                child: Container(height: 100, color: Colors.blue),
              );
            }, childCount: 50),
            gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
            )),
          ),
        ],
      ),
    );
  }
}
