import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/Common/Share_Pref.dart';
import 'package:insta/Screen/Search/search_controller.dart';
import 'package:sizer/sizer.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final SearchController controller = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: 96.h,
          width: 100.w,
          child: Column(
            children: [
              SizedBox(height: 1.5.h),
              SizedBox(
                height: 8.h,
                child: TextField(
                  controller: controller.searchController,
                  decoration: InputDecoration(
                    hintText: 'Search for a user...',
                    fillColor: Colors.black12,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.w),
                      ),
                    ),
                  ),
                  onSubmitted: (value) {
                    setState(() {});
                  },
                ),
              ),
              const Spacer(),
              SingleChildScrollView(
                child: SizedBox(
                  height: 85.7.h,
                  child: FutureBuilder(
                    future: FirebaseFirestore.instance
                        .collection('Users')
                        .where(
                          'username',
                          isGreaterThanOrEqualTo:
                              controller.searchController.text,
                          isNotEqualTo: AppSharedPreference.userName,
                        )
                        .get(),
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                            snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.w),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      radius: 15.w,
                                      child: Image.network(
                                        snapshot.data?.docs[index]
                                            ['profileURl'],
                                      ),
                                    ),
                                    title: Text(
                                        snapshot.data?.docs[index]['username']),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
