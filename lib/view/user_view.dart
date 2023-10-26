import 'package:professional_reset_api/index.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key, required this.id}) : super(key: key);
  final int id;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    User? users;
    return Scaffold(
     /*  body: SafeArea(
        child: BlocBuilder<UserCubit, UserState>(
          bloc: sl<UserCubit>()..getUserId(id),
          builder: (context, state) {
            if (state is GetUserId) {
              users = state.user;
              return Center(
                child: Column(
                  children: [
                    const Text("detailes"),
                    userCard(users!),
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
          },
        ),
      ), */
    );
  }

  ListTile userCard(User user) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(user.name![0].toString()),
      ),
      title: Text(
        user.name!,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        user.email!,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      trailing: Text(
        user.gender.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
    );
  }
}
