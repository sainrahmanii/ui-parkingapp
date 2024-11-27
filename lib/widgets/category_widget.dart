import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkingapp/models/category.dart';
import 'package:parkingapp/theme/app_pallete.dart';
import 'package:parkingapp/widgets/container_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'Browse\nCategories',
      actionText: 'View All',
      onActionTap: () {},
      child: SizedBox(
        height: 110,
        child: ListView.separated(
          itemCount: categories.length,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext context, int index) {
            return const Gap(10);
          },
          itemBuilder: (BuildContext context, int index) {
            return CategoryItem(
              category: categories[index],
            );
          },
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(category.icon),
          const Gap(10),
          Text(
            category.name,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppPallete.colorTextPrimary,
            ),
          )
        ],
      ),
    );
  }
}
