import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:facebook_ui/bloc/user_bloc.dart';
import 'package:facebook_ui/bloc/user_bloc_states.dart';
import 'package:facebook_ui/constants.dart';
import 'package:facebook_ui/models/user_model.dart';
import 'package:facebook_ui/widgets/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsTab extends StatefulWidget {
  const PostsTab({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  _PostsTabState createState() => _PostsTabState();
}

class _PostsTabState extends State<PostsTab> {
  late UserBloc delayedUser;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //height: widget.screenHeight,
        child: Column(
          //  padding: EdgeInsets.symmetric(horizontal: 40, vertical: KdefaultPadding),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage('assets/images/mypic.jpg'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(child: searchInMobileScreen())
                  ],
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  start: 10, end: 10, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      right: BorderSide(color: Colors.grey.shade50),
                    )),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/icons/liveTrans.png'),
                          width: 30,
                        ),
                        Text(
                          ' Live Video',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      right: BorderSide(color: Colors.grey.shade50),
                    )),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/icons/photoTrans.png'),
                          width: 30,
                          height: 30,
                        ),
                        Text(
                          ' Photo/Video',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      right: BorderSide(color: Colors.grey.shade50),
                    )),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/icons/smileyTrans.png'),
                          width: 22,
                        ),
                        Text(
                          ' Feeling/Activity',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: storiesRow(),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.grey.shade300,
              ),
            ),
            FutureBuilder(
              future: Future.delayed(Duration(seconds: 20))
                  .then((value) => delayedUser = BlocProvider.of(context)),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return BlocConsumer<UserBloc, UsersStates>(
                      listener: (context, state) => {},
                      builder: (context, state) {
                        delayedUser = BlocProvider.of(context);
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
                                userName: '${mohamed.userName}',
                                userPic: '${mohamed.userPic}',
                                textDetails: '${mohamed.textDetails}  ',
                                firstImage: '${mohamed.firstImage}',
                                secondImage: '${mohamed.secondImage}'),
                            SizedBox(
                              height: kDefaultPadding,
                            ),
                            postWidget(
                                context: context,
                                userName: '${walaa.userName}',
                                userPic: '${walaa.userPic}',
                                textDetails: '${walaa.textDetails}  ',
                                firstImage: '${walaa.firstImage}',
                                secondImage: null),
                            SizedBox(
                              height: kDefaultPadding,
                            ),
                            postWidget(
                                context: context,
                                userName: '${messi.userName}',
                                userPic: '${messi.userPic}',
                                textDetails: '${messi.textDetails}  ',
                                firstImage: '${messi.firstImage}',
                                secondImage: null),
                            SizedBox(
                              height: kDefaultPadding,
                            ),
                            postWidget(
                                context: context,
                                userName: '${happyMan.userName}',
                                userPic: '${happyMan.userPic}',
                                textDetails: '${happyMan.textDetails}  ',
                                firstImage: null,
                                secondImage: null),
                            SizedBox(
                              height: kDefaultPadding,
                            ),
                            postWidget(
                                context: context,
                                userName: '${psg.userName}',
                                userPic: '${psg.userPic}',
                                textDetails: '${psg.textDetails}  ',
                                firstImage: null,
                                secondImage: null),
                          ],
                        );
                      });
                } else {
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
    );
  }
}

/*
BlocConsumer<UserBloc,UsersStates>(
                listener: (context, state) => {} ,
                builder:(context,state){
                  UserBloc user=BlocProvider.of<UserBloc>(context);
                  UserModel mohamed = BlocProvider.of<UserBloc>(context).getMohamed();
                  UserModel walaa = BlocProvider.of<UserBloc>(context).getWalaa();
                  UserModel messi = BlocProvider.of<UserBloc>(context).getMessi();
                  UserModel psg = BlocProvider.of<UserBloc>(context).getPsg();
                  UserModel happyMan =  BlocProvider.of<UserBloc>(context).getHappyMan();

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
                  );}),
 */
