import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/db_model/note.dart';
import '../../models/db_model/task.dart';
import '../../models/menu_model/nav_model.dart';
import '../../models/menu_model/screen_model.dart';
import '../../providers/home_provider.dart';
import '../../providers/task_provider.dart';
import '../../styles/shapes/shapes.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/buttons/fab.dart';
import '../../widgets/navigators/side_nav.dart';
import '../../widgets/responsive/screen_type_layout.dart';
import '../calendar_screen/calendar_screen.dart';
import '../note_screen/note_creator_screen.dart';
import '../note_screen/note_screen.dart';
import '../task_screen/task_creator_screen.dart';
import '../welcome_screen/welcome_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _degOneTranslationAnimation, _degTwoTranslationAnimation;
  late Animation _animationRotation;
  late Animation<Offset> _menuAnimation;
  late PageController _pageController;
  int _currentPage = 0;

  _onPageChange(int page) {
    setState(() {
      _pageController.animateToPage(page,
          duration: const Duration(microseconds: 500), curve: Curves.easeIn);

      _currentPage = page;
    });
  }

  final List<ScreenModel> _pages = [
    ScreenModel(
      page: const WelcomeScreen(),
      title: NavModel(
        title: 'Today',
      ),
    ),
    ScreenModel(
      page: const CalendarScreen(),
      title: NavModel(
        title: 'Calendar',
      ),
    ),
    ScreenModel(
        page: const NoteScreen(),
        title: NavModel(
          title: 'Notes',
        )),
  ];

  hideTrigger() {
    if (_animationController.isCompleted) {
      setState(() {
        _animationController.reverse();
      });
    }
  }

  trigger() {
    setState(() {
      if (_animationController.isCompleted) {
        _animationController.reverse();
      } else {
        _animationController.forward();
      }
    });
  }

  @override
  void initState() {
    _pageController = PageController(initialPage: _currentPage);
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));

    _degOneTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.2), weight: 75.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.2, end: 1.0), weight: 25.0)
    ]).animate(_animationController);
    _degTwoTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.4), weight: 55.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.4, end: 1.0), weight: 45.0)
    ]).animate(_animationController);

    _animationRotation = Tween<double>(begin: 180.0, end: 0.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeOut));

    _menuAnimation = Tween<Offset>(
            begin: const Offset(0.0, 0.0), end: const Offset(-0.5, 0.0))
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.easeInOutBack));

    super.initState();

    _animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return ScreenTypeLayout(
      mobile: Consumer2<HomeProvider,TaskProvider>(
        builder: (context, homeProvider, taskProvider, child) {
          var leadingIconSize = SizeInfo.leadingAndTrailingIconSize;
          var leftEdgePadding = SizeInfo.leftEdgeMainPadding;
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: Stack(alignment: AlignmentDirectional.topEnd, children: [
              const BackgroundShape(),
              SafeArea(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: leftEdgePadding),
                        child: Center(
                            key: widget.key,
                            child: PageView.builder(
                                physics: const BouncingScrollPhysics(
                                    parent: AlwaysScrollableScrollPhysics()),
                                itemCount: _pages.length,
                                controller: _pageController,
                                onPageChanged: _onPageChange,
                                itemBuilder: (context, index) {
                                  return _pages
                                      .map((e) => e.page!)
                                      .toList()
                                      .elementAt(index);
                                })),
                      ),
                    ),
                    SideNav(
                      key: widget.key,
                      leading: IconButton(
                        splashColor: Colors.transparent,
                        icon: Icon(
                          Icons.settings,
                          color: Theme.of(context).textTheme.displayLarge!.color,
                          size: leadingIconSize,
                        ),
                        onPressed: () async {
                          await Navigator.pushNamed(context, '/settings');
                        },
                      ),
                      itemCount: _pages.length,
                      titles: _pages.map((e) => e.title!).toList(),
                      selectedItem: _currentPage,
                      onTap: (int sel) {
                        _onPageChange(sel);
                        hideTrigger();
                      },
                    ),
                  ],
                ),
              ),
            ]),
            floatingActionButton: CustomFab(
              translationValueOne: _degOneTranslationAnimation.value,
              translationValueTwo: _degTwoTranslationAnimation.value,
              rotationValue: _animationRotation.value,
              ignorePointer: _animationController.isCompleted ? true : false,
              onTap: () {
                trigger();
              },
              hideBtn: () {
                hideTrigger();
              },
              addTask: () async {
                await Navigator.push(
                    context,
                    CustomPageRoute(
                        child: TaskCreator(
                            editEnable: true,
                            newTask: Task(
                                date: DateTime(taskProvider.selDay.year,taskProvider.selDay.month,taskProvider.selDay.day,DateTime.now().hour,DateTime.now().minute),
                                icon: 1,
                                description: "",
                                title: "",
                                priority: 1,
                                isTaskDone: false)),
                        direction: AxisDirection.up));
              },
              addNote: () async {
                await Navigator.push(
                    context,
                    CustomPageRoute(
                      child: NoteCreator(
                          editEnable: true,
                          newNote: Note(
                            icon: 1,
                            description: "",
                            title: "",
                            subtitle: "",
                            keep: true,
                            fk: 0,
                            date: DateTime(taskProvider.selDay.year,taskProvider.selDay.month,taskProvider.selDay.day,DateTime.now().hour,DateTime.now().minute),
                          )),
                    ));
              },
            ),
          );
        },
      ),
    );
  }
}
