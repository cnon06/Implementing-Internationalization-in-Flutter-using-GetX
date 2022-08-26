import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
        },
        'de_DE': {
          'hello': 'Hallo Welt',
        },
        'fr_FR': {
          'hello': 'Bonjour Le Monde',
        },

       'es_ES': {
          'hello': 'Hola Mundo',
        },

        'it_IT': {
          'hello': 'Ciao Mondo',
        }
        


      };
}
