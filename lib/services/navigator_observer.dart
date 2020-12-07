import 'dart:async';

import 'package:flutter/widgets.dart';

class FlutterCurrentRouteNavigatorObserver extends NavigatorObserver {
  final _onRouteChange = StreamController<Route>.broadcast();

  Route _route;

  // Currently visible route.
  Route get route => _route;

  // A stream that emits a value when the currently visible [route] changes.
  Stream<Route> get onRouteChange => _onRouteChange.stream;

  @override
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    _updateRoute(route);
  }

  @override
  void didReplace({Route<dynamic> newRoute, Route<dynamic> oldRoute}) {
    if (_route == oldRoute) {
      _updateRoute(newRoute);
    }
  }

  @override
  void didPop(Route route, Route previousRoute) {
    _updateRoute(previousRoute);
  }

  @override
  void didRemove(Route route, Route previousRoute) {
    if (route == _route) {
      _updateRoute(previousRoute);
    }
  }

  void _updateRoute(Route route) {
    _route = route;
    _onRouteChange.add(route);
  }
}
