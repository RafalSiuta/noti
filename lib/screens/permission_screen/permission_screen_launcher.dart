import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/permission_provider.dart';
import '../../providers/settings_provider.dart';
import '../../styles/shapes/shapes.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/buttons/switch_btn.dart';
import '../../widgets/cards/settings_card.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/small_header.dart';
import '../../widgets/responsive/column_row_builder.dart';
import '../home_screen/home_screen.dart';


class PermissionScreenLauncher extends StatefulWidget {
  const PermissionScreenLauncher({ super.key});


  @override
  State<PermissionScreenLauncher> createState() => _PermissionScreenLauncherState();
}

class _PermissionScreenLauncherState extends State<PermissionScreenLauncher>  with SingleTickerProviderStateMixin{

  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 350), value: 0.7);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    double topMargin = SizeInfo.pageTopMargin;
    var switchIconSize = SizeInfo.switchButtonIconSize;
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Consumer2<PermissionProvider, SettingsProvider>(builder: (context, permissionProvider,settingsProvider, child){
        return Theme(
            data: settingsProvider.getTheme(),
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                const BackgroundShape(),
                SafeArea(
                    child: CustomScrollView(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.only(top: topMargin),
                      sliver: SliverPersistentHeader(
                          pinned: true,
                          delegate: SliverHeader(
                              paddingHorizontal: 8.0,
                              maxHeight: 42,
                              minHeight: 40,
                              child: const SmallHeader(
                                title: 'Permissions',
                              ))),

                    ),
                    SliverList(
                        delegate: SliverChildListDelegate(
                            [
                              ColumnBuilder(
                                itemCount:
                                permissionProvider.permissionSettingsListCounter,
                                itemBuilder: (context, index) {
                                  final permissionSettings = permissionProvider.permissionSettingsList[index];
                                  return SettingsCard(
                                    title: permissionSettings.title!,
                                    description: permissionSettings.description!,
                                    child: SwitchBtn(
                                        iconData: Icons.circle,
                                        iconSize: switchIconSize,
                                        value: permissionSettings.isOn,
                                        onChanged: (val) {
                                          permissionProvider.permissionHandler(permissionSettings);
                                        }),
                                  );
                                },
                              )
                            ]
                        )),
                    SliverPadding(
                      padding: EdgeInsets.symmetric(horizontal:8.0),
                    sliver: SliverToBoxAdapter(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: (){
                                _animationController.forward().then((value) => Future.delayed(
                              const Duration(milliseconds: 350),
                              () => Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                      pageBuilder: (context, anim, ani2) => HomeScreen(key: widget.key),
                                      transitionsBuilder:
                                          (context, animation, secondaryAnimation, child) {
                                        var slide = Tween<Offset>(
                                                begin: const Offset(0.0, 1.0),
                                                end: const Offset(0.0, 0.0))
                                            .animate(CurvedAnimation(
                                                parent: _animationController, curve: Curves.easeIn));

                                        return SlideTransition(position: slide, child: child);
                                      })
                                  //
                              )));
                              }, child: Text('done',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 15.0),))
                        ],
                      ),
                    ),)
                  ],
                ))
              ],
            ),
          );
      },)
    );
  }
}
