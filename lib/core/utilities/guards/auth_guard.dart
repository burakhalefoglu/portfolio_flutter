import 'dart:async';
import 'package:flutter_modular/flutter_modular.dart';

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: '/login');
  @override
  Future<bool> canActivate(String path, ModularRoute router) {
    return Modular.get<AuthStore>().isLogged;
  }
}

class AuthStore{
  final Future<bool> _isLogged;
  Future<bool> get isLogged => _isLogged;
  AuthStore(this._isLogged);
}