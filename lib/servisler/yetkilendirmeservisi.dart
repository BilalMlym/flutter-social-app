import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:socialapp/modeller/kullanici.dart';

class YetkilendirmeServisi {
  
  
  
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Kullanici? _kullaniciOlustur(User kullanici) {
    return kullanici == null ? null : Kullanici.firebasedenUret(kullanici);
  }

  Stream<Kullanici?> get durumTakipcisi {
    return _firebaseAuth.authStateChanges().map((_kullaniciOlustur) => null);
  }
  

}