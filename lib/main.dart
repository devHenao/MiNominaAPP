import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';

import 'flutter_flow/nav/nav.dart';

import 'auth/custom_auth/custom_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  try {
    // Inicialización básica
    GoRouter.optionURLReflectsImperativeAPIs = true;
    usePathUrlStrategy();

    // Inicialización del tema
    await FlutterFlowTheme.initialize();

    // Inicialización del estado
    final appState = FFAppState();
    await appState.initializePersistedState();

    runApp(ChangeNotifierProvider(
      create: (context) => appState,
      child: MyApp(),
    ));
  } catch (e, stackTrace) {
    print('Error durante la inicialización: $e');
    print('Stack trace: $stackTrace');
  }
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;
  String getRoute([RouteMatch? routeMatch]) {
    final RouteMatch lastMatch =
        routeMatch ?? _router.routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : _router.routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }

  late Stream<MiNominaAuthUser> userStream;

  @override
  void initState() {
    super.initState();
    
    try {
      _appStateNotifier = AppStateNotifier.instance;
      _router = createRouter(_appStateNotifier);
      
      // Configurar el stream de autenticación
      userStream = miNominaAuthUserStream().asBroadcastStream();
      
      // Suscripción al stream de autenticación
      final subscription = userStream.listen(
        (user) {
          print('Usuario actualizado: ${user.uid}');
          _appStateNotifier.update(user);
          
          // Ocultar splash screen después de la autenticación
          _appStateNotifier.stopShowingSplashImage();
          
          // Navegar basado en el estado de autenticación
          if (user.loggedIn) {
            print('Usuario autenticado, navegando a /Home');
            // Usar el contexto raíz para la navegación
            final rootContext = appNavigatorKey.currentContext;
            if (rootContext != null) {
              GoRouter.of(rootContext).go('/Home');
            }
          } else {
            print('Usuario no autenticado, navegando a /authLogin');
            _router.go('/authLogin');
          }
        },
        onError: (error) {
          print('Error en el stream de autenticación: $error');
          _appStateNotifier.stopShowingSplashImage();
          _router.go('/authLogin');
        },
        onDone: () {
          print('Stream de autenticación completado');
          _appStateNotifier.stopShowingSplashImage();
        }
      );

      // Timeout para asegurar que el splash no se quede para siempre
      Future.delayed(Duration(seconds: 3), () {
        if (_appStateNotifier.showSplashImage) {
          print('Timeout del splash screen');
          _appStateNotifier.stopShowingSplashImage();
          if (!_appStateNotifier.loggedIn) {
            _router.go('/authLogin');
          }
        }
      });
      
      // Navegación inicial basada en el estado de autenticación
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          if (_appStateNotifier.loggedIn) {
            print('Navegación inicial a /Home');
            _router.go('/Home');
          } else {
            print('Navegación inicial a /authLogin');
            _router.go('/authLogin');
          }
        }
      });
      
      // Cancelar la suscripción cuando el widget se desmonte
      subscription.onDone(() {
        subscription.cancel();
      });
      
    } catch (e, stackTrace) {
      print('Error en initState: $e');
      print('Stack trace: $stackTrace');
      _appStateNotifier.stopShowingSplashImage();
      _router.go('/authLogin');
    }
  }

  void setLocale(String language) {
    safeSetState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => safeSetState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Mi Nómina',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FallbackMaterialLocalizationDelegate(),
        FallbackCupertinoLocalizationDelegate(),
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('es'),
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}
