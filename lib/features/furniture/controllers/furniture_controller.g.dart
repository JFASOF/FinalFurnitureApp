// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'furniture_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FurnitureController on _FurnitureControllerBase, Store {
  final _$furnituresAtom = Atom(name: '_FurnitureControllerBase.furnitures');

  @override
  List<FurnitureModel> get furnitures {
    _$furnituresAtom.reportRead();
    return super.furnitures;
  }

  @override
  set furnitures(List<FurnitureModel> value) {
    _$furnituresAtom.reportWrite(value, super.furnitures, () {
      super.furnitures = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_FurnitureControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$furnitureListAtom =
      Atom(name: '_FurnitureControllerBase.furnitureList');

  @override
  List<FurnitureModel> get furnitureList {
    _$furnitureListAtom.reportRead();
    return super.furnitureList;
  }

  @override
  set furnitureList(List<FurnitureModel> value) {
    _$furnitureListAtom.reportWrite(value, super.furnitureList, () {
      super.furnitureList = value;
    });
  }

  final _$getAllPhotosAsyncAction =
      AsyncAction('_FurnitureControllerBase.getAllPhotos');

  @override
  Future<void> getAllPhotos() {
    return _$getAllPhotosAsyncAction.run(() => super.getAllPhotos());
  }

  final _$_FurnitureControllerBaseActionController =
      ActionController(name: '_FurnitureControllerBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_FurnitureControllerBaseActionController.startAction(
        name: '_FurnitureControllerBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_FurnitureControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLike(int index) {
    final _$actionInfo = _$_FurnitureControllerBaseActionController.startAction(
        name: '_FurnitureControllerBase.setLike');
    try {
      return super.setLike(index);
    } finally {
      _$_FurnitureControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
furnitures: ${furnitures},
isLoading: ${isLoading},
furnitureList: ${furnitureList}
    ''';
  }
}
