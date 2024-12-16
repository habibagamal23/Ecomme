import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableGridView<T> extends StatelessWidget {
  /// Number of items to display in the grid
  final int itemCount;

  /// Function to build each grid item
  final Widget Function(BuildContext, int) itemBuilder;

  /// Number of items per row
  final int crossAxisCount;

  /// Spacing between rows
  final double mainAxisSpacing;

  /// Spacing between columns
  final double crossAxisSpacing;

  /// Aspect ratio for each grid item
  final double childAspectRatio;

  /// Scroll direction (horizontal or vertical)
  final Axis scrollDirection;

  /// Padding around the grid
  final EdgeInsetsGeometry padding;

   ReusableGridView({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
    this.crossAxisCount = 2,
    this.mainAxisSpacing = 8.0,
    this.crossAxisSpacing = 8.0,
    this.childAspectRatio = 0.74,
    this.scrollDirection = Axis.vertical,
    this.padding = const EdgeInsets.all(5.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: scrollDirection,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
        childAspectRatio: childAspectRatio,
      ),
      padding: padding,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
