import 'package:flutter/material.dart';

class LiveNowWidget extends StatelessWidget {
  const LiveNowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 2.5;
    return SizedBox(
      height: width * 1.2,
      child: ListView.separated(
        separatorBuilder: ((context, index) => const SizedBox(
              width: 16,
            )),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((context, index) => _LiveNowIemWidget(
              width: width,
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8b5tCfxqh9e6F62C9fkA6p7dR2n4DPMeCUQ&usqp=CAU',
            )),
      ),
    );
  }
}

class _LiveNowIemWidget extends StatelessWidget {
  final double width;
  final String imageUrl;
  const _LiveNowIemWidget({required this.width, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(
                imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        Positioned.fill(
            child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircleAvatar(
                    radius: 8,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Esl_Csgo',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                        color: const Color(0xff68FF9b),
                        borderRadius: BorderRadius.circular(100)),
                    child: const Text(
                      '55.6k Viewrs',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'ELS ProLeague',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    'Conter-Strike: Global Offensive',
                    maxLines: 1,
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ],
          ),
        ))
      ],
    );
  }
}
