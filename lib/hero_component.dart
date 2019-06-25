import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_app/src/hero.dart';

@Component(
  selector: 'my-hero',
  templateUrl: 'hero_component.html',
  directives: [formDirectives, coreDirectives],
)
class HeroComponent {
  @Input()
  Hero hero;
}
