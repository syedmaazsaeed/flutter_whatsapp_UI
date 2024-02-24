import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Whatsapp',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          centerTitle: false,
          backgroundColor: Theme.of(context).primaryColor,
          actions: [
            const Icon(Icons.search),
            SizedBox(width: 10),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (
                context,
              ) =>
                  const [
                PopupMenuItem(value: '1', child: Text('New group')),
                PopupMenuItem(value: '1', child: Text('New broadcast')),
                PopupMenuItem(value: '2', child: Text('Linked devices')),
                PopupMenuItem(value: '3', child: Text('Starred message')),
                PopupMenuItem(value: '4', child: Text('Settings')),
              ],
            ),
            // Icon(Icons.more_vert_outlined),
            SizedBox(width: 10)
          ],
          bottom: const TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Camera')),
            ListView.builder(
              itemCount: 40,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.techopedia.com/wp-content/uploads/2023/07/hacker_-anonymous_01-1.png'),
                  ),
                  title: Text('Developer'),
                  subtitle: Text('Can You build React Application?'),
                  trailing: Text('12:59am'),
                );
              },
            ),
            ListView.builder(
              itemCount: 40,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New Updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.red, width: 4)),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://www.techopedia.com/wp-content/uploads/2023/07/hacker_-anonymous_01-1.png'),
                              ),
                            ),
                            title: const Text('Developer'),
                            subtitle: const Text('32 min Ago'),
                          )
                        ],
                      ));
                } else {
                  return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('New Updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.green, width: 4)),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://www.techopedia.com/wp-content/uploads/2023/07/hacker_-anonymous_01-1.png'),
                              ),
                            ),
                            title: Text('Developer'),
                            subtitle: Text('32 min Ago'),
                          )
                        ],
                      ));
                }
              },
            ),
            ListView.builder(
              itemCount: 40,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.techopedia.com/wp-content/uploads/2023/07/hacker_-anonymous_01-1.png'),
                  ),
                  title: Text('Developer'),
                  subtitle: Text(index / 2 == 0
                      ? 'You have Missed Audio Call'
                      : 'Missed Video call at 2:30 am'),
                  trailing:
                      Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                  //  trailing: Text('12:59am'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
