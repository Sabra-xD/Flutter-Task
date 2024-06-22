import 'package:iconsax/iconsax.dart';
import '../classes/icon_label.dart';

//Icons
final List<IconLabel> listOfIcons = [
  IconLabel(label: "Home", icon: Iconsax.home),
  IconLabel(label: "Favorites", icon: Iconsax.heart),
  IconLabel(label: "Settings", icon: Iconsax.shopping_cart),
  IconLabel(label: "Profile", icon: Iconsax.profile_circle),
];
final List<IconLabel> listofActiveIcons = [
  IconLabel(label: "Home", icon: Iconsax.home_15),
  IconLabel(label: "Favorites", icon: Iconsax.heart5),
  IconLabel(label: "Settings", icon: Iconsax.shopping_cart5),
  IconLabel(label: "Profile", icon: Iconsax.profile_circle5),
];

//Categories we display.
final List<Map<Object, String>> categories = [
  {"img": "assets/icons/cat1.png", "type": "Fashion"},
  {"img": "assets/icons/cat2.png", "type": "Games"},
  {"img": "assets/icons/cat3.png", "type": "Accessories"},
  {"img": "assets/icons/cat4.png", "type": "Books"},
];

//Offers
List<String> offers = ["offer_2", "Black_Friday"];
