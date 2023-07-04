import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}
class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
 String bu='';
  @override
  Widget build(BuildContext context) {
    final key = GlobalObjectKey<ExpandableFabState>(context);
    return Scaffold(
     backgroundColor: Colors.black,
     appBar: AppBar(title: const Text('Flutter Expandable Menu',style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
            Align(
           alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.white, fontSize: 21.5),
                children: <TextSpan>[
                  
                  TextSpan(text: '              Welcome To the Flutter\nSubscribe to our channel TechVantageX'),
                ]
              ),
            ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        key: key,
        // duration: const Duration(seconds: 1),
        // distance: 60.0,
        // type: ExpandableFabType.up,
        // fanAngle: 70,
        // child: const Icon(Icons.account_box),
        //foregroundColor: Colors.amber,
         backgroundColor: Colors.blue,
         closeButtonStyle: const ExpandableFabCloseButtonStyle(
           child: Icon(Icons.close),
           foregroundColor: Colors.white,
           backgroundColor: Colors.blue,
         ),
        // expandedFabShape: const CircleBorder(),
        // collapsedFabShape: const CircleBorder(),
        overlayStyle: ExpandableFabOverlayStyle(
          // color: Colors.black.withOpacity(0.5),
          blur: 5,
        ),
        onOpen: () {
          debugPrint('onOpen1');
        },
        afterOpen: () {
          debugPrint('afterOpen2');
        },
        onClose: () {
          debugPrint('onClose3');
        },
        afterClose: () {
          debugPrint('afterClose4');
   
        },
        children: [
          FloatingActionButton.small(
            // shape: const CircleBorder(),
             backgroundColor: Colors.green,
            heroTag: null,
            child: const Icon(Icons.edit,color: Colors.white,),
            onPressed: () {
            Edit(context,'Edit');
            
              final state = key.currentState;
              if (state != null) {
                debugPrint('isOpen:${state.isOpen}');
            
            state.toggle();
              }
              
            },
          ),
          FloatingActionButton.small(
            // shape: const CircleBorder(),
             backgroundColor: Colors.orange,
            heroTag: null,
            child: const Icon(Icons.search,color: Colors.white,),
            onPressed: () {
            
             Search(context,'Search');
              final state = key.currentState;
              if (state != null) {
                debugPrint('isOpen:${state.isOpen}');
                print(KeyData);
                state.toggle();
              }
              
             
            },
          ),
          FloatingActionButton.small(
             backgroundColor: Colors.red,
            // shape: const CircleBorder(),
            heroTag: null,
            child: const Icon(Icons.share,color: Colors.white,),
            onPressed: () {
              Share(context,'Share');
              final state = key.currentState;
              if (state != null) {
                debugPrint('isOpen:${state.isOpen}');
                state.toggle();
              }
              
            },
          ),
           FloatingActionButton.small(
            backgroundColor: Colors.purple,
            // shape: const CircleBorder(),
            heroTag: null,
            child:  Icon(Icons.contact_mail,color: Colors.white,),
            onPressed: () {
              Contact(context,'Contact');
              final state = key.currentState;
              if (state != null) {
                debugPrint('isOpen:${state.isOpen}');
                state.toggle();
              }
              
            },
          ),
        ],
      ),
    );
  }
}

Search(BuildContext context,String s) {
  s=s+' button is pressed';
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.orange,
          alignment: Alignment.center,
          child:Container(
            height: 200,
            width: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Icon(Icons.search,size: 40,color: Colors.white,),
                 Text(s,style: TextStyle(fontSize: 18,color: Colors.white),),
            ],)
          ),
          
        );
      },
    );
}
Contact(BuildContext context,String s) {
  s=s+' button is pressed';
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.purple,
          alignment: Alignment.center,
          child:Container(
            height: 200,
            width: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Icon(Icons.contact_mail,size: 40,color: Colors.white,),
                 Text(s,style: TextStyle(fontSize: 18,color: Colors.white),),
            ],)
          ),
          
        );
      },
    );
}
Edit(BuildContext context,String s) {
  s=s+' button is pressed';
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.green,
          alignment: Alignment.center,
          child:Container(
            height: 200,
            width: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Icon(Icons.edit,size: 40,color: Colors.white,),
                 Text(s,style: TextStyle(fontSize: 18,color: Colors.white),),
            ],)
          ),
          
        );
      },
    );
}
Share(BuildContext context,String s) {
  s=s+' button is pressed';
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.red,
          alignment: Alignment.center,
          child:Container(
            height: 200,
            width: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Icon(Icons.share,size: 40,color: Colors.white,),
                 Text(s,style: TextStyle(fontSize: 18,color: Colors.white),),
            ],)
          ),
          
        );
      },
    );
}
