import 'package:flutter/material.dart';
import 'package:package_testing/views/nav_custom_painter.dart';


class CurvedNavigationBar extends StatefulWidget {

  final ValueChanged<int>? onTap;
  CurvedNavigationBar({
    this.onTap,
  });

  @override
  CurvedNavigationBarState createState() => CurvedNavigationBarState();
}

class CurvedNavigationBarState extends State<CurvedNavigationBar>
    with SingleTickerProviderStateMixin {
  late Widget _icon;
  @override
  void initState() {
    super.initState();
    _icon = Icon(Icons.video_call,color: Colors.white,);

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(left: 12,right: 12),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          GestureDetector(
            onTap: (){
            },
            child: Container(
              height: 45,width: 45,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            Colors.purple,
                            Colors.deepPurple,

                          ]
                      ),

                borderRadius: BorderRadius.circular(25)
              ),
              margin: const  EdgeInsets.only(bottom: 25),
              child: _icon,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: CustomPaint(
              painter: NavCustomPainter(
                  1/3, 3, Directionality.of(context)),
              child: Container(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Icon(Icons.home,color: Colors.white,),
                  Icon(Icons.home,color: Colors.white,),
                    SizedBox(height: 22,width: 24,),
                  Icon(Icons.home,color: Colors.white,),
                  Icon(Icons.home,color: Colors.white,),
                ],),

              ),
            ),
          ),

        ],
      ),
    );
  }


}
