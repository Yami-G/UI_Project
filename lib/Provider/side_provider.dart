import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/login_model.dart';

final isFavoriteProvider = StateProvider.autoDispose((ref) => true);
final checkBoxProvider = StateProvider((ref) => false);
final userDataLogin = StateProvider((ref) => LoginUser(password: '', phone: ''));
