import 'package:client/common_widget/profile_footer_content.dart';
import 'package:client/common_widget/profile_item.dart';
import 'package:client/constants/color_constant.dart';
import 'package:client/constants/image_constant.dart';
import 'package:flutter/material.dart';

class ProfileWithOutLogin extends StatefulWidget {
  const ProfileWithOutLogin({super.key});

  @override
  State<ProfileWithOutLogin> createState() => _ProfileWithOutLoginState();
}

class _ProfileWithOutLoginState extends State<ProfileWithOutLogin> {
  final topContainerWidth = 190;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackGroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: topContainerWidth * 0.58,
              color: AppColor.dummyBackGroundColor,
            ),
            Container(
              height: topContainerWidth * 0.42,
              color: AppColor.whiteColor,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                color: AppColor.whiteColor,
                child: const Column(
                  children: [
                    ProfileItem(
                      title: "Orders",
                      subTitle: "Check your order status",
                      imageUrl: ImageConstant.order,
                      hasDivider: true,
                    ),
                    ProfileItem(
                      title: "Help Center",
                      subTitle: "Help regarding your recent purchase",
                      imageUrl: ImageConstant.helpIcon,
                      hasDivider: true,
                    ),
                    ProfileItem(
                      title: "Whishlist",
                      subTitle: "Your most loved items",
                      imageUrl: ImageConstant.wishlist,
                      hasDivider: false,
                    ),
                  ],
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: AppColor.whiteColor,
              child: const Column(
                children: [
                  ProfileItem(
                    title: "Scan for coupon",
                    imageUrl: ImageConstant.qrCode,
                    hasDivider: true,
                  ),
                  ProfileItem(
                    title: "Refer & Earn",
                    imageUrl: ImageConstant.referFreind,
                    hasDivider: false,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const ProfileFooterContent(),
          ],
        ),
      ),
    );
  }
}
