import 'package:dash_flags/dash_flags.dart';
import 'package:flutter/material.dart';

import '../../Shared/dummy_data/dummy_data_list.dart';

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
                const SizedBox(
                  width: 50,
                )
              ],
            ),
            Text(
              'Select a Language',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).secondaryHeaderColor.withOpacity(0.54),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: languageModels.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: LanguageFlag(
                        language: languageModels[index].flagLanguage, // OR Language.fromCode('ar')
                        height: 30,
                      ),
                      title: Text(languageModels[index].countryName),
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
