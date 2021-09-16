import 'package:facebook_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget searchText(){
  return Container(
    width: 300,
    height: 40,
    child: TextFormField(
      decoration: InputDecoration(

        hintText: 'Search Facebook',
        hintStyle: TextStyle(
          height: .7
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30)
        ),
        hoverColor: fbBackgroundColor,
        fillColor: fbBackgroundColor,
        filled: true,
        prefixIcon: Icon(Icons.search_outlined),
      ),
    ),
  );
}

Widget storiesRow(){
  return SingleChildScrollView(
    controller: ScrollController(),
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              height: 150,
              width: 100,
              child:  Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Image(image: AssetImage('assets/images/mypic.jpg'),filterQuality: FilterQuality.high,fit: BoxFit.cover,),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              left: 25,
              right: 25,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.blue.shade600,
                  child: Icon(Icons.add,size: 14,),
                ),
              ),
            ),
            Positioned(
                bottom: 5,
                left: 25,
                right: 25,
                child: Text('Create\nStory',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                  ),
                ))
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Container(
              height: 150,
              width: 100,
              child:  Image(image: AssetImage('assets/images/imageStory.jpg'),filterQuality: FilterQuality.high,fit: BoxFit.cover,),
            ),
            Positioned(
              top: 5,
              left: 3,

              child: CircleAvatar(
                backgroundColor: Colors.blue.shade600,
                radius: 15,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/images/mypic.jpg'),
                ),
              ),
            ),
            Positioned(
                bottom: 5,
                left: 3,
                child: Text('Mohamed\nMounier',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ))
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Container(
              height: 150,
              width: 100,
              child:  Image(image: AssetImage('assets/images/imageStory.jpg'),filterQuality: FilterQuality.high,fit: BoxFit.cover,),
            ),
            Positioned(
              top: 5,
              left: 3,

              child: CircleAvatar(
                backgroundColor: Colors.blue.shade600,
                radius: 15,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/images/mypic.jpg'),
                ),
              ),
            ),
            Positioned(
                bottom: 5,
                left: 3,
                child: Text('Mohamed\nMounier',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ))
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Container(
              height: 150,
              width: 100,
              child:  Image(image: AssetImage('assets/images/imageStory.jpg'),filterQuality: FilterQuality.high,fit: BoxFit.cover,),
            ),
            Positioned(
              top: 5,
              left: 3,

              child: CircleAvatar(
                backgroundColor: Colors.blue.shade600,
                radius: 15,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/images/mypic.jpg'),
                ),
              ),
            ),
            Positioned(
                bottom: 5,
                left: 3,
                child: Text('Mohamed\nMounier',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ))
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Container(
              height: 150,
              width: 100,
              child:  Image(image: AssetImage('assets/images/imageStory.jpg'),filterQuality: FilterQuality.high,fit: BoxFit.cover,),
            ),
            Positioned(
              top: 5,
              left: 3,

              child: CircleAvatar(
                backgroundColor: Colors.blue.shade600,
                radius: 15,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/images/mypic.jpg'),
                ),
              ),
            ),
            Positioned(
                bottom: 5,
                left: 3,
                child: Text('Mohamed\nMounier',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ))
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Container(
              height: 150,
              width: 100,
              child:  Image(image: AssetImage('assets/images/imageStory.jpg'),filterQuality: FilterQuality.high,fit: BoxFit.cover,),
            ),
            Positioned(
              top: 5,
              left: 3,

              child: CircleAvatar(
                backgroundColor: Colors.blue.shade600,
                radius: 15,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/images/mypic.jpg'),
                ),
              ),
            ),
            Positioned(
                bottom: 5,
                left: 3,
                child: Text('Mohamed\nMounier',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ))
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Container(
              height: 150,
              width: 100,
              child:  Image(image: AssetImage('assets/images/imageStory.jpg'),filterQuality: FilterQuality.high,fit: BoxFit.cover,),
            ),
            Positioned(
              top: 5,
              left: 3,

              child: CircleAvatar(
                backgroundColor: Colors.blue.shade600,
                radius: 15,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/images/mypic.jpg'),
                ),
              ),
            ),
            Positioned(
                bottom: 5,
                left: 3,
                child: Text('Mohamed\nMounier',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ))
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Container(
              height: 150,
              width: 100,
              child:  Image(image: AssetImage('assets/images/imageStory.jpg'),filterQuality: FilterQuality.high,fit: BoxFit.cover,),
            ),
            Positioned(
              top: 5,
              left: 3,

              child: CircleAvatar(
                backgroundColor: Colors.blue.shade600,
                radius: 15,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/images/mypic.jpg'),
                ),
              ),
            ),
            Positioned(
                bottom: 5,
                left: 3,
                child: Text('Mohamed\nMounier',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ))
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Container(
              height: 150,
              width: 100,
              child:  Image(image: AssetImage('assets/images/imageStory.jpg'),filterQuality: FilterQuality.high,fit: BoxFit.cover,),
            ),
            Positioned(
              top: 5,
              left: 3,

              child: CircleAvatar(
                backgroundColor: Colors.blue.shade600,
                radius: 15,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/images/mypic.jpg'),
                ),
              ),
            ),
            Positioned(
                bottom: 5,
                left: 3,
                child: Text('Mohamed\nMounier',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ))
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Container(
              height: 150,
              width: 100,
              child:  Image(image: AssetImage('assets/images/imageStory.jpg'),filterQuality: FilterQuality.high,fit: BoxFit.cover,),
            ),
            Positioned(
              top: 5,
              left: 3,

              child: CircleAvatar(
                backgroundColor: Colors.blue.shade600,
                radius: 15,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/images/mypic.jpg'),
                ),
              ),
            ),
            Positioned(
                bottom: 5,
                left: 3,
                child: Text('Mohamed\nMounier',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ))
          ],
        ),
      ],
    ),
  );
}

