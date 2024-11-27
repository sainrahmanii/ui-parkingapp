import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:parkingapp/models/park.dart';
import 'package:parkingapp/theme/app_pallete.dart';
import 'package:parkingapp/widgets/container_widget.dart';
import 'package:parkingapp/widgets/stats_widget.dart';

class MoreWidget extends StatelessWidget {
  const MoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'Fresh Lots\nMore Discounts',
      actionText: 'View All',
      onActionTap: () {},
      child: ListView.separated(
        itemCount: freshLot.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 24,
        ),
        scrollDirection: Axis.vertical,
        separatorBuilder: (BuildContext context, int index) {
          return const Gap(10);
        },
        itemBuilder: (BuildContext context, int index) {
          return MoreItem(
            park: freshLot[index],
          );
        },
      ),
    );
  }
}

class MoreItem extends StatelessWidget {
  final Park park;

  const MoreItem({
    super.key,
    required this.park,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 18,
      ),
      decoration: BoxDecoration(
        color: AppPallete.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 76,
            decoration: BoxDecoration(
              color: AppPallete.colorGrey,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(park.image),
              ),
            ),
          ),
          const Gap(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                park.title,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppPallete.colorTextPrimary,
                ),
              ),
              const Gap(8),
              Row(
                children: [
                  StatsWidget(
                    icon: 'assets/svgs/routing.svg',
                    text: park.distance,
                  ),
                  const Gap(12),
                  StatsWidget(
                    icon: 'assets/svgs/dollar.svg',
                    text: park.price,
                  ),
                ],
              ),
              const Gap(8),
              Row(
                children: [
                  RatingStars(
                    valueLabelVisibility: false,
                    starSize: 18,
                    starSpacing: 2,
                    value: park.ratingStar ?? 0,
                    starColor: AppPallete.colorStar,
                    starOffColor: AppPallete.colorDisabledStar,
                    starBuilder: (index, color) {
                      return SvgPicture.asset(
                        'assets/svgs/star.svg',
                        colorFilter: ColorFilter.mode(color!, BlendMode.srcIn),
                      );
                    },
                  ),
                  const Gap(2),
                  Text(
                    NumberFormat('#,###').format(park.ratingCount ?? 0),
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppPallete.colorTextPrimary,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
