import 'package:flutter/material.dart';
import 'package:youtube_ui/screens/widgets/video_home.dart';

class Home_View extends StatelessWidget {
  const Home_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 40,
            flexibleSpace: SafeArea(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 40,
                      child: Image.network(
                        'https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c545.png',
                        fit: BoxFit.fill,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'YouTube',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
            ),
            actions: [
              Container(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.cast_outlined),
                    Icon(Icons.notifications_outlined),
                    Icon(Icons.search),
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/56146545?v=4'),
                    )
                  ],
                ),
              )
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Video_Home(),
          ]))
        ],
      ),
    );
  }
}
