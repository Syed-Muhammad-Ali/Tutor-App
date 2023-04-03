//
// import 'package:country_picker/country_picker.dart';
// import 'package:flutter/material.dart';
//
// showCountries({required BuildContext context,Function? onSelectCountry}){
//   return showCountryPicker(
//     context: context,
//     countryListTheme:
//     CountryListThemeData(
//       flagSize: 25,
//       backgroundColor: Colors.white,
//       textStyle:const TextStyle(
//           fontSize: 16,
//           color: Colors.blueGrey),
//       //Optional. Sets the border radius for the bottomsheet.
//       borderRadius:const BorderRadius.only(
//         topLeft: Radius.circular(20.0),
//         topRight: Radius.circular(20.0),
//       ),
//       //Optional. Styles the search field.
//       inputDecoration: InputDecoration(
//         labelText: 'Search',
//         hintText:
//         'Start typing to search',
//         prefixIcon:
//         const Icon(Icons.search),
//         border: OutlineInputBorder(
//           borderSide: BorderSide(
//             color: const Color(0xFF8C98A8)
//                 .withOpacity(0.2),
//           ),
//         ),
//       ),
//     ),
//     onSelect: (Country country) {
//       print(country.displayName);
//       print(country.displayNameNoCountryCode);
//       onSelectCountry!(country);
//     },
//   );
// }