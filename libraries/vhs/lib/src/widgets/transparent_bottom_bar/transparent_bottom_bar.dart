import 'package:flutter/material.dart';

class TransparentBottomBarWidget extends StatefulWidget {
  final void Function(int selectedIndex) onChange;
  const TransparentBottomBarWidget({
    super.key,
    required this.onChange,
  });

  @override
  State<TransparentBottomBarWidget> createState() =>
      _TransparentBottomBarWidgetState();
}

class _TransparentBottomBarWidgetState
    extends State<TransparentBottomBarWidget> {
  int selectedIndex = 0;

  void changeIndex(int index) {
    widget.onChange(index);
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
            Colors.black,
            Colors.transparent,
          ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _TransparentBottomItem(
            onTap: () {
              changeIndex(0);
            },
            icon: Icons.home,
            isSelected: selectedIndex == 0,
          ),
          _TransparentBottomItem(
            onTap: () {
              changeIndex(1);
            },
            icon: Icons.search,
            isSelected: selectedIndex == 1,
          ),
          _TransparentBottomItem(
            onTap: () {
              changeIndex(2);
            },
            icon: Icons.favorite,
            isSelected: selectedIndex == 2,
          ),
          _TransparentBottomItem(
            onTap: () {
              changeIndex(3);
            },
            icon: Icons.settings,
            isSelected: selectedIndex == 3,
          ),
        ],
      ),
    );
  }
}

class _TransparentBottomItem extends StatefulWidget {
  final VoidCallback onTap;
  final IconData icon;
  final bool isSelected;
  const _TransparentBottomItem(
      {required this.onTap, required this.icon, this.isSelected = false});

  @override
  State<_TransparentBottomItem> createState() => __TransparentBottomItemState();
}

class __TransparentBottomItemState extends State<_TransparentBottomItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      //type: MaterialType.transparency,
      color: widget.isSelected ? const Color(0xff68FF9C) : Colors.transparent,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: widget.isSelected ? null : widget.onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Icon(
            widget.icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
