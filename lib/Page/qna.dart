import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'board.dart';
import 'package:moomool/Controller/controller.dart';
import 'package:moomool/Theme/colors.dart';
import 'package:moomool/Theme/text_styles.dart';

class BoardDetailPage extends StatelessWidget {
  late final Questions questions;

  BoardDetailPage({Key? key, required this.questions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Detailpage'),
        ),
        body: Container(
          color: thirdColor,
          child: Column(children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                color: onSurface[50],
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(-1.0, 4.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Column(
              //    crossAxisAlignment: CrossAxisAlignment.center,
              //    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),

                    Row(

                      children: [
                        SizedBox(
                          width: 30.0,
                        ),
                        Icon(Icons.circle),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(questions.title, style: body1Style(color: onSurface[900])),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    new Container(
                      width: 400,
                      height: 120,
                      child:Image.asset('asset/cat.jpeg'),
                      ),
                    Text(questions.description, style: body2Style(color: onSurface[900])),

//사진 넣기
                    Column(

                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ' 답변 ',
                              style: body3Style(color: primary[900]),
                            ),
                            SizedBox(width: 250.0,),
                            Icon(Icons.message),
                            SizedBox(width: 20.0,),
                            Icon(Icons.add_ic_call_outlined),

                          ],

                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Divider(
                          color: thirdColor[100],
                          thickness: 1.0,


                        ),
                        //여기서 부터 반복



                        Row(
                        //  mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width:10.0 ,),
                            Text(
                              ' 저기 1회용 카드라서 환급대에 가서 500원을 \n 받으세요',
                             style: body3Style(color: onSurface[900]),
                            ),
                            SizedBox(width:40.0 ,),
                            Icon(Icons.thumb_up_sharp,color: secondary[500],),
                            SizedBox(width: 10.0,),
                            Icon(Icons.thumb_down_sharp,color: secondary[500]),

                          ],

                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Divider(
                          color: thirdColor[100],
                          thickness: 1.0,


                        ),

                        // 복붇




                       Row(
                          //  mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width:15.0 ,),
                            Icon(Icons.arrow_forward,color: onSurface[500]),
                            SizedBox(width:5.0 ,),
                            Text(
                              ' 엥 저게 1회용 카드에요 ?',
                              style: body3Style(color: onSurface[900]),
                            ),



                          ],

                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Divider(
                          color: thirdColor[100],
                          thickness: 1.0,


                        ),
                      ],
                    ),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
// ListTile(
//   leading: Text("front!"),
//   trailing: Text("back!"),
// ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                  ]),
            ),
          ]),
        ));
  }
}
