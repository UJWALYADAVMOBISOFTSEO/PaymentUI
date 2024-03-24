import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountModal {
  String id;
  String name;
  IconData icon;

  AccountModal({required this.id, required this.name, required this.icon});
}

List<AccountModal> accountScreenModal = <AccountModal>[
  AccountModal(id: "1", name: 'Personal Info', icon: Icons.person),
  AccountModal(id: "2", name: 'My QR Code', icon: Icons.qr_code_scanner),
  AccountModal(id: "3", name: 'Banks and Cards', icon: Icons.location_city),
  AccountModal(
      id: "4", name: 'Payment Preferences', icon: Icons.payments_sharp),
  AccountModal(id: "5", name: 'Automatic Payments', icon: Icons.refresh),
  AccountModal(id: "6", name: 'Login and Security', icon: Icons.login),
  AccountModal(id: "7", name: 'Notifications', icon: Icons.notifications),
];
