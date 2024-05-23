// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector_config.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$InjectorConfig extends InjectorConfig {
  @override
  void _configureUseCases() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton((c) => GetMentorUseCase(c<MentorRepository>()));
  }

  @override
  void _configureControllers() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory((c) => FindMentorController(c<GetMentorUseCase>()))
      ..registerFactory((c) => ChurchController())
      ..registerFactory((c) => VolunteerController())
      ..registerFactory((c) => AppsGalleryController())
      ..registerFactory((c) => LearnController())
      ..registerFactory((c) => GetHelpController())
      ..registerFactory((c) => BecomeMentorController())
      ..registerFactory((c) => HomeController())
      ..registerFactory((c) => SectionController());
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
  void _configureCommon() {}
}
