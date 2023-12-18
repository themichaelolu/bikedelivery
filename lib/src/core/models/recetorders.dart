import 'package:equatable/equatable.dart';

class RecentOrdersModel {
  String name;

  bool inProcess;

  RecentOrdersModel({
    required this.name,
    required this.inProcess,
  });

  static List<RecentOrdersModel> recents = [
    RecentOrdersModel(
      name: 'SCP9374826473',
      inProcess: true,
    ),
    RecentOrdersModel(
      name: 'SCP9374826473',
      inProcess: false,
    ),
    RecentOrdersModel(
      name: 'SCP9374826473',
      inProcess: true,
    ),
    RecentOrdersModel(
      name: 'SCP9374826473',
      inProcess: false,
    ),
    RecentOrdersModel(
      name: 'SCP9374826473',
      inProcess: true,
    ),
    RecentOrdersModel(
      name: 'SCP9374826473',
      inProcess: false,
    ),
  ];

//   @override
//   // TODO: implement props
//   List<Object?> get props => [name, inProcess];
}
