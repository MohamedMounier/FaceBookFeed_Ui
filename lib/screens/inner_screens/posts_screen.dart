import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:facebook_ui/bloc/user_bloc.dart';
import 'package:facebook_ui/bloc/user_bloc_states.dart';
import 'package:facebook_ui/constants.dart';
import 'package:facebook_ui/models/user_model.dart';
import 'package:facebook_ui/widgets/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'mobile_widgets_screen.dart';
class PostsScreen extends StatelessWidget {
  late UserBloc delayedUser;
  @override
  Widget build(BuildContext context) {
    double widthScreen= MediaQuery.of(context).size.width;
    double heightScreen= MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: kDefaultPadding),
      child: Container(
        height: heightScreen,
        width: widthScreen,
        color: fbBackgroundColor,
        child: SingleChildScrollView(
          child: Column(
          //  padding: EdgeInsets.symmetric(horizontal: 40, vertical: KdefaultPadding),
            children: [
              //Stories Widget
              storiesRow(),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(0,0),
                          blurRadius: .2  ,
                          spreadRadius: .05
                      )
                    ],
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),
                margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                width: widthScreen,
                height: 130,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(top: kDefaultPadding,start: kDefaultPadding,end: kDefaultPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage('assets/images/mypic.jpg'),
                            ),
                            SizedBox(width: 10,),
                            Expanded(child: searchForminPostsPage())
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Divider(endIndent: kDefaultPadding,indent: kDefaultPadding,),

                    Expanded(child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: kDefaultPadding,end: kDefaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image(image: AssetImage('assets/icons/liveTrans.png'),width: 30,),
                                Text(' Live Video',
                                style:TextStyle(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),

                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Image(image: AssetImage('assets/icons/photoTrans.png'),width: 30,height: 30,),
                                Text(' Photo/Video',
                                  style:TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),

                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Image(image: AssetImage('assets/icons/smileyTrans.png'),width: 22,),
                                Text(' Feeling/Activity',
                                  style:TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),

                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: Offset(0,0),
                      blurRadius: .2  ,
                      spreadRadius: .05
                    )
                  ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                ),
                //margin: EdgeInsets.symmetric(vertical: KdefaultPadding),
                width: widthScreen,
                height: 60,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: kDefaultPadding,end: kDefaultPadding),
                  child: Column(
                    children: [
                      Expanded(child: SizedBox()),
                      Expanded(
                        flex: 3,
                        child: ListView(
                         // physics: NeverScrollableScrollPhysics(),
                         // shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 8),
                              width:120,
                              decoration:BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                border: Border(
                                  top: BorderSide(color: Colors.blue.withOpacity(.3)),
                                  bottom: BorderSide(color: Colors.blue.withOpacity(.3)),
                                  right: BorderSide(color: Colors.blue.withOpacity(.3)),
                                  left: BorderSide(color: Colors.blue.withOpacity(.3)),
                                ),
                                  borderRadius: BorderRadius.all(Radius.circular(40))

                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    Image(image: AssetImage('assets/icons/roomTrans.png'),width: 20,),
                                    Text(' Create Room',
                                      style:TextStyle(
                                          color: Colors.blue.shade700,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),

                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(start: kDefaultPadding,),
                              child: ListView.separated(
                                separatorBuilder: (context, index) => SizedBox(width: 10,),
                                scrollDirection: Axis.horizontal,
                               physics:NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 20,
                                itemBuilder: (context, index) => profilePicCircle(),

                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      //PostsTab(screenWidth: widthScreen,screenHeight: heightScreen,)

                    ],
                  )
                )
              ),
              SizedBox(height: kDefaultPadding,),
              FutureBuilder(
                future:Future.delayed(Duration(seconds: 20)).then((value) => delayedUser=BlocProvider.of(context)) ,
                builder: (context, snapshot) {
                  if(snapshot.hasData){
                    return BlocConsumer<UserBloc,UsersStates>(
                        listener: (context, state) => {} ,
                        builder:(context,state){
                          delayedUser=BlocProvider.of(context);

                          UserModel mohamed = delayedUser.getMohamed();
                          UserModel walaa = delayedUser.getWalaa();
                          UserModel messi = delayedUser.getMessi();
                          UserModel psg = delayedUser.getPsg();
                          UserModel happyMan = delayedUser.getHappyMan();

                          return Column(
                            children: [
                              //post with two pictures
                              postWidget(
                                  context: context,
                                  userName:'${mohamed.userName}' ,
                                  userPic:'${mohamed.userPic}' ,
                                  textDetails: '${mohamed.textDetails}  ',
                                  firstImage: '${mohamed.firstImage}',
                                  secondImage: '${mohamed.secondImage}'),
                              SizedBox(height: kDefaultPadding,),
                              postWidget(
                                  context: context,
                                  userName:'${walaa.userName}' ,
                                  userPic:'${walaa.userPic}' ,
                                  textDetails: '${walaa.textDetails}  ',
                                  firstImage: '${walaa.firstImage}',
                                  secondImage: null),
                              SizedBox(height: kDefaultPadding,),
                              postWidget(
                                  context: context,
                                  userName:'${messi.userName}' ,
                                  userPic:'${messi.userPic}' ,
                                  textDetails: '${messi.textDetails}  ',
                                  firstImage: '${messi.firstImage}',
                                  secondImage: null), SizedBox(height: kDefaultPadding,),
                              postWidget(
                                  context: context,
                                  userName:'${happyMan.userName}' ,
                                  userPic:'${happyMan.userPic}' ,
                                  textDetails: '${happyMan.textDetails}  ',
                                  firstImage: null,
                                  secondImage: null), SizedBox(height: kDefaultPadding,),
                              postWidget(
                                  context: context,
                                  userName:'${psg.userName}' ,
                                  userPic:'${psg.userPic}' ,
                                  textDetails: '${psg.textDetails}  ',
                                  firstImage: null,
                                  secondImage: null),
                            ],
                          );});
                  }else{
                    return Padding(
                      padding: const EdgeInsets.only(top:50.0),
                      child: Center(
                        child: DefaultTextStyle(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color:Colors.blue.shade700,
                            shadows: [
                              Shadow(
                                  blurRadius: 7,
                                  offset: Offset(0,0),
                                  color: Colors.white
                              ),
                            ],
                          ),
                          child: AnimatedTextKit(

                            repeatForever: true,
                            animatedTexts: [
                              FlickerAnimatedText('Loading...'),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),


            ],
          ),
        ),
      ),
    );
  }
}


