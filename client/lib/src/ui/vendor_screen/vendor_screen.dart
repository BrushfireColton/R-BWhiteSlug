// import 'dart:async';
// import 'dart:io';

// import 'package:auto_route/auto_route.dart';
// import 'package:client/src/core/di/injection.dart';
// import 'package:client/src/ui/core/routes.gr.dart';
import 'package:client/src/ui/vendor_screen/vendor_screen_view_model.dart';
import 'package:empire/empire.dart';
import 'package:flutter/material.dart';

class VendorScreen extends EmpireWidget<VendorScreenViewModel> {
  const VendorScreen({super.key, required super.viewModel});

  @override
  EmpireState<EmpireWidget<EmpireViewModel>, VendorScreenViewModel>
      createEmpire() => _VendorScreenState(viewModel);
}

class _VendorScreenState
    extends EmpireState<VendorScreen, VendorScreenViewModel> {
  _VendorScreenState(super.viewModel);

  @override
  Widget build(BuildContext context) {
    String backgroundImage =
        viewModel.determineImage(viewModel.selectedBackgroundImage);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vendors'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.contain,
          ),
        ),
        child: ListView.builder(
          itemCount: viewModel.backgroundImageMap.length - 1,
          itemBuilder: (context, index) {
            final vendor = viewModel.backgroundImageMap.keys.toList()[index];
            final vendorImage =
                viewModel.backgroundImageMap.values.toList()[index];
            return ListTile(
              title: Text(vendor),
              textColor: Colors.orange,
              leading: IconButton(
                icon: Image.asset(vendorImage),
                alignment: Alignment.centerLeft,
                iconSize: 50,
                onPressed: () {
                  viewModel.updateUI(vendor);
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: TextButton(
          onPressed: () {
            viewModel.addUser();
          },
          child: const Text('Add User')),
    );
  }
}
