import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_3/home_page/items.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'STYLISH',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'font'),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 28,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.black54,
                    size: 28,
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'https://images-platform.99static.com/lFR3LhtStdssVMdXr4UuVGprGLM=/500x500/top/smart/99designs-contests-attachments/12/12096/attachment_12096187'
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Item(
                              text: 'posts',
                              num: '1,252',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Item(
                              text: 'followers',
                              num: '4m',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Item(
                              text: 'following',
                              num: '256',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 230,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Colors.grey[200]),
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'font'),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    'Home Furniture',
                    style: title,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Home accessories, some information about us',
                    style: style,
                  ),
                ),
                Text(
                  'Contact us :',
                  style: title,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    '+97259700000',
                    style: style.copyWith(color: Colors.blue),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Palestine-Gaza',
                    style: style,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    contItem(
                      text: 'Add Product',
                    ),
                    contItem(
                      text: 'Share',
                    ),
                    contItem(
                      text: 'Contant Us',
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 14, bottom: 20),
                  child: Divider(
                    height: 1.5,
                    thickness: .5,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width / 3.5,
                          height: 88,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    (index%2 ==0)?     'https://images-na.ssl-images-amazon.com/images/I/81hTjlEMbVL._AC_SL1500_.jpg':'https://www.fortywinks.com.au/getmedia/f4614e1e-9b00-476b-bdcd-e28afa3d34db/jackson_bed_frame-front.jpg?width=1000',
                                  ),
                                  fit: BoxFit.cover)),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
