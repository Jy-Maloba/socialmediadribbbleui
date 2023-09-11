import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final int _selectedIndex = 0;

  Widget person(String name, double rating, String role, String imagePath){
    return GestureDetector(
      onTap: (){
        //open profile
      },
      child: Column(
        children: [
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath),
                )
            ),
            // child: Image(image: AssetImage('lib/images/Helen.jpeg'), fit: BoxFit.cover,),
          ),
          // name and rating row
          Row(
            children: [
              Text(name, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
              const SizedBox(width: 10,),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.orange,),
                  Text(rating.toString(), style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
          // role Text
          Text(role, style: const TextStyle(color: Colors.grey,),)
        ],
      ),
    );
  }

  Widget post (String image, String name, String work, String time, String postText, String postImage){
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //container with photo
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(image),
                        ),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue
                      ),
                    ),

                    const SizedBox(width: 10,),
                    //column with name and work title
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        Text(work, style: const TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ],
                ),
                //time
                Text('at $time PM'),
              ],
            ),

            //post text
            const SizedBox(height: 13,),
            Text(postText, style: const TextStyle(fontSize: 20),),

            const SizedBox(height: 10,),
            //post image
            GestureDetector(
              onTap: ()async{
                //launch site
              },
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(postImage),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 18, top: 8, bottom: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // circular avatar and searchbar
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('lib/images/user.jpeg'),
                      radius: 35,
                    ),
                    const SizedBox(width: 12,),

                    Container(
                      width: 280,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(26)
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(26)
                              ),
                            ),
                            prefixIcon: Icon(Icons.search, color: Colors.grey,),
                            hintText: 'Manager, HR specialist, data...',
                            hintStyle: TextStyle(color: Colors.grey)
                          ),

                        )
                    )
                  ],
                ),

                const SizedBox(height: 20,),
                //Title for specialists
                const Text(
                    'Top-rated specialists',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                ),

                const SizedBox(height: 10,),
                //list of specialists
                SizedBox(
                  height: 180,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        person('Alexandra', 4.9, 'HR Manager', 'lib/images/Alexandra.jpeg'),
                        const SizedBox(width: 10),
                        person('Dan', 5.0, 'UX Lead', 'lib/images/Dan.jpeg'),
                        const SizedBox(width: 10),
                        person('Helen', 4.9, 'Project Manager', 'lib/images/Helen.jpeg'),
                        const SizedBox(width: 10),
                        person('Tanya', 5.0, 'Business Analyst', 'lib/images/Tanya.jpeg'),
                        const SizedBox(width: 10),
                        person('Angelo', 5.0, 'CEO', 'lib/images/CEO.jpeg'),
                      ],
                    ),
                  ),
                ),


                const SizedBox(height: 10,),
                //Text, (what's new)
                const Text("What's new?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),

                const SizedBox(height: 10,),
                // post
                post(
                    'lib/images/Katherine.jpeg',
                    'Katherine',
                    'HR Manager at RentCity',
                    '4:05',
                    'I want to show you our updated website. Now you can leave a request for a meeting with a realtor on the website',
                    'lib/images/post.png'
                ),
                const SizedBox(height: 10,),
                post(
                    'lib/images/Dan.jpeg',
                    'Dan',
                    'UX Lead at RentCity',
                    '3:10',
                    'I want to show you our updated website. Now you can leave a request for a meeting with a realtor on the website',
                    'lib/images/post2.png'
                ),
                const SizedBox(height: 10,),
                post(
                    'lib/images/Tanya.jpeg',
                    'Tanya',
                    'Business Analyst at RentCity',
                    '2:25',
                    'I want to show you our updated website. Now you can leave a request for a meeting with a realtor on the website',
                    'lib/images/post.png'
                ),
                const SizedBox(height: 10,),
                post(
                    'lib/images/Helen.jpeg',
                    'Helen',
                    'Project Manager at RentCity',
                    '11:00',
                    'I want to show you our updated website. Now you can leave a request for a meeting with a realtor on the website',
                    'lib/images/post2.png'
                ),

                const SizedBox(height: 10,),
                const Text(
                  'Dribbble UI link',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue[900],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        'https://dribbble.com/shots/22499334-iOS-Social-Media-App',
                      style: TextStyle(fontSize: 20, color: Colors.lightBlueAccent),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.waving_hand_outlined, color: Colors.blue[300],),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.blue[300]),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center_outlined, color: Colors.blue[300]),
            label: 'Home',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[900],

      ),
    );
  }
}
