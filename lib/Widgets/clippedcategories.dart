import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClippedCategories extends StatefulWidget {
  String name;
  IconData iconfa;
  double size;


  ClippedCategories(this.name, this.iconfa,this.size);

  @override
  _ClippedCategoriesState createState() => _ClippedCategoriesState();
}

class _ClippedCategoriesState extends State<ClippedCategories> {
  bool bubblestate = false;



  Color innercircle = Color(0xffE50026);
  Color externcircle = Color(0xffE50026);
  Color iconfont = Colors.white;
  Color bcolor = Colors.white;
  double stopA = 0.0;
  double stopB = 1.0;
  String straps = "assets/images/bubble straps invisible.png";
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        setState(() {
          if(!bubblestate){
            bcolor = Color(0x00000000);
            iconfont = Color(0x00000000);
            innercircle = Color(0x00000000);
            stopA = 0.999999;
            bubblestate = true;
            Future.delayed(const Duration(milliseconds: 100), ()
            {
              setState(() {
                straps = "assets/images/bubble straps.png";
              });
            });

            Future.delayed(const Duration(milliseconds: 500), ()
            {
              Navigator.of(context).pushNamed(
                '/menu',
                arguments: 1000,
              );
            });



          }else{
            innercircle = Theme.of(context).primaryColor;
            stopA = 0.0;
            bubblestate = false;
            straps = "assets/images/bubble straps invisible.png";
          }
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          border: Border.all(color: bcolor,width: 3),
          image: DecorationImage(
            image: AssetImage(straps),
            fit: BoxFit.cover,
          ),
          gradient: RadialGradient(
            colors: [
              innercircle,
              externcircle,
            ],
            stops: [stopA,stopB],

          ),
          borderRadius: BorderRadius.circular(50*widget.size),
        ),
        margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
        height: 100 * widget.size,
        width: 100 * widget.size,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: FaIcon(
                  widget.iconfa,
                  color: iconfont,
                  size: 30*widget.size,
                ),
              ),
              Text(
                widget.name,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: iconfont,
                    fontWeight: FontWeight.bold,
                    fontSize: 12*widget.size,
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}