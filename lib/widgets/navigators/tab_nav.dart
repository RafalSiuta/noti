import 'package:flutter/material.dart';

class TabNav extends StatefulWidget {
  const TabNav(this.list, {super.key});
  final List<Widget>? list;

  @override
  State<TabNav> createState() => _TabNavState();
}

class _TabNavState extends State<TabNav> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  List<Tab> tabs = [
    Tab(text: "Task", height: 40,),
    Tab(text: "Note", height: 40,),
    Tab(text: "Project", height: 40,),
  ];

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: TabBar(
            indicatorWeight: .5,

              dividerColor: Theme.of(context).tabBarTheme.dividerColor,
              controller: _tabController,
              tabs: tabs),
        ),
        Expanded(
          child: TabBarView(


            controller: _tabController,

            children: widget.list!,
              physics:  const BouncingScrollPhysics(
              parent: BouncingScrollPhysics()),),
        ),
      ],
    );
  }
}
