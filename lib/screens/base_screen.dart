import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kabinet_company/bloc/bottom_bloc.dart';
import 'package:kabinet_company/bloc/enums.dart';
import 'package:kabinet_company/screens/component/c_circle_button.dart';
import 'package:kabinet_company/screens/operator_screen_menu.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage>{
  BottomBloc bottomBloc = BottomBloc();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bottomBloc,
      child: Scaffold(
        bottomNavigationBar: BlocBuilder<BottomBloc, BottomState>(
            builder:(context, state) {
          if(state is BottomInitial){
            return bottomBarInitial(state);
          }
           else if(state is BottomSuccess)
            return bottomBar(state);
          }
          ),

        body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: new BoxDecoration(
                    color: Color.fromRGBO(20,132,198, 1),
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0),
                    )
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.menu, color: Colors.white),
                        Row(
                          children: [
                            Icon(Icons.exposure, color: Colors.white),
                            Icon(Icons.pages, color: Colors.white),
                            Icon(Icons.share, color: Colors.white),
                            Icon(Icons.event, color: Colors.white),
                            Icon(Icons.info, color: Colors.white,)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text("Ishonchli aloqa", style: TextStyle(color: Colors.white, fontSize: 18.0),),
                    SizedBox(height: 10.0),
                    Text("Uzmobile", style: TextStyle(color: Colors.white, fontSize: 18.0)),
                    SizedBox(height: 5.0),
                    circleMenu()
                  ],
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: ListTile(leading: Icon(Icons.network_check_outlined),
                      title: Text("internet"),
                      subtitle: Text("paketi"),
                    ),
                  ),
                  Expanded(
                    child: ListTile(leading: Icon(Icons.network_check_outlined),
                      title: Text("internet"),
                      subtitle: Text("paketi"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Icon(Icons.network_check_outlined),
                      title: Text("internet"),
                      subtitle: Text("paketi"),
                    ),
                  ),
                  Expanded(
                    child: ListTile(leading: Icon(Icons.network_check_outlined),
                      title: Text("internet"),
                      subtitle: Text("paketi"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(leading: Icon(Icons.network_check_outlined),
                      title: Text("internet"),
                      subtitle: Text("paketi"),
                    ),
                  ),
                  Expanded(
                    child: ListTile(leading: Icon(Icons.network_check_outlined),
                      title: Text("internet"),
                      subtitle: Text("paketi"),
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),

      ),
    );
  }

  Row bottomBar(BottomSuccess state) {
    return Row(
            children: [
              Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: (){
                    flatBtnPress(Operation.money);
                  },
                    child: Icon(Icons.attach_money_outlined, color: state.bottom_1 ? Colors.blue : Colors.black,),)),
              Expanded(
                  flex: 1,
                  child: FlatButton(onPressed: () {
                   flatBtnPress(Operation.operator);
                  },
                      child: Icon(Icons.headset,
                        color: state.bottom_2 ? Colors.blue : Colors.black,))),
              Expanded(
                  flex: 1,
                  child: FlatButton(
                    onPressed: (){
                      flatBtnPress(Operation.network);
                    }, child: Icon(Icons.network_check,
                  color: state.bottom_3 ? Colors.blue : Colors.black,),)),
              Expanded(
                  flex: 1,
                  child: FlatButton(
                    onPressed: (){
                      flatBtnPress(Operation.call);
                    }, child: Icon(Icons.call,
                  color: state.bottom_4 ? Colors.blue : Colors.black,),))
            ],
          );
  }

  Row bottomBarInitial(BottomInitial state) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: FlatButton(onPressed: (){
              flatBtnPress(Operation.money);
            },
              child: Icon(Icons.attach_money_outlined, color: state.bottom_1 ? Colors.blue : Colors.black,),)),
        Expanded(
            flex: 1,
            child: FlatButton(onPressed: () {
              flatBtnPress(Operation.operator);
            },
                child: Icon(Icons.headset,
                  color: state.bottom_2 ? Colors.blue : Colors.black,))),
        Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                flatBtnPress(Operation.network);
              }, child: Icon(Icons.network_check,
              color: state.bottom_3 ? Colors.blue : Colors.black,),)),
        Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                flatBtnPress(Operation.call);
              }, child: Icon(Icons.call,
              color: state.bottom_4 ? Colors.blue : Colors.black,),))
      ],
    );
  }



  Row circleMenu() {
    return Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Material(
                  elevation: 4.0,
                  shape: CircleBorder(),
                  clipBehavior: Clip.hardEdge,
                  color: Colors.white,
                  child: Ink.image(
                    image: AssetImage('assets/image/uzmobile2.png'),
                    width: 120.0,
                    height: 120.0,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Material(
                  elevation: 4.0,
                  shape: CircleBorder(),
                  clipBehavior: Clip.hardEdge,
                  color: Colors.white,
                  child: Ink.image(
                    image: AssetImage('assets/image/mobiuz2.png'),
                    width: 120.0,
                    height: 120.0,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Material(
                  elevation: 4.0,
                  shape: CircleBorder(),
                  clipBehavior: Clip.hardEdge,
                  color: Colors.white,
                  child: Ink.image(
                    image: AssetImage('assets/image/ucell2.png'),
                    width: 120.0,
                    height: 120.0,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Material(
                  elevation: 4.0,
                  shape: CircleBorder(),
                  clipBehavior: Clip.hardEdge,
                  color: Colors.white,
                  child: Ink.image(
                    image: AssetImage('assets/image/beeline2.png'),
                    width: 120.0,
                    height: 120.0,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
  }

  flatBtnPress(Operation operation){
    bottomBloc.add(BottomEvent(operation));
    setState(() {});
  }


}

class CustomHalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = new Path();
    path.lineTo(0.0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}