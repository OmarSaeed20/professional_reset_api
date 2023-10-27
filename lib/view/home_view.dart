import 'package:professional_reset_api/controller/user/user_state.dart';
import 'package:professional_reset_api/index.dart';
import 'package:professional_reset_api/view/create_user_view.dart';
import 'package:professional_reset_api/view/user_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SignUpPage()),
        ),
        child: const Icon(Icons.person_add_alt_1),
      ),
      body: SafeArea(
        child: BlocBuilder<UserCubit, ResultState<List<User>>>(
          bloc: sl<UserCubit>()..getAllUsers(),
          builder: (context, ResultState<List<User>> state) => state.when(
            success: (data) {
              debugPrint("${data[0].id!}");
              return ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 6),
                itemCount: data.length,
                itemBuilder: (context, i) => userCard(
                  data[i],
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserPage(id: data[i].id!),
                    ),
                  ),
                ),
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            error: (exceptions) => Center(
              child: Text(NetworkExceptions.getErrorMessage(exceptions)),
            ),
            none: () => const Center(child: Text("data")),
          )!,
        ),
      ),
    );
  }

 
}
 ListTile userCard(User user, {required VoidCallback onTap}) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        child: Text(user.name![0].toString()),
      ),
      title: Text(
        user.name!,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          // fontSize: 18,
        ),
      ),
      subtitle: Text(
        user.email!,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
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