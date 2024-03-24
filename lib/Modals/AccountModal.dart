import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountModal {
  String name;
  IconData icon;

  AccountModal({required this.name, required this.icon});
}

List<AccountModal> accountScreenModal = <AccountModal>[
  AccountModal(name: 'Personal Info', icon: Icons.person),
  AccountModal(name: 'My QR Code', icon: Icons.qr_code_scanner),
  AccountModal(name: 'Banks and Cards', icon: Icons.location_city),
  AccountModal(name: 'Payment Preferences', icon: Icons.payments_sharp),
  AccountModal(name: 'Automatic Payments', icon: Icons.refresh),
  AccountModal(name: 'Login and Security', icon: Icons.login),
  AccountModal(name: 'Notifications', icon: Icons.notifications),
];
