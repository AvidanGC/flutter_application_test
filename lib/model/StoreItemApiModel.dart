import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class StoreItem {
  StoreItem({this.id, this.name});
  final String id;
  final String name;
}

class StoreItemAPIModel extends StoreItem {
  StoreItemAPIModel(
    @override id,
    @override name,
    @override this.isAvailable,
  ) : super(id: id, name: name);

  final bool isAvailable;

  factory StoreItemAPIModel.fromJson(Map<String, Object> json) {
    return StoreItemAPIModel(json['id'], json['name'], json['isAvailable']);
  }
}
