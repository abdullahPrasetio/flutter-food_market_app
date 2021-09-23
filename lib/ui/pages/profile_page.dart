part of "pages.dart";

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 232,
          color: Colors.white,
          margin: EdgeInsets.only(bottom: defaultMargin),
          child: Column(
            children: [
              Container(
                height: 110,
                width: 110,
                margin: EdgeInsets.only(top: 26, bottom: 16),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/border.png'))),
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              (context.bloc<UserCubit>().state as UserLoaded)
                                  .user
                                  .picturePath),
                          fit: BoxFit.cover)),
                ),
              ),
              Text(
                (context.bloc<UserCubit>().state as UserLoaded).user.name,
                style: blackFontStyle2.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 6,
              ),
              Text((context.bloc<UserCubit>().state as UserLoaded).user.email,
                  style: greyFontStyle.copyWith(fontSize: 14)),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              CustomTabBar(
                titles: ['Account', 'FoodMarket'],
                selectedIndex: selectedIndex,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              (selectedIndex == 0) ? ListMenuAccount() : ListMenuApps()
            ],
          ),
        )
      ],
    );
  }
}
