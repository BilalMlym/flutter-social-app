import 'package:flutter/material.dart';
import 'package:socialapp/modeller/kullanici.dart';
import 'package:socialapp/sayfalar/anasayfa.dart';
import 'package:socialapp/sayfalar/girissayfasi.dart';
import 'package:socialapp/servisler/yetkilendirmeservisi.dart';

class Yonlendirme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: YetkilendirmeServisi().durumTakipcisi,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData) {
            
            return AnaSayfa();
          }

          else {
            return GirisSayfasi();
          }
        });
  }
}
