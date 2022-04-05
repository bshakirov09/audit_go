
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:goplaciz/applications/home/home_bloc.dart';
import 'package:goplaciz/presentation/components/app_loading_component.dart';
import 'package:goplaciz/presentation/components/main_button_component.dart';

import 'components/advertisements_list.dart';
import 'components/explores_list.dart';
import 'components/home_page_app_bar.dart';
import 'components/partner_deals_list.dart';
import 'components/places_list.dart';
import 'components/travelling_deals_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc()..add(const GetHomeInitData()),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Material(
              color: Colors.white,
              child: AppLoadingComponent(),
            );
          }
          else {
            return Scaffold(
              appBar: const HomePageAppBar(),
              body: ListView(
                children: const [

                  PlacesList(),

                  ExploresList(),

                  AdvertisementsList(),

                  TravellingDealsList(),

                  PartnerDealsList()
                ],
              ),
              backgroundColor: Colors.white,
              bottomNavigationBar: MainButtonComponent(
                text: 'start_new_trip'.tr(),
                margin: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 24.h),
                onPressed: () {},
              ),
            );
          }
        },
      ),
    );
  }
}
