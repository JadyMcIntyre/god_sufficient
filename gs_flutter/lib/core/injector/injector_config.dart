import 'package:get/get.dart';
import 'package:god_sufficient/features/mentor/data/data_sources/remote/mentor_datasource.dart';
import 'package:god_sufficient/features/mentor/data/repositories/mentor_repository_impl.dart';
import 'package:god_sufficient/features/mentor/domain/repositories/mentor_repository.dart';
import 'package:god_sufficient/features/mentor/domain/use_cases/get_mentor.dart';
import 'package:god_sufficient/src/presentation/features/community/church/controllers/church_controller.dart';
import 'package:god_sufficient/src/presentation/features/community/volunteer/controllers/volunteer_controller.dart';
import 'package:god_sufficient/src/presentation/features/grow/app/apps_gallery/controllers/apps_gallery_controller.dart';
import 'package:god_sufficient/src/presentation/features/grow/learn/controllers/learn_controller.dart';
import 'package:god_sufficient/src/presentation/features/help/get_help/controllers/get_help_controller.dart';
import 'package:god_sufficient/src/presentation/features/help/mentor/become_mentor/controllers/become_mentor_controller.dart';
import 'package:god_sufficient/src/presentation/features/help/mentor/find_mentor/controllers/find_mentor_controller.dart';
import 'package:god_sufficient/src/presentation/features/home/controllers/home_controller.dart';
import 'package:god_sufficient/src/presentation/features/section/controllers/section_controller.dart';
import 'package:kiwi/kiwi.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../resources/gs_api_provider.dart';

part 'injector_config.g.dart';

abstract class InjectorConfig {
  static KiwiContainer container = KiwiContainer();

  static void setup() {
    _$InjectorConfig()._configure();
  }

  static final resolve = container.resolve;

//example
  @Register.singleton(GetMentorUseCase)
  void _configureUseCases();
//example
  @Register.factory(FindMentorController)
  @Register.factory(ChurchController)
  @Register.factory(VolunteerController)
  @Register.factory(AppsGalleryController)
  @Register.factory(LearnController)
  @Register.factory(GetHelpController)
  @Register.factory(BecomeMentorController)
  @Register.factory(HomeController)
  @Register.factory(SectionController)
  void _configureControllers();

  //example
  @Register.singleton(MentorRepository, from: MentorRepositoryImpl)
  void _configureRepositories();

  //example
  @Register.singleton(MentorDatasource)
  void _configureRemoteDataSources();

  //add in future if needed
  @Register.singleton(GSApiProvider, constructorName: 'setHost')
  void _configureCommon();

  void _configure() {
    container.registerInstance(Get.find<SharedPreferences>());
    _configureCommon();
    _configureControllers();
    _configureUseCases();
    _configureRepositories();
    _configureRemoteDataSources();
  }
}
