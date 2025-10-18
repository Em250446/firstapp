import 'package:first_app/components/profile_card.dart';
import 'package:flutter/material.dart';

class SimpleCustomWidget extends StatelessWidget {
  const SimpleCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Widget'), centerTitle: true),
      body: Center(
        child: ProfileCard(
          name: 'Emwitra Muhammad',
          position: 'Student',
          email: 'emwitra@gmail.com',
          phoneNumber: '096-8138384',
          imageUrl:
              'https://scontent.fbkk17-1.fna.fbcdn.net/v/t39.30808-6/476109488_2049978368783974_8146741366780725345_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeF1OuyqC0SrgV0SN7vL7oaxRzx-n9thKaNHPH6f22Epo8xT1CtHOX-CuxKrctXOBJL5LsC-6DSma1JTGKmUEx1b&_nc_ohc=jt9akd5uZ90Q7kNvwE-CpIr&_nc_oc=Adm9796P9PR_iI7ST3uFuQinbefYjG4dQ-JPeYGLft6RVQRy-C_X5WKwrKA07JLwRX8&_nc_zt=23&_nc_ht=scontent.fbkk17-1.fna&_nc_gid=irQgCl7aZHcc2tTgsoOGdQ&oh=00_Afdocsh8HwCYi7YaW9WdN8ZnPHaeYGSasSO8oPolqczOtg&oe=68F8D641',
        ),
      ),
    );
  }
}
