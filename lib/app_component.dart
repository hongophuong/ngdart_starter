import 'package:angular/angular.dart';
import 'package:angular_app/hero_component.dart';
import 'package:angular_app/src/hero.dart';
import 'package:angular_app/src/hero_service.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [coreDirectives, HeroComponent],
  styleUrls: ['app_component.css'],
  providers: [ClassProvider(HeroService)],
)
class AppComponent implements OnInit {
  var title = 'Tour of Heroes';
  final HeroService _heroService;
  List<Hero> heroes;
  Hero selected;

  AppComponent(this._heroService);

  void onSelected(Hero hero) => selected = hero;

  Future<void> _getHeroes() async {
    heroes = await _heroService.getAllSlowly();
  }

  @override
  void ngOnInit() => _getHeroes();
}
