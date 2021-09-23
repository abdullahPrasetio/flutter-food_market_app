part of 'widgets.dart';

class ListMenuAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListMenuItem(
          label: "Edit Profile",
          onTap: () {},
        ),
        ListMenuItem(
          label: "Home Address",
          onTap: () {},
        ),
        ListMenuItem(
          label: "Security",
          onTap: () {},
        ),
        ListMenuItem(
          label: "Payments",
          onTap: () {},
        ),
        ListMenuItem(
          label: "Sign Out",
          onTap: () {},
        ),
      ],
    );
  }
}
