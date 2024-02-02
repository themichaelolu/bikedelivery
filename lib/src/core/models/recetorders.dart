import 'package:equatable/equatable.dart';

class RecentOrdersModel extends Equatable {
  final String name;

  final bool inProcess;

  const RecentOrdersModel({
    required this.name,
    required this.inProcess,
  });

  static List<RecentOrdersModel> recents = [
    const RecentOrdersModel(
      name: 'SCP9374826473',
      inProcess: true,
    ),
    const RecentOrdersModel(
      name: 'SCP9374826473',
      inProcess: false,
    ),
    const RecentOrdersModel(
      name: 'SCP9374826473',
      inProcess: true,
    ),
    const RecentOrdersModel(
      name: 'SCP9374826473',
      inProcess: false,
    ),
    const RecentOrdersModel(
      name: 'SCP9374826473',
      inProcess: true,
    ),
    const RecentOrdersModel(
      name: 'SCP9374826473',
      inProcess: false,
    ),
  ];

  @override
  List<Object?> get props => [name, inProcess];
}
