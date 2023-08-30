import 'package:flutter/material.dart';
import 'package:uiecommerce/core.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 64.0,
                backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/media/FpQlSUWaUAAu--J?format=jpg&name=large",
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                "Greesella Adhalia",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 2.0,
              ),
              const Text(
                "Member",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text("OTHER INFORMATION"),
              ),
              for (var item in controller.menuItems)
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(item["label"]),
                  trailing: const Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  ),
                  onTap: () => Get.to(item["view"]),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
