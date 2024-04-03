import 'package:admin/utils/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Pallete.whiteColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlutterLogo(
                        size: 30,
                      ),
                    ),
                    Text('Nurvotech',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Pallete.primaryColor)),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 14, 12, 56),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      horizontalTitleGap: 10,
                      leading: SvgPicture.asset(
                        'assets/icons/menu_dashboard.svg',
                        color: Colors.white,
                        height: 20,
                        width: 20,
                      ),
                      title: Text(
                        'Dashboard',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ],
            ),
          ),
          DrawerListTile(
            title: "Inventory Items Managment",
            svgSrc: "assets/icons/menu_task.svg",
            onPress: () {},
            bgColor: Colors.transparent,
          ),
          DrawerListTile(
            title: "Sales Item Mangment",
            svgSrc: "assets/icons/menu_doc.svg",
            bgColor: Colors.transparent,
            onPress: () {},
          ),
          DrawerListTile(
            title: "Orders",
            svgSrc: "assets/icons/menu_store.svg",
            bgColor: Colors.transparent,
            onPress: () {},
          ),
          DrawerListTile(
            title: "Customer App Managment",
            svgSrc: "assets/icons/menu_notification.svg",
            bgColor: Colors.transparent,
            onPress: () {},
          ),
          DrawerListTile(
            title: "Kiosk Display Mangment",
            svgSrc: "assets/icons/menu_profile.svg",
            bgColor: Colors.transparent,
            onPress: () {},
          ),
          DrawerListTile(
            title: "User Auth Mangment",
            svgSrc: "assets/icons/menu_setting.svg",
            bgColor: Colors.transparent,
            onPress: () {},
          ),
          DrawerListTile(
            title: "Company info",
            svgSrc: "assets/icons/menu_profile.svg",
            bgColor: Colors.transparent,
            onPress: () {},
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 160,
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Upgrade to PRO'),
                  Text(
                    'and get access to all the premium features',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Pallete.greyOne),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    minWidth: 200,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    color: Colors.white,
                    child: Text(
                      'Buy Premium',
                      style: TextStyle(color: Pallete.primaryColor),
                    ),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Pallete.primaryColor, Pallete.secondaryColor])),
          )
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.onPress,
    required this.bgColor,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback onPress;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      horizontalTitleGap: 10,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.black,
        height: 20,
        width: 20,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black54),
      ),
    );
  }
}
