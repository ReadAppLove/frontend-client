import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readapp/models/volume.dart';
import 'package:readapp/screens/volume_page.dart';

class VolumeCard extends StatelessWidget{

  final Volume volume;
  final double? width;
  final double? height;

  const VolumeCard({Key? key, required this.volume, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => VolumePage(
                volume: volume,
              )),
        )
      },
      child: Container(
        width: width ?? 120,
        height: height ?? 170,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: FittedBox(
          fit: BoxFit.fill,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: CachedNetworkImage(
              imageUrl: volume.volumeInfo.thumbnailUrl,
              placeholder: (context, url) => Center(
                child: Container(
                  height: 120,
                  width: 170,
                  color: Colors.grey[300],
                  child: Center(
                    child: Text(volume.volumeInfo.title),
                  ),
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }

}