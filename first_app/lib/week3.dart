import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        // กัน overflow ถ้าเนื้อหายาว
        child: Column(
          children: [
            // วงกลม profile
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/profile.jpg"),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // ข้อมูลส่วนตัว
            const Text(
              'นางสาว เอมวิตรา มูฮำหมัด',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'รหัสนักศึกษา:650710738',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            const Text(
              'สาขาวิชาเอก:เทคโนโลยีสารสนเทศ',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            const Text(
              '" ตอนนี้กำลังเรียนอยู่ IT ปี 4 "',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const Text(
              '" กำลังพยายามเรียนอย่างหนักเพื่อสำเร็จการศึกษา "',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // กล่องช่องทางการติดต่อ
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ), // ลด margin ให้กว้างขึ้น
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 230, 228, 228),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'ช่องทางการติดต่อ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Email: emwitra@email.com',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Facebook: Emwitra Muhammad',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 4),
                  Text('โทร: 0968138384', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            const SizedBox(height: 20), // เว้นด้านล่าง
          ],
        ),
      ),
    );
  }
}
