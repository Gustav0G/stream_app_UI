import 'package:flutter/material.dart';
import 'package:vhs/vhs.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.format_align_left),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Center(
              child: Material(
                borderRadius: BorderRadius.circular(150),
                color: Colors.blue,
                child: InkWell(
                  borderRadius: BorderRadius.circular(150),
                  onTap: () {},
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        padding: const EdgeInsets.all(8),
                        child: const Icon(Icons.person),
                      ),
                      const Positioned(
                        top: 0,
                        right: -10,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff68FF9b),
                          radius: 4,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: BigTitleWidget(),
          ),
          FilterChipsWidget(
            onChange: (data) {
              print("Selected ${data.join(';')}");
            },
            filtros: const [
              "Esport",
              "channels",
              "Categories",
              "Food",
              "channels 1",
              "Categories 1",
              "Food 1",
              "channels 2",
              "Categories 2",
              "Food 2",
              "Channels 3",
              "Categories 3",
              "Food 3",
            ],
          ),
          const TitleWidget(title: 'Live Now'),
          const SizedBox(height: 16),
          const LiveNowWidget(),
          const SizedBox(height: 16),
          const TitleWidget(title: 'Popular Streamers'),
          const SizedBox(height: 16),
          const PopularStreamersWidget(),
          const SizedBox(height: 16),
          const TitleWidget(title: 'Top Categories'),
          const SizedBox(height: 16),
          const LiveNowWidget(),
          const SizedBox(height: 16)
        ],
      ),
      bottomNavigationBar: TransparentBottomBarWidget(
        onChange: ((selectedIndex) {
          print(selectedIndex);
        }),
      ),
      extendBody: true,
    );
  }
}
