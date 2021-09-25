import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readapp/screens/search.dart';

class HeaderSearchBar extends StatelessWidget {
  const HeaderSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(500)),
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        color: const Color.fromRGBO(255, 255, 255, .9),
        child: TextFormField(
          textInputAction: TextInputAction.search,
          onFieldSubmitted: (String searchQuery) => {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SearchScreen(searchQuery: searchQuery)),
            )
          },
          decoration: const InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding:
                EdgeInsets.only(left: 15, bottom: 11, top: 15, right: 15),
            hintText: 'Cerca...',
            prefixIcon: Icon(
              Icons.search,
            ),
          ),
          style: const TextStyle(
            color: Colors.black,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
      ),
    );
  }
}
