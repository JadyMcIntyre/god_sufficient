// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  @override
  void _configureUseCases() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerSingleton((c) => GetMentorUseCase(c<MentorRepository>()))
      ..registerSingleton((c) => GetAppUseCase(c<AppsRepo>()));
  }

  @override
  void _configureControllers() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory((c) => HomeController())
      ..registerFactory((c) => LoginController())
      ..registerFactory((c) => ChurchController())
      ..registerFactory((c) => VolunteerController())
      ..registerFactory(
          (c) => AppsGalleryController(useCase: c<GetAppUseCase>()))
      ..registerFactory((c) => LearnController())
      ..registerFactory((c) => GetHelpController())
      ..registerFactory((c) => BecomeMentorController())
      ..registerFactory(
          (c) => FindMentorController(useCase: c<GetMentorUseCase>()))
      ..registerFactory((c) => SectionController());
  }

  @override
  void _configureRepositories() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerSingleton<MentorRepository>(
          (c) => MentorRepositoryImpl(c<MentorDatasource>()))
      ..registerSingleton<AppsRepo>((c) => AppsRepoImpl(c<AppsDataSource>()));
  }

  @override
  void _configureRemoteDataSources() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerSingleton(
          (c) => MentorDatasource(apiProvider: c<GSApiProvider>()))
      ..registerSingleton(
          (c) => AppsDataSource(apiProvider: c<GSApiProvider>()));
  }

  @override
  void _configureCommon() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton((c) => GSApiProvider());
  }
}
