import 'package:amit_course/Shared/Resources/images.dart';
import 'package:dash_flags/dash_flags.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Models/card_models.dart';
import '../../Models/category_models.dart';
import '../../Models/language_models.dart';
import '../../Models/orders_models.dart';
import '../../Models/products_models.dart';
import '../../Models/profile_models.dart';
import '../../Models/shipping_adress_models.dart';
import '../../Screens/ProfileScreens/contact_us_screen.dart';
import '../../Screens/ProfileScreens/edit_profile_screen.dart';
import '../../Screens/ProfileScreens/language_screen.dart';
import '../../Screens/ProfileScreens/my_card_screen.dart';
import '../../Screens/ProfileScreens/my_orders_screen.dart';
import '../../Screens/ProfileScreens/setting_screen.dart';
import '../../Screens/ProfileScreens/shipping_address_screen.dart';

List<ProductsModels> specialForYou = [
  ProductsModels(
    productID: 1,
    productName: 'Nebula Glow Lamp',
    productPrice: 29.99,
    description: 'This lamp creates a stunning galaxy-like ambiance with its diffused LED lights.',
    imagePath: Images.nebula,
    isFavorite: false,
    productColor: ProductColor.red,
    size: 13,
  ),
  ProductsModels(
    productID: 2,
    productName: 'Wavey Hair Curler',
    productPrice: 49.99,
    description: 'This curling tool creates effortless beachy waves with its unique wave-shaped barrel design.',
    imagePath: Images.wavey,
    isFavorite: false,
    productColor: ProductColor.black,
    size: 14,
  ),
  ProductsModels(
    productID: 3,
    productName: 'Chill-ax Pillow',
    productPrice: 59.99,
    description: 'This pillow is filled with cooling gel to help you stay cool and relax all night long.',
    imagePath: Images.chill,
    isFavorite: false,
    productColor: ProductColor.green,
    size: 15,
  ),
  ProductsModels(
    productID: 4,
    productName: 'Ultra-Hue Lipstick',
    productPrice: 19.99,
    description: ' This lipstick provides long-lasting intense color that stays put all day.',
    imagePath: Images.ultra,
    isFavorite: false,
    productColor: ProductColor.blue,
    size: 14,
  ),
  ProductsModels(
    productID: 5,
    productName: 'Wine-vana Glass',
    productPrice: 24.99,
    description: "The shape of this glass allows for perfect aeration and enhances the wine's flavor and aroma.",
    imagePath: Images.wine,
    isFavorite: false,
    productColor: ProductColor.red,
    size: 13,
  ),
];

