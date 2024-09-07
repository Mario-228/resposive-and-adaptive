import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_desktop_example/desktop_view.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_mobile_example/mobile_view.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_tablet_example/tablet_view.dart';
import 'package:responsive_and_adaptive_basics/views/main_view/widgets/adaptive_layout.dart';

class AdaptiveExampleBody extends StatelessWidget {
  const AdaptiveExampleBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      /*
      // in this code will create each object if we don't need to use it
      AdaptiveLayout(
        mobileView: MobileView(),
        tabletView: TabletView(),
        desktopView: DesktopView(),
      )


      for improve performance
      AdaptiveLayout(
        mobileView: (context) => const MobileView(),
        tabletView: (context) => const TabletView(),
        desktopView: (context) => const DesktopView(),
      )
      use WidgetBuilder to pass context to child
      and this mean the object will be created if we need to use it
      and this also benefit when we use cubit with it because the bloc provider need to pass a context after the cubit created(using the BlocProvider widget )
      
      the cubit must be use after the context is passed to the child widget=>من الاخر عشان الكيوبنت يشتغل محتاج اباصي ل الحاجات الي تحت البلوك بروفيدر الكونتكست تاني عشان اي كونتكست يتعمل بعد انشاء الكيوبنت هو دا الي يقدر يستخدمه
      */
      child: AdaptiveLayout(
        mobileView: (context) =>
            const MobileView(), //معناه ان دا مش هيتم انشاءه غير لما يتعرض علي الشاشة او لما الشرط بتاعه يتحقق مش اعمل انشاء وخلاص علي الفاضي
        tabletView: (context) => const TabletView(),
        desktopView: (context) => const DesktopView(),
      ),
    );
  }
}
