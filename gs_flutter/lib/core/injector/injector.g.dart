// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  @override
  void _configureUseCases() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton((c) => GetMentorUseCase(c<MentorRepository>()));
  }

  @override
  void _configureControllers() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory((c) => FindMentorController())
      ..registerFactory((c) => HomeController())
      ..registerFactory((c) => LoginController());
  }

  @override
  void _configureRepositories() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton<MentorRepository>(
        (c) => MentorRepositoryImpl(c<MentorDatasource>()));
  }

  @override
  void _configureRemoteDataSources() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton(
        (c) => MentorDatasource(apiProvider: c<GSApiProvider>()));
  }

  @override
  void _configureCommon() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton((c) => GSApiProvider());
  }
}
