import 'package:facebook_ui/bloc/user_bloc.dart';
import 'package:facebook_ui/bloc/user_bloc_states.dart';
import 'package:facebook_ui/constants.dart';
import 'package:facebook_ui/responsive_elements.dart';
import 'package:facebook_ui/screens/inner_screens/pages_and_contacts_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_offline/flutter_offline.dart';

import 'inner_screens/menu_screen.dart';
import 'inner_screens/mobile_layout.dart';
import 'inner_screens/posts_layout_screen.dart';


class FaceBookFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body:Responsive(
        desktop: Row(
          children: [
            Expanded(flex: widthScreen < 1100.0 ? 1 : 2, child: MenuScreen()),
            Expanded(flex: 3, child: PostsLayoutPage()),
            //Container(color: Colors.pinkAccent,)),
            Expanded(flex: 2, child: ContactsScreen()),
          ],
        ),
        tablet: orientation == Orientation.portrait
            ? Row(
          children: [
            Expanded(
                flex: widthScreen < 1100 ? 2 : 3,
                child: PostsLayoutPage()),
            widthScreen > 898
                ? Expanded(
                flex: widthScreen < 1100 && widthScreen > 820 ? 1 : 2,
                child: ContactsScreen())
                : SizedBox(
              height: 1,
            ),
          ],
        )
            : Row(
          children: [
            Expanded(
                flex: heightScreen < 1100 ? 2 : 3,
                child: PostsLayoutPage()),
            heightScreen > 898
                ? Expanded(
                flex:
                heightScreen < 1100 && heightScreen > 820 ? 1 : 2,
                child: ContactsScreen())
                : SizedBox(
              height: 1,
            ),
          ],
        ),
        mobile: MyHomePage(),
      )

    );
  }

  /*
  we use it if there is any data coming from internet
   OfflineBuilder(
        connectivityBuilder:  (
            BuildContext context,
            ConnectivityResult connectivity,
            Widget child,
            ){
          final bool connected = connectivity != ConnectivityResult.none;
          if(connected){
            return Responsive(
              desktop: Row(
                children: [
                  Expanded(flex: widthScreen < 1100.0 ? 1 : 2, child: MenuScreen()),
                  Expanded(flex: 3, child: PostsLayoutPage()),
                  //Container(color: Colors.pinkAccent,)),
                  Expanded(flex: 2, child: ContactsScreen()),
                ],
              ),
              tablet: orientation == Orientation.portrait
                  ? Row(
                children: [
                  Expanded(
                      flex: widthScreen < 1100 ? 2 : 3,
                      child: PostsLayoutPage()),
                  widthScreen > 898
                      ? Expanded(
                      flex: widthScreen < 1100 && widthScreen > 820 ? 1 : 2,
                      child: ContactsScreen())
                      : SizedBox(
                    height: 1,
                  ),
                ],
              )
                  : Row(
                children: [
                  Expanded(
                      flex: heightScreen < 1100 ? 2 : 3,
                      child: PostsLayoutPage()),
                  heightScreen > 898
                      ? Expanded(
                      flex:
                      heightScreen < 1100 && heightScreen > 820 ? 1 : 2,
                      child: ContactsScreen())
                      : SizedBox(
                    height: 1,
                  ),
                ],
              ),
              mobile: MyHomePage(),
            );
          }else{
            return buildNoInternetWidget()!;
          }
        },

        child: Center(child: CircularProgressIndicator(),)
      ),
      Widget? buildNoInternetWidget() {
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text('Can\'t connect to the internet ...Kindly check your internet !',
              style:TextStyle(
                  fontSize: 22,
                  color: fbBackgroundColor
              ),
            ),
            Image.asset('assets/images/no_internet.jpg')
          ],
        ),
      ),
    );
  }
   */
}
