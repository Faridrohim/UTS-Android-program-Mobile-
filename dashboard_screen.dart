import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Color.fromARGB(255, 255, 252, 73),
      ),
      body: Container( 
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/bg1.jpg'), 
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Selamat datang di Dashboard",
                style: TextStyle(fontSize: 25 ,height: 5 ),
              ),
        
              DashboardIconsGrid(
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(
                    'assets/utsamp.jpg'), // 
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Nama: Farid Abdul Rohim",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              "NPM: 21670008",
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              "Kelas: 5A",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}


class KontakScreen extends StatelessWidget {
  const KontakScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kontak"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.white, width: 4),
              ),
              child: const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                    'assets/utsamp.jpg'), 
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Nama: Farid Abdul Rohim",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Whastapp ",
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              "081393176635",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
              const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                'assets/bg1.jpg'
              ),
            ),
             const Text(
              "Nama: Moonligth",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Whastapp ",
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              "081229556883",
              style: TextStyle(fontSize: 18),
            ),
            
          ],
        ),
      ),
    );
  }
}
 
                
              
class DashboardIconsGrid extends StatelessWidget {
  const DashboardIconsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      children: <Widget>[
        DashboardIcon(
          icon: Icons.person,
          label: "Profil", // Tambahkan label sesuai ikon
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            );
          },
        ),
         DashboardIcon(
          icon: Icons.phone,
          label: "Kontak",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>const KontakScreen(),
              ),
            );
          },
        ),
          const DashboardIcon(
          icon: Icons.settings,
          label: "Setting",
        ),
        
      ],
    );
  }
}

class DashboardIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final Color iconColor; 

  const DashboardIcon({super.key, 
    required this.icon,
    required this.label,
    this.onPressed = _dummyOnPressed,
    this.iconColor = const Color.fromARGB(255, 177, 243, 33), 
  });

  static void _dummyOnPressed() {
    print("Tombol.");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      child: Column(
        children: <Widget>[
          IconButton(
            icon: Icon(
              icon,
              color: iconColor, 
            ),
            iconSize: 60,
            onPressed: onPressed,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
