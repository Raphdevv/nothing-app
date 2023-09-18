import 'package:flutter/material.dart';
import 'package:nothing_app/utils/colors.dart';

class MyCustomSliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 50.0; // ความสูงขั้นต่ำของเฮดเดอร์

  @override
  double get maxExtent => 100.0; // ความสูงสูงสุดของเฮดเดอร์

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: AppColors.primary,
      alignment: Alignment.center,
      child: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.photo, color: AppColors.white)),
          Tab(icon: Icon(Icons.people, color: AppColors.white)),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
