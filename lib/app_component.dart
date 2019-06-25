import 'package:angular/angular.dart';
import 'package:angular_app/hero_component.dart';
import 'package:angular_app/src/hero.dart';
import 'package:angular_app/src/mock_heroes.dart';


@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [coreDirectives, HeroComponent],
  styleUrls: ['app_component.css'],
)
class AppComponent {
  var title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
  Hero selected;

  void onSelected(Hero hero) => selected = hero;
}
