import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkingapp/models/park.dart';
import 'package:parkingapp/theme/app_pallete.dart';
import 'package:parkingapp/widgets/container_widget.dart';
import 'package:parkingapp/widgets/stats_widget.dart';

class NearbyParkingWidget extends StatelessWidget {
  const NearbyParkingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'Nearby\nParking Spots',
      actionText: 'View All',
      onActionTap: () {},
      child: SizedBox(
        height: 200,
        child: ListView.separated(
          itemCount: parks.length,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext context, int index) {
            return const Gap(10);
          },
          itemBuilder: (BuildContext context, int index) {
            return NearbyParkingItem(
              park: parks[index],
            );
          },
        ),
      ),
    );
  }
}

class NearbyParkingItem extends StatelessWidget {
  final Park park;

  const NearbyParkingItem({
    super.key,
    required this.park,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image(),
          const Gap(10),
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
              SizedBox(
                width: 170,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    StatsWidget(
                      icon: 'assets/svgs/routing.svg',
                      text: park.distance,
                    ),
                    StatsWidget(
                      icon: 'assets/svgs/dollar.svg',
                      text: park.price,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container image() {
    return Container(
      height: 100,
      width: 170,
      padding: const EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(14),
        image: DecorationImage(
          image: AssetImage(
            park.image,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: park.type != null && park.typeText != null
          ? Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: park.type == ParkType.discount
                    ? AppPallete.colorPink
                    : AppPallete.colorPrimary,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                park.typeText!.toUpperCase(),
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 10,
                  fontWeight: FontWeight.w800,
                  color: AppPallete.white,
                ),
              ),
            )
          : null,
    );
  }
}
