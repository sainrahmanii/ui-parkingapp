import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkingapp/theme/app_pallete.dart';
import 'package:parkingapp/widgets/button_widget.dart';
import 'package:parkingapp/widgets/container_widget.dart';

class InProgressWidget extends StatelessWidget {
  const InProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'In Progress Parking to',
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        decoration: BoxDecoration(
          color: AppPallete.colorPrimary,
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage(
              'assets/images/bg_in_progress.png',
            ),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: AppPallete.colorPrimary.withOpacity(.4),
              blurRadius: 24,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/svgs/grid.svg',
              height: 26,
              width: 26,
            ),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sain Tower',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: AppPallete.white,
                  ),
                ),
                Text(
                  'Lot 193MB',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppPallete.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            ButtonWidget(
              text: 'Open Maps',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
