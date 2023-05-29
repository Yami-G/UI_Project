import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Provider/fake_api_provider.dart';
import '../../Shared/dummy_data/dummy_data_list.dart';
import '../../Widgets/search_widget.dart';

class CategoriesScreen extends ConsumerWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(fakeAPIProvider.notifier).getCategoryList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SearchWidget(
                width: double.infinity.w,
                searchWord: 'Search Category',
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: categoryModels.length,
                padding: EdgeInsets.only(top: 10.h, left: 5.w, right: 5.w),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.w,
                  crossAxisSpacing: 10.h,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          categoryModels[index].imagePath,
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        Container(
                          color: Theme.of(context).secondaryHeaderColor.withOpacity(0.12),
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        Positioned(
                          left: 15.w,
                          top: 20.h,
                          child: Text(
                            categoryModels[index].name,
                            style: TextStyle(
                              color: Theme.of(context).primaryColor.withOpacity(0.8),
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
