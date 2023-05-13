import 'package:dash_flags/dash_flags.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
                const Text(
                  'Language',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Icon(Icons.add_location_alt_outlined),
              ],
            ),
            const Text(
              'Select a Language',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            Expanded(child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 8),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: LanguageFlag(
                        language: Language.ar, // OR Language.fromCode('ar')
                        height: 30,
                      ),
                      title: Text('Arabic'),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
