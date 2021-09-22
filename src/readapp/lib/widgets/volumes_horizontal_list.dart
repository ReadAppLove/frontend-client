import 'package:flutter/cupertino.dart';

class VolumesHorizontalWidget extends StatelessWidget{

  final List<int> volumes;

  VolumesHorizontalWidget(this.volumes, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("Test")
      ],
    );
  }


}