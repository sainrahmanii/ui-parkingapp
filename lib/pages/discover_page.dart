import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkingapp/theme/app_pallete.dart';
import 'package:parkingapp/widgets/category_widget.dart';
import 'package:parkingapp/widgets/hero_widget.dart';
import 'package:parkingapp/widgets/inprogress_widget.dart';
import 'package:parkingapp/widgets/more_widget.dart';
import 'package:parkingapp/widgets/nearby_parking_widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      bottomNavigationBar: bottomNavigationBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(),
            Gap(20),
            InProgressWidget(),
            Gap(20),
            NearbyParkingWidget(),
            Gap(20),
            CategoryWidget(),
            Gap(20),
            MoreWidget(),
          ],
        ),
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppPallete.white,
      selectedItemColor: AppPallete.colorPrimary,
      unselectedItemColor: AppPallete.colorGrey,
      selectedLabelStyle: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
      unselectedLabelStyle: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      showUnselectedLabels: true,
      items: [
        bottomNavigationBarItems(
          icon: 'assets/svgs/discover.svg',
          label: 'Discover',
        ),
        bottomNavigationBarItems(
          icon: 'assets/svgs/orders.svg',
          label: 'Orders',
        ),
        bottomNavigationBarItems(
          icon: 'assets/svgs/wallet.svg',
          label: 'Wallet',
        ),
        bottomNavigationBarItems(
          icon: 'assets/svgs/setting.svg',
          label: 'Setting',
        ),
      ],
    );
  }

  BottomNavigationBarItem bottomNavigationBarItems({
    required String label,
    required String icon,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        colorFilter: const ColorFilter.mode(
          AppPallete.colorGrey,
          BlendMode.srcIn,
        ),
      ),
      activeIcon: SvgPicture.asset(
        icon,
        colorFilter: const ColorFilter.mode(
          AppPallete.colorPrimary,
          BlendMode.srcIn,
        ),
      ),
      label: label,
    );
  }
}
