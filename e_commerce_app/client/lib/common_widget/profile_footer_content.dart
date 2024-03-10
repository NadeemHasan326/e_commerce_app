import 'package:client/common_widget/material_button_of_profile.dart';
import 'package:flutter/material.dart';

class ProfileFooterContent extends StatefulWidget {
  const ProfileFooterContent({super.key});

  @override
  State<ProfileFooterContent> createState() => _ProfileFooterContentState();
}

class _ProfileFooterContentState extends State<ProfileFooterContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          CustomMaterialButton(label: "FAQs",onTap: (){},),
          CustomMaterialButton(label: "ABOUT US",onTap: (){},),
          CustomMaterialButton(label: "TERMS OF USE",onTap: (){},),
          CustomMaterialButton(label: "PRIVACY AND POLICY",onTap: (){},),
        ],

    );
  }
}