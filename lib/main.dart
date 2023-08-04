import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';

import 'package:untitled1/LocalStorage/login_page_self.dart';
import 'package:untitled1/animation/Animated_Padding.dart';
import 'package:untitled1/api/GetApi.dart';
import 'package:untitled1/pageview.dart';
import 'package:untitled1/payment_demo.dart';
import 'package:untitled1/payment_self.dart';
import 'package:untitled1/practice_textfield.dart';
import 'package:untitled1/reoderable_list.dart';
import 'package:untitled1/search.dart';
import 'package:untitled1/showmodel_bottomsheet.dart';
import 'package:untitled1/sliverappbar.dart';
import 'package:untitled1/stack.dart';
import 'package:untitled1/state_manage/demo_counter.dart';
import 'package:untitled1/state_manage/demo_counter1.dart';
import 'package:untitled1/state_manage/self_langauge_task.dart';
import 'package:untitled1/statefull_button.dart';
import 'package:untitled1/stateless_buttons.dart';
import 'package:untitled1/text_gradient.dart';
import 'package:untitled1/textfield.dart';
import 'package:untitled1/textform_field.dart';
import 'package:untitled1/time_picker.dart';
import 'package:untitled1/toggle.dart';

import 'AlertDialogBox.dart';
import 'ApiServices/Repo/post_login_repo_call.dart';
import 'Bottom_TabBar1.dart';
import 'CircleAvatar1.dart';
import 'Circle_avtar.dart';
import 'Common_Button.dart';
import 'Constrant_Box1.dart';
import 'Controllers/self_controller.dart';
import 'DataTable1.dart';
import 'Database/demo_database.dart';
import 'Database/task_database.dart';
import 'DatePicker1.dart';
import 'DateRangePicker1.dart';
import 'Dismissible1.dart';
import 'Draggable_Scrollable1.dart';
import 'Drop-Down_Button1.dart';
import 'IconWidget1.dart';
import 'IdCard.dart';
import 'IdCard1.dart';
import 'Image_Filtered1.dart';
import 'Listwheel_Scrollview1.dart';
import 'LocalStorage/demo_storage.dart';
import 'LocalStorage/demo_storage1.dart';
import 'LocalStorage/home_page.dart';
import 'LocalStorage/login_page.dart';
import 'LocalStorage/registration_page.dart';
import 'LocalStorage/registration_page_self.dart';
import 'Model/Response/GetApiResponse1_repo.dart';

import 'Model/Response/get_api_response2.dart';
import 'Navigator.dart';
import 'Practice_CommonButton.dart';
import 'Reoderable_List1.dart';
import 'RowColumn.dart';
import 'RowColumn1.dart';
import 'RowColumn2.dart';
import 'RowColumn3.dart';
import 'RowWidget.dart';
import 'ColumnWidget.dart';
import 'Search1.dart';
import 'ShowModel_BottomSheet1.dart';
import 'Sliver_AppBar1.dart';
import 'Stack1.dart';
import 'Stateless_Button1.dart';
import 'Stream_Builder/Stream_Builder1.dart';
import 'Stream_Builder/Stream_Builder_Task.dart';
import 'Stream_Builder/Stream_Builder_self_Example.dart';
import 'Stream_Builder/stream_demo.dart';
import 'TextForm_Field1.dart';
import 'TimePicker1.dart';
import 'animation/Animated_Align.dart';
import 'animation/Animated_Opacity.dart';
import 'animation/Animated_Rotation.dart';
import 'animation/Animated_container1.dart';
import 'animation/ExplicitAnimation1.dart';
import 'animation/ExplicitAnimationAlignment.dart';
import 'animation/ExplicitAnimationBorder.dart';
import 'animation/ExplicitAnimationBorderRadius.dart';
import 'animation/ExplicitAnimationCurve.dart';
import 'animation/ExplicitAnimationCurve1.dart';
import 'animation/ExplicitAnimationDecoration.dart';
import 'animation/ExplicitAnimationTextStyle.dart';
import 'animation/ImplicitAnimation1.dart';
import 'animation/animated_container.dart';
import 'animation/explicit_animation.dart';
import 'animation/implicit_animation.dart';
import 'api/3_All_Categories_.dart';
import 'api/Delet_API.dart';
import 'api/Patch_API.dart';
import 'api/Post_API.dart';
import 'api/Post_Api1.dart';
import 'api/Product_API_Example.dart';
import 'api/1_Product_API_Example1.dart';
import 'api/Put_API.dart';
import 'api/WithoutFutureBuilderDemo.dart';
import 'api/demo_get.dart';
import 'assetsImage.dart';
import 'bottom_nav_Bar.dart';
import 'bottom_tabbar.dart';
import 'common_textfield.dart';
import 'constrant_box.dart';
import 'data_table.dart';
import 'date_picker.dart';
import 'date_range_picker.dart';
import 'dismissible.dart';
import 'draggable_scrollable.dart';
import 'drop_Down_Button.dart';
import 'expansion_tile.dart';
import 'future_builder/Future1.dart';
import 'future_builder/demo_future.dart';
import 'gridview_builder.dart';
import 'iconwidget.dart';
import 'image_filtered.dart';
import 'increment_decrement.dart';
import 'listViewBuilder.dart';
import 'listViewBuilder1.dart';
import 'list_generate.dart';
import 'listview_separated.dart';
import 'listwheel_scrollview.dart';
import 'media_query.dart';

void main() async {
  await GetStorage.init();
  runApp(Shreya());
}

class Shreya extends StatelessWidget {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: DataTableDemo(),
        // box.read("UserId") == null ? RegistrationPage1() : HomePage1(),
      );
    });
  }
}
