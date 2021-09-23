import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readapp/screens/search.dart';

class HeaderSearchBar extends StatelessWidget {
  const HeaderSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SearchScreen()),
        )
      },
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(500)),
        child: Container(
          padding:
              const EdgeInsets.only(top: 15, right: 15, bottom: 15, left: 15),
          width: MediaQuery.of(context).size.width * .9,
          color: const Color.fromRGBO(255, 255, 255, .9),
          child: const Text(
            'Cerca...',
            style: TextStyle(color: Color.fromRGBO(150, 150, 150, 1.0)),
          ),
        ),
      ),
    );
  }
}
