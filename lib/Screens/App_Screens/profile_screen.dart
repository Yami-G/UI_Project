import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Shared/Resources/images.dart';
import '../../Shared/dummy_data/dummy_data_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              foregroundImage: AssetImage(Images.lapTop),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'John Doe',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: x.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => screens[index],
                        ),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      clipBehavior: Clip.hardEdge,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading: FaIcon(x[index].icon),
                        title: Text(x[index].title),
                        trailing: const FaIcon(Icons.arrow_forward_ios),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
