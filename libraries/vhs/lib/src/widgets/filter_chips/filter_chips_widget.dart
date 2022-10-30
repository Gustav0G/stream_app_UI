import 'package:flutter/material.dart';
import 'package:vhs/src/widgets/filter_chips/filter_chips_controller.dart';

class FilterChipsWidget extends StatefulWidget {
  final List<String> filtros;
  final void Function(List<String> selectedValues) onChange;
  const FilterChipsWidget(
      {super.key, required this.filtros, required this.onChange});

  @override
  State<FilterChipsWidget> createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChipsWidget> {
  late final List<String> _filter;
  final controller = FilterChipsController();

  @override
  void initState() {
    super.initState();
    _filter = [FilterChipsController.all, ...widget.filtros];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ValueListenableBuilder<List<String>>(
        valueListenable: controller,
        builder: (context, value, child) => ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: _filter.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 12),
            child: VhsSelectableChip(
              selectedColor: const Color(0xFF69FF9B),
              backgroundColor: const Color(0xff2A2939),
              label: _filter[index],
              selected: value.contains(_filter[index]),
              onSelected: (value) {
                controller.add(value);
                widget.onChange(controller.value);
              },
            ),
          ),
        ),
      ),
    );
  }
}

class VhsSelectableChip extends StatelessWidget {
  final Color selectedColor;
  final Color backgroundColor;
  final String label;
  final bool selected;
  final void Function(String value) onSelected;
  const VhsSelectableChip(
      {super.key,
      required this.selectedColor,
      required this.backgroundColor,
      required this.label,
      required this.selected,
      required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(100),
        color: selected ? selectedColor : backgroundColor,
        child: InkWell(
          onTap: () {
            onSelected(label);
          },
          borderRadius: BorderRadius.circular(100),
          child: Container(
            padding: const EdgeInsets.only(
              left: 12,
              right: 14,
              top: 6,
              bottom: 6,
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Row(
              children: [
                if (selected)
                  const Icon(
                    Icons.check,
                    size: 16,
                  ),
                Text(
                  label,
                  style: TextStyle(
                      color: selected ? backgroundColor : Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
