import 'package:e_com_route/UI/home/category_widget.dart';
import 'package:e_com_route/UI/home/homeTab/home_tab_view_model.dart';
import 'package:e_com_route/di/di.dart';
import 'package:e_com_route/domain/model/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  HomeTabViewModel viewModel = getIt<HomeTabViewModel>();
  @override
  void initState() {
    super.initState();
    viewModel.initPage();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeTabViewModel, HomeTabState>(
      bloc: viewModel,
      buildWhen: (previous, current) {
        if (current is Error) return false;
        if (current is Loading) return false;
        if (current is success) return true;
        return true;
      },
      listenWhen: (previous, current) {
        if (current is Error) return true;
        if (current is Loading) return true;
        return false;
      },
      builder: (context, state) {
        if (state is success) {
          return buildSuccessWidget(state.categories ?? []);
        }
        return Scaffold(
          appBar: AppBar(
            title: Text("default"),
          ),
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
      listener: (context, state) {
        if (state is Error) {
          // show msg
        }
        if (state is Loading) {
          // show loading
        }
      },
    );
  }

  Widget buildSuccessWidget(List<Category> categories) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Store"),
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return HomeCategoryWidget(categories[index]);
                },
                itemCount: categories.length,
              ),
            )
          ],
        ));
  }
}
