import 'package:god_sufficient/core/resources/gs_api_provider.dart';
import 'package:god_sufficient/features/community/church/presentation/controllers/church_controller.dart';
import 'package:god_sufficient/features/community/volunteer/presentation/controllers/volunteer_controller.dart';
import 'package:god_sufficient/features/grow/app/apps_gallery/presentation/controllers/apps_gallery_controller.dart';
import 'package:god_sufficient/features/grow/learn/presentation/controllers/learn_controller.dart';
import 'package:god_sufficient/features/help/get_help/presentation/controllers/get_help_controller.dart';
import 'package:god_sufficient/features/help/mentor/become_mentor/presentation/controllers/become_mentor_controller.dart';
import 'package:god_sufficient/features/login/presentation/controllers/login_controller.dart';
import 'package:god_sufficient/features/section/presentation/controllers/section_controller.dart';
import 'package:kiwi/kiwi.dart';

import '../../features/help/mentor/find_mentor/data/data_sources/remote/mentor_datasource.dart';
import '../../features/help/mentor/find_mentor/data/repositories/mentor_repository_impl.dart';
import '../../features/help/mentor/find_mentor/domain/repositories/mentor_repository.dart';
import '../../features/help/mentor/find_mentor/domain/use_cases/get_mentor.dart';
import '../../features/help/mentor/find_mentor/presentation/controllers/find_mentor_controller.dart';
import '../../features/home/presentation/controllers/home_controller.dart';

part 'injector.g.dart';

abstract class Injector {
  static KiwiContainer container = KiwiContainer();

  static void setup() {
    _$Injector()._configure();
  }

  @Register.singleton(GetMentorUseCase)
  void _configureUseCases();

  @Register.factory(HomeController)
  @Register.factory(LoginController)
  @Register.factory(ChurchController)
  @Register.factory(VolunteerController)
  @Register.factory(AppsGalleryController)
  @Register.factory(LearnController)
  @Register.factory(GetHelpController)
  @Register.factory(BecomeMentorController)
  @Register.factory(FindMentorController)
  @Register.factory(SectionController)
  void _configureControllers();

  @Register.singleton(MentorRepository, from: MentorRepositoryImpl)
  void _configureRepositories();

  @Register.singleton(MentorDatasource)
  void _configureRemoteDataSources();

  @Register.singleton(GSApiProvider)
  void _configureCommon();

  void _configure() {
    _configureCommon();
    _configureControllers();
    _configureUseCases();
    _configureRepositories();
    _configureRemoteDataSources();
  }
}
