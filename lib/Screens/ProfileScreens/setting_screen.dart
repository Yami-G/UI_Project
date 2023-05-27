import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../Provider/themes_provider.dart';
import '../../Shared/Service/shared_storage.dart';
import '../../Widgets/title_pop.dart';

final changeSwitchNotification = StateProvider((ref) => true);
final changeSwitchThemes = StateProvider((ref) => true);

class SettingScreen extends ConsumerWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final x = ref.watch(changeSwitchNotification);
    final y = ref.watch(changeSwitchThemes);
    return Scaffold(
      body: Column(
        children: [
          const TitlePop(
            title: 'Settings',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Material(
                  elevation: 4,
                  color: Theme.of(context).primaryColor,
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(10),
                  child: ListTile(
                    title: const Text('Push Notifications'),
                    trailing: SizedBox(
                      width: 110,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('off / on'),
                          Switch(
                            value: x,
                            onChanged: (v) {
                              ref.watch(changeSwitchNotification.notifier).update((state) => !x);
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Material(
                  elevation: 4,
                  color: Theme.of(context).primaryColor,
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(10),
                  child: ListTile(
                    title: const Text('Theme'),
                    trailing: SizedBox(
                      width: 140,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Light / Dark'),
                          Switch(
                            value: SharedStorage.localStorage.containsKey('themeModeValue')
                                ? SharedStorage().getData(dataType: DataType.bool, key: 'themeModeValue')
                                : y,
                            onChanged: (value) {
                              SharedStorage().setData(dataType: DataType.bool, key: 'themeModeValue', value: value);
                              ref.watch(changeSwitchThemes.notifier).update((state) => !y);
                              value
                                  ? ref.watch(themesProvider.notifier).lightMode()
                                  : ref.watch(themesProvider.notifier).darkMode();
                              print('hi');
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Material(
                  elevation: 4,
                  color: Theme.of(context).primaryColor,
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(10),
                  child: ListTile(
                    title: const Text('Language'),
                    trailing: SizedBox(
                      width: 80,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('English'),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
