

import 'package:flutter/material.dart';

import '../Controllers/contants.dart';
// ignore: must_be_immutable
class ProfilePic extends StatelessWidget {
  ProfilePic(this.url, {this.size = 48, this.radius = 100, Key? key})
      : super(key: key);
  String url;

  final double size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    url = url.length <= 7 ? "" : url;
    bool isNotUrl = url.length <= 7;

    double imsix = size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: isNotUrl
          ? Container(
              color: kprimary1,
              width: imsix,
              height: imsix,
              child: const Icon(
                Icons.person,
                size: 20,
              ))
          : Container(
              width: imsix,
              height: imsix,
              color: Colors.grey.shade300,
              child: Image(
                image: NetworkImage(
                  url,
                ),
                alignment: Alignment.center,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
    );
  }
}

