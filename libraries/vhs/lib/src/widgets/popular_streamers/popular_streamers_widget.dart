import 'package:flutter/material.dart';

class PopularStreamersWidget extends StatelessWidget {
  const PopularStreamersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 2.5;
    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemBuilder: ((context, index) => _PopularStreamersItem(
              width: width,
            )),
      ),
    );
  }
}

class _PopularStreamersItem extends StatelessWidget {
  final double width;
  const _PopularStreamersItem({required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: const Color(0xff2A2939),
          borderRadius: BorderRadius.circular(16)),
      width: width,
      height: 100,
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              const CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xff69FE96),
              ),
              const CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(
                    'https://s2.glbimg.com/sySdqgJjqYAuz3exN3vqKmOVMbE=/0x0:731x493/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2019/3/j/hUGy7XTgaQOaBpBrfeKQ/captura-de-tela-2019-03-07-as-23.11.05.png'),
              ),
              Positioned(
                right: -3,
                bottom: -3,
                child: Stack(
                  alignment: Alignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Color(0xff2A2939),
                    ),
                    Icon(
                      Icons.check_circle,
                      size: 20,
                      color: Color(0xff69FE96),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'auronplay',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '9.8m followers',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 11,
                    fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    );
  }
}
