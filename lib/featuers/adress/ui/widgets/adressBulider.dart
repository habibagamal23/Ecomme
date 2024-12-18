import 'package:ecomm59/featuers/adress/cubit/location_cubit.dart';
import 'package:ecomm59/featuers/adress/ui/widgets/adresscard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Adressbulider extends StatelessWidget {
  const Adressbulider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationCubit, LocationState>(builder: (context, state) {
      if (state is LocationLoading) {
        return AddressCard(
            title: "Current Address",
            content: "Loading",
            icon: Icons.location_on);
      }
      if (state is LocationSucces) {
        return AddressCard(
            title: "Current Address",
            content: state.adress,
            icon: Icons.location_on);
      }
      if (state is LocationError) {
        return AddressCard(
            title: "Current Address", content: state.error, icon: Icons.error);
      }

      return AddressCard(
          title: "Current Address", content: "No loaction", icon: Icons.error);
    });
  }
}