Widget searchForminPostsPage(){
  return Container(
    width: 300,
    height: 40,
    child: TextFormField(
      decoration: InputDecoration(

        hintText: 'What\'s on your mind,Mohamed?',
        hintStyle: TextStyle(
            height: .7
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30)
        ),
        hoverColor: fbBackgroundColor,
        fillColor: fbBackgroundColor,
        filled: true,

      ),
    ),
  );
}

Widget profilePicCircle(){
  return Stack(
    children: [
      CircleAvatar(
        backgroundImage: AssetImage('assets/images/mypic.jpg'),
        radius: 17,
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 6,
          child: CircleAvatar(
            radius: 4,
            backgroundColor: Colors.green,
          ),
        ),
      ),
    ],
  );
}



Widget searchInMobileScreen(){
  return Container(
    width: 300,
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border(
        bottom: BorderSide(
          color: Colors.grey
        ),top:  BorderSide(
          color: Colors.grey
      ),
        left:  BorderSide(
            color: Colors.grey
        ),
        right:  BorderSide(
            color: Colors.grey
        ),
      )
    ),
    child: TextFormField(
      decoration: InputDecoration(

        hintText: 'What\'s on your mind,Mohamed?',
        hintStyle: TextStyle(
            height: .7
        ),
        focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.none,

            ),
            borderRadius: BorderRadius.circular(30)
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.none,

            ),
            borderRadius: BorderRadius.circular(30)
        ),
        enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.none,

            ),
            borderRadius: BorderRadius.circular(30)
        ),
        errorBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.none,

            ),
            borderRadius: BorderRadius.circular(30)
        ),
        disabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.none,

            ),
            borderRadius: BorderRadius.circular(30)
        ),

        fillColor: Colors.white,
        filled: true,

      ),
    ),
  );
}

Widget postWidget({@required String ?textDetails,
  @required String ?firstImage,
  @required String ?secondImage,
  @required String ?userPic,
  @required String? userName,
required BuildContext context}){
  double screenHeight=MediaQuery.of(context).size.height;
  double screenWidth=MediaQuery.of(context).size.width;
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(0,0),
            blurRadius: .2  ,
            spreadRadius: .05
        )
      ],
    ),

    child: Column(
      children: [
       userName!=null?ListTile(
          horizontalTitleGap: 5.0,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10.0) ,
          leading:userPic!=null?CircleAvatar(
            backgroundImage: AssetImage('$userPic'),
            radius: 17,
          ) :SizedBox(),
          title:userName!=null?Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              userName!=null?Text('$userName',style: TextStyle(
                  fontWeight: FontWeight.bold
              ),):SizedBox(),

             userName!=null? Text('...',
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                )
                ,):SizedBox(),
            ],
          ):SizedBox(),
          subtitle: Row(
            children: [
              Text('13h'),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0,right: 2.0,left: 2.0),
                child: Text('.'),
              ),
              Icon(Icons.swap_horizontal_circle_outlined,color: Colors.grey,size: 15.0,)
            ],
          ),


        ):SizedBox(),
        SizedBox(height: 10.0,),
       userName!=null? Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textDetails!=null?Align(
                  alignment: Alignment.centerLeft ,
                  child: Text(textDetails,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black
                    )
                    ,),
                ):SizedBox(),
                SizedBox(height: 10,),
                firstImage!=null&&secondImage!=null?
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width:screenWidth*.4 ,
                        height: 200,
                        decoration: BoxDecoration(

                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage(firstImage),fit: BoxFit.cover)
                        ),

                      ),
                    ),

                    SizedBox(width: 2,),
                    Expanded(
                      child: Container(
                        width:screenWidth*.4 ,
                        height:200,
                        decoration: BoxDecoration(

                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage(secondImage),fit: BoxFit.cover)
                        ),

                      ),
                    ),

                  ],
                ):firstImage!=null&&secondImage==null?Container(
                  width: screenWidth*.8,
                  height: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(firstImage))
                  ),
                  // child: Image.asset(firstImage,fit: BoxFit.cover,),
                ):SizedBox(),

              ],
            ),
          ),
        ):SizedBox(),
        SizedBox(height: 10.0,),
      userName!=null? Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/icons/likeBlueTrans.png',height: 30,),
                  Image.asset('assets/icons/loveTrans.png',height: 22,),
                  Image.asset('assets/icons/laughTrans.png',height: 23,),
                  Text(' 130')
                ],
              ),
              Text('5 Comments'),
            ],
          ),
        ):SizedBox(),
        Divider(color: Colors.grey.shade200,),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(

                    border: Border(

                      right:  BorderSide(
                          color: Colors.grey.shade50
                      ),
                    )
                ),
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/icons/likeTrans.png'),width: 30,height: 20,color: Colors.grey.shade700),
                    Text(' Like',
                      style:TextStyle(
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

                      right:  BorderSide(
                          color: Colors.grey.shade50
                      ),
                    )
                ),
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/icons/commentTrans.png'),width: 30,height: 30,color: Colors.grey.shade700),
                    Text(' Comment',
                      style:TextStyle(
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

                      right:  BorderSide(
                          color: Colors.grey.shade50
                      ),
                    )
                ),
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/icons/share2Trans.png'),width: 30,height: 30,color: Colors.grey.shade500,),
                    Text(' Share',
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
        ),
      ],
    ),
  );
}
