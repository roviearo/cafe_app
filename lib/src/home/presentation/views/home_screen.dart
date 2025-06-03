import 'package:cafe_app/core/utils/dummy_data.dart';
import 'package:cafe_app/core/utils/router.dart';
import 'package:cafe_app/src/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:cafe_app/src/home/presentation/widgets/menu_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => router.pushNamed('add_menu'),
        //   elevation: 0,
        //   child: Icon(Icons.add),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          unselectedItemColor: Theme.of(context).colorScheme.outline,

          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(Icons.shopping_bag_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Favourite',
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: 'History',
              icon: Icon(Icons.list_alt_rounded),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.coffee_maker,
                      size: 32,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    BlocBuilder<AuthenticationBloc, AuthenticationState>(
                      builder: (context, state) {
                        if (state is Authenticated) {
                          final user = state.user;

                          return CircleAvatar(
                            backgroundImage: NetworkImage(user.avatarUrl),
                          );
                        }
                        return CircleAvatar(child: Icon(Icons.person));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Have you sip a \ncup of coffee today?',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hint: Text(
                      'Search menu...',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSecondaryContainer,
                      ),
                    ),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.secondaryContainer,
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 30,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 16),
                    Column(
                      children: [
                        Text(
                          'All',
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.primary,
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Text('Coffee'),
                    SizedBox(width: 16),
                    Text('Non Coffee'),
                    SizedBox(width: 16),
                    Text('Frappuccino'),
                    SizedBox(width: 16),
                    Text('Bottled Beverages'),
                    SizedBox(width: 16),
                    Text('Food'),
                    SizedBox(width: 16),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomScrollView(
                    slivers: [
                      SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                          childAspectRatio: 2 / 3,
                        ),
                        delegate: SliverChildListDelegate(
                          List.generate(
                            dummyData.length,
                            (index) => GestureDetector(
                              onTap: () => router.pushNamed('detail'),
                              child: MenuCard(menu: dummyData[index]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
