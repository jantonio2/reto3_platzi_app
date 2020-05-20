import 'package:flutter/material.dart';
import 'app_bar_shape.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget title;
  final bool centerTitle;
  final Widget navigatorButton;

  CustomAppBar({this.title, this.centerTitle = false, this.navigatorButton});

  @override
  State<StatefulWidget> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 32);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0),
      child: Stack(
        children: <Widget>[
          Material(
            elevation: 1,
            color: Colors.yellow,
            shape: AppBarShape(),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
              height: widget.preferredSize.height + 20,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/paisaje2.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromRGBO(65, 130, 184, 0.85),
                          BlendMode.srcATop
                      )
                  )
              ),
            ),

          ),
          _getAppBar()
        ],
      ),
    );
  }

  Widget _getAppBar() {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      height: kToolbarHeight,
      width: double.maxFinite,
      child: Stack(
        children: _getList(),
      ),
    );
  }

  Widget _getTitle() {
    Widget wTitle = widget.title != null ? widget.title : Container();
    return widget.centerTitle
        ? Center(child: wTitle)
        : Container(padding: EdgeInsets.only(left: 50), child: wTitle);
  }

  List<Widget> _getList() {
    List<Widget> list = List();
    list.add(_getTitle());
    if (widget.navigatorButton != null) {
      list.add(widget.navigatorButton);
    }
    return list;
  }
}