//---------------------------------------------------------------------------------------------------
List<ProductsModels> featuredProducts = [
  ProductsModels(
    productID: 6,
    productName: 'Com-pak Electric Kettle',
    productPrice: 39.99,
    description: 'This compact kettle boils water in minutes and saves space in your kitchen.',
    imagePath: Images.com,
    isFavorite: false,
    productColor: ProductColor.red,
    size: 15,
  ),
  ProductsModels(
    productID: 7,
    productName: 'Lumi-ring Vanity Mirror',
    productPrice: 79.99,
    description:
        'This mirror features adjustable LED lights and magnification to help you see every detail of your makeup.',
    imagePath: Images.lumi,
    isFavorite: true,
    productColor: ProductColor.green,
    size: 15,
  ),
  ProductsModels(
    productID: 8,
    productName: 'Zen-scape Fire Pit',
    productPrice: 199.99,
    description:
        'This fire pit creates a tranquil ambiance and comes with a built-in water feature for added relaxation.',
    imagePath: Images.zen,
    isFavorite: true,
    productColor: ProductColor.blue,
    size: 16,
  ),
  ProductsModels(
    productID: 9,
    productName: 'Sleek-fit Fitness Tracker',
    productPrice: 99.99,
    description:
        'This stylish tracker monitors your heart rate, steps, and calories burned, and helps you stay on top of your fitness goals.',
    imagePath: Images.sleek,
    isFavorite: false,
    productColor: ProductColor.black,
    size: 16,
  ),
  ProductsModels(
    productID: 10,
    productName: 'Marsh-mallow Cushion',
    productPrice: 39.99,
    description: 'This plush cushion provides a soft and fluffy seating option perfect for any living room.',
    imagePath: Images.marsh,
    isFavorite: true,
    productColor: ProductColor.black,
    size: 13,
  ),
];
//-----------------------------------------------------------------------------------------------------
List<ProductsModels> bestSellingProducts = [
  ProductsModels(
    productID: 11,
    productName: 'Steam-burst Iron',
    productPrice: 59.99,
    description: 'This iron features a steam burst button and a non-stick soleplate for effortless ironing.',
    imagePath: Images.steam,
    isFavorite: false,
    productColor: ProductColor.black,
    size: 13,
  ),
  ProductsModels(
    productID: 12,
    productName: 'Smooth-sail Electric Razor',
    productPrice: 89.99,
    description:
        'This razor provides a smooth and close shave every time and features a pop-up trimmer for precise grooming.',
    imagePath: Images.smooth,
    isFavorite: true,
    productColor: ProductColor.green,
    size: 16,
  ),
  ProductsModels(
    productID: 13,
    productName: 'Zen-bliss Aromatherapy Diffuser',
    productPrice: 49.99,
    description:
        'This diffuser releases essential oils into the air, creating a relaxing ambiance and providing aromatherapy benefits.',
    imagePath: Images.bliss,
    isFavorite: false,
    productColor: ProductColor.blue,
    size: 15,
  ),
  ProductsModels(
    productID: 14,
    productName: 'Sky-glow Star Projector',
    productPrice: 39.99,
    description:
        'This project creates a stunning starry night sky on your ceiling for a peaceful and magical atmosphere.',
    imagePath: Images.sky,
    isFavorite: true,
    productColor: ProductColor.red,
    size: 14,
  ),
  ProductsModels(
    productID: 15,
    productName: 'Luna-dream Weighted Blanket',
    productPrice: 119.99,
    description:
        " This blanket uses weighted beads to help you feel calmer and more relaxed, leading to a better night's sleep.",
    imagePath: Images.luna,
    isFavorite: true,
    productColor: ProductColor.red,
    size: 13,
  ),
];
//------------------------------------------------------------------------
List<CategoryModels> categoryModels = [
  CategoryModels(name: 'Computer', imagePath: Images.computer),
  CategoryModels(name: 'Food', imagePath: Images.food),
  CategoryModels(name: 'Sport', imagePath: Images.sport),
  CategoryModels(name: 'Shoes', imagePath: Images.shoes),
  CategoryModels(name: 'Clothes', imagePath: Images.clothes),
];
//----------------------------------------------------------------------------
List<ProfileModel> x = [
  ProfileModel(title: 'My Account', icon: FontAwesomeIcons.circleUser),
  ProfileModel(title: 'My Orders', icon: FontAwesomeIcons.bagShopping),
  ProfileModel(title: 'Contact Us', icon: FontAwesomeIcons.addressBook),
  ProfileModel(title: 'Settings', icon: FontAwesomeIcons.gear),
  ProfileModel(title: 'My Cards', icon: FontAwesomeIcons.creditCard),
  ProfileModel(title: 'Shipping Address', icon: FontAwesomeIcons.locationDot),
  ProfileModel(title: 'Language', icon: FontAwesomeIcons.language),
  // ProfileModel(title: 'Privacy Policy', icon: FontAwesomeIcons.buildingShield),
  // ProfileModel(title: 'FAQ', icon: FontAwesomeIcons.exclamation),
];
List<Widget> screens = [
  const EditProfileScreen(),
  const MyOrdersScreen(),
  const ContactUsScreen(),
  const SettingScreen(),
  const MyCardScreen(),
  const ShippingAddressScreen(),
  const LanguageScreen(),
  // PrivacyPolicyScreen(),
  // FAQScreen(),
];
//-------------------------------------------------------------
List<OrdersModels> ordersModels = [
  OrdersModels(id: '26091945147', date: '11/9/2022', totalPrice: '\$ 1750.0', status: 'Pending', isTrack: true),
  OrdersModels(id: '35091945144', date: '20/5/2022', totalPrice: '\$ 450.0', status: 'Canceled', isTrack: false),
  OrdersModels(id: '48091945145', date: '5/2/2022', totalPrice: '\$ 790.0', status: 'Delivered', isTrack: false),
  OrdersModels(id: '98091945149', date: '5/3/2022', totalPrice: '\$ 2000.0', status: 'Canceled', isTrack: false),
  OrdersModels(id: '10091945146', date: '3/5/2022', totalPrice: '\$ 3000.0', status: 'Pending', isTrack: true),
];
//------------------------------------------------------------------
List<CardModels> cardModels = [
  CardModels(cardHolderFullName: 'Youssef Salman', cardNumber: '9431256789412385', validFrom: '4/5', validThru: '28/7'),
  CardModels(cardHolderFullName: 'Islam Fawzy', cardNumber: '2467895324615798', validFrom: '7/3', validThru: '29/9'),
  CardModels(cardHolderFullName: 'Ali Yasser', cardNumber: '6579755422891346', validFrom: '4/9', validThru: '2/12'),
  CardModels(cardHolderFullName: 'Yasser Hamed', cardNumber: '5697884561235894', validFrom: '4/9', validThru: '2/12'),
];
//------------------------------------------------------------------
List<LanguageModels> languageModels = [
  LanguageModels(flagLanguage: Language.ar, countryName: 'Arabic'),
  LanguageModels(flagLanguage: Language.de, countryName: 'German'),
  LanguageModels(flagLanguage: Language.en, countryName: 'English'),
  LanguageModels(flagLanguage: Language.es, countryName: 'Spanish`'),
  LanguageModels(flagLanguage: Language.fr, countryName: 'French'),
  LanguageModels(flagLanguage: Language.zh, countryName: 'Chinese'),
];
//----------------------------------------------------------------------`
List<ShippingAddress> shippingAddress = [
  ShippingAddress(
    name: 'Youssef Hamed',
    phone: '01005131294',
    shippingDescription: 'Maryotya faisal 9-A Ahmed Ragab Street apartment 1',
  ),
  ShippingAddress(
    name: 'Mahmoud Atef',
    phone: '01555690210',
    shippingDescription:
        'Qism El-Montaza-Sidi Beshr Qebli, Akl Basha Street, 100 (سنترال دريم), Last Floor (Near Alpha International Hospital)',
  ),
  ShippingAddress(
    name: 'Fares rabea',
    phone: '0100037197',
    shippingDescription: '67 wade al neal al 3goza',
  ),
];
