import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? subTitle;
  final bool? hasDivider;
  const ProfileItem({super.key,this.imageUrl,this.title,this.subTitle,this.hasDivider});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(imageUrl ?? '',height: 32,width: 32,),
          title: Text(title ?? '',style: Theme.of(context).textTheme.bodyLarge,),
          subtitle: (subTitle?.isNotEmpty ?? false) ? Text(subTitle!,style: Theme.of(context).textTheme.bodySmall,) : null,
          trailing: const Icon(CupertinoIcons.chevron_forward,size: 14,),
        ),
        (hasDivider ?? false) ? const Divider() : Container()
      ],
    );
  }
}