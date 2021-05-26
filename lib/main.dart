import 'package:dashboardresponsivo/pages/estudiantePage.dart';
import 'package:dashboardresponsivo/pages/horarioPage.dart';
import 'package:dashboardresponsivo/pages/profesorPage.dart';
import 'package:dashboardresponsivo/widgets/customAppBar_widget.dart';
import 'package:dashboardresponsivo/widgets/customDrawer_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

const KdesktopBreakPoint = 1024;
bool fullScreen;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "SSA Lindemann",
        home: HomePage(),
        routes: <String, WidgetBuilder>{
          // rutas
          '/homePage': (BuildContext context) => new HomePage(),
          '/estudiantePage': (BuildContext context) => new EstudiantePage(),
          '/profesorPage': (BuildContext context) => new ProfesorPage(),
          '/horarioPage': (BuildContext context) => new HorarioPage(),
        });
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    fullScreen = (MediaQuery.of(context).size.width >= KdesktopBreakPoint)
        ? true
        : false;

    return LayoutBuilder(
      builder: (context, dimens) => Scaffold(
        drawer: !fullScreen ? buildDrawer(context) : null,
        appBar: buildAppBar(),
        body: Row(
          children: [
            if (fullScreen) buildDrawer(context),
            Expanded(
                child: Container(
              alignment: Alignment.topCenter,
              child: buildBody(dimens.maxWidth, dimens.maxHeight),
            )),
          ],
        ),
      ),
    );
  }

  buildBody(double maxWidth, double maxHeight) {
    double customHeight =
        (maxHeight > 730) ? (maxHeight - 250 - 300 - 60 - 120) : 20;
    final myScroll = new ScrollController();
    return Container(
      child: Scrollbar(
        isAlwaysShown: true,
        controller: myScroll,
        child: ListView(
          controller: myScroll,
          physics: BouncingScrollPhysics(),
          children: [
            Wrap(
              alignment:
                  (fullScreen) ? WrapAlignment.start : WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 13,
              runSpacing: 13,
              children: [
                Container(
                  height: customHeight,
                ),
                buildFooter(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  buildFooter() {
    return Card(
      elevation: 15.0,
      child: Container(
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
            color: Colors.white10,
            border: Border.all(color: Colors.black38, width: 2.0),
            boxShadow: [
              BoxShadow(blurRadius: 15, spreadRadius: 3, color: Colors.white10),
            ]),
      ),
    );
  }
}
