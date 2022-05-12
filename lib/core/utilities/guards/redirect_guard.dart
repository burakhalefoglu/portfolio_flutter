import 'dart:async';
import 'package:flutter_modular/flutter_modular.dart';

class RedirectGuard extends RouteGuard {
  RedirectGuard() : super(redirectTo: '/');
  @override
  Future<bool> canActivate(String path, ModularRoute router) {
    return Modular.get<RedirectStore>().isLogged;
  }
}

class RedirectStore{
  final Future<bool> _isLogged;
  Future<bool> get isLogged => _isLogged;
  RedirectStore(this._isLogged);
}