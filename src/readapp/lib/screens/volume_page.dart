import 'package:flutter/cupertino.dart';
import 'package:readapp/models/volume.dart';
import 'package:readapp/widgets/h2_title.dart';
import 'package:readapp/widgets/internal_page_frame.dart';
import 'package:readapp/widgets/volume_card.dart';

class VolumePage extends StatelessWidget{

  final Volume volume;

  const VolumePage({Key? key, required this.volume}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InternalPageFrame(
      title: volume.volumeInfo.title,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                VolumeCard(volume:volume),
                Column(
                  children: [
                    H2Title(title: volume.volumeInfo.title)
                  ],
                ),
                Column(
                  children: [
                    Text("...")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}