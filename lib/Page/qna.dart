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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    new Container(
                      width: 360,
                      height: 120,
                      child:Image.asset('asset/cat.jpeg'),
                      ),

//사진 넣기
                    Column(

                      children: [
                        Text(
                          ' 캐시비 교통카드인데 충전이 안돼요 ',
                         style: body2Style(color: onSurface.withOpacity(0.6)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ' 답변 ',
                              style: body2Style(color: onSurface.withOpacity(0.6)),
                            ),
                            SizedBox(width: 250.0,),
                            Icon(Icons.message),
                            Icon(Icons.call),

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
                            Text(
                              ' 저기 1회용 카드라서 환급대에 가서 \n 500원을 받으세요',
                             style: body2Style(color: onSurface.withOpacity(0.6)),
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

                        // 복붇




                       Row(
                          //  mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ' 저기 1회용 카드라서 환급대에 가서 \n 500원을 받으세요',
                              style: body2Style(color: onSurface.withOpacity(0.6)),
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
