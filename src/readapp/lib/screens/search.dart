import 'package:flutter/cupertino.dart';
import 'package:readapp/widgets/internal_page_frame.dart';

class SearchScreen extends StatefulWidget{
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen>{
  @override
  Widget build(BuildContext context) {
    return InternalPageFrame(
        body: Text("hello")
    );
  }

}