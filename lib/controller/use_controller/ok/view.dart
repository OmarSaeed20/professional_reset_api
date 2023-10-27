import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:professional_reset_api/di.dart';
import 'package:professional_reset_api/view/home_view.dart';
import 'package:professional_reset_api/view/user_view.dart';

import 'index.dart';

class OkPage extends GetView<UserController> {
  const OkPage({Key? key}) : super(key: key);

  // 主视图
  /* Widget _buildView(UserController controller) {
    switch (controller.requstState.value) {
      case RequestState.success:
        return ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 6),
          itemCount: controller.users.length,
          itemBuilder: (context, i) => userCard(
            controller.users[i],
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    UserPage(id: controller.users[i].id!),
              ),
            ),
          ),
        );
      case RequestState.loading:
        return const Center(child: Text("Loading"));
      case RequestState.error:
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(CupertinoIcons.refresh_thick, size: 30),
              const SizedBox(height: 10),
              Text(controller.error.value),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => controller.getAllUsers(),
                child: const Text("Retry"),
              )
            ],
          ),
        );
    }
  } */
  Widget _buildView(UserController controller) {
    switch (controller.state.value.requstState.value) {
      case RequestState.success:
        return ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 6),
          itemCount: controller.state.value.users.length,
          itemBuilder: (context, i) => userCard(
            controller.state.value.users[i],
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    UserPage(id: controller.state.value.users[i].id!),
              ),
            ),
          ),
        );
      case RequestState.loading:
        return const Center(child: Text("Empty"));
      case RequestState.error:
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(CupertinoIcons.refresh_thick, size: 30),
              const SizedBox(height: 10),
              Text(controller.state.value.error.value),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => controller.getAllUsers(),
                child: const Text("Retry"),
              )
            ],
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ok")),
      body: SafeArea(
        child: GetX(
          init: sl<UserController>(),
          builder: (controller) => _buildView(controller),
        ),
      ),
    );
  }
}
