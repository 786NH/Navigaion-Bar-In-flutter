import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
void main() => runApp(MaterialApp(home: BottomNavBar()));
class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Curved Navigation Bar(Flutter)'),),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 65.0,
          items: <Widget>[
            Icon(Icons.add, size: 33,color: Colors.blue,),
            Icon(Icons.list, size: 33,color: Colors.blue,),
            Icon(Icons.contact_mail, size: 33,color: Colors.blue,),
            Icon(Icons.call, size: 33,color: Colors.blue,),
            Icon(Icons.perm_identity, size: 33,color: Colors.blue,),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blue,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
              print(_page);
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               if(_page==0)
                 Icon(Icons.add,size: 130,color: Colors.white,),
               if (_page==1)
                 Icon(Icons.list,size: 130,color: Colors.black,), 
               if (_page==2)
                 Icon(Icons.contact_mail,size: 130,color: Colors.white,), 
                
               if (_page==3)
                 Icon(Icons.call,size: 130,color: Colors.black,), 
               if (_page==4)
                 Icon(Icons.perm_identity,size: 130,color: Colors.white,),        
                 Text(_page.toString(), textScaleFactor: 5),
                ElevatedButton(
                  child: Text('Go To Page of index 0'),
                  onPressed: () {
                    final CurvedNavigationBarState? navBarState =
                        _bottomNavigationKey.currentState;
                    navBarState?.setPage(0);
                  },
                )
              ],
            ),
          ),
        ));
  }
}