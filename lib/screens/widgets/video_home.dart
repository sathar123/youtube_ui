import 'package:flutter/material.dart';
import 'package:youtube_ui/data/dummyData.dart';

class Video_Home extends StatelessWidget {
  const Video_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ListView.builder(
        padding: EdgeInsets.zero,
       shrinkWrap: true,
       physics: ScrollPhysics(),
        itemCount: VideoData.length,
        itemBuilder: (context, int index) {
          var data = VideoData[index];
          return Container(
            height: size.height / 3,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: size.height * 0.24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage('${data['thumb']}'),
                              fit: BoxFit.fill)),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(2)),
                        child: Text(
                          '${data['duration']}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('${data['profile']}'),
                    ),
                    title: Text('${data['title']}'),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.grey),
                        text: '${data['chname']}',
                        children: [
                          WidgetSpan(child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(children: [
                              CircleAvatar(radius: 3,backgroundColor: Colors.grey,),
                              SizedBox(height: 5,)
                            ],),
                          )),
                          TextSpan(
                            text: '${data['views']}K views',
                          ),
                          WidgetSpan(child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(children: [
                              CircleAvatar(radius: 3,backgroundColor: Colors.grey,),
                              SizedBox(height: 5,)
                            ],),
                          )),
                          TextSpan(
                            text: '${data['date']}'
                          )
                        ]
                      ),
                    ),
                  trailing: Wrap(
                    direction: Axis.vertical,
                    children: [

                      Icon(Icons.more_vert),
                      SizedBox(height: 20,),
                    ],
                  ),

                )
              ],
            ),
          );
        });
  }
}
