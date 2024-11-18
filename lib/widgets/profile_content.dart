import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/menu_item.dart';

class ProfileContent extends StatefulWidget {
  final Map<String, dynamic> profileDetails; 

  const ProfileContent({super.key, required this.profileDetails});

  @override
  State<ProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  @override
  Widget build(BuildContext context) {
    final profile = widget.profileDetails;

    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      profile['image'], 
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded( //  allow text wrapping
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profile['name'], 
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      profile['description'], 
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                      maxLines: 2, 
                      overflow: TextOverflow.ellipsis, 
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                MenuItem(
                  text: 'Followers',
                  icon: Icons.people,
                  value: profile['followers'].toString(), 
                ),
                const Divider(color: Colors.white, thickness: 0.5),
                MenuItem(
                  text: 'Following',
                  icon: Icons.person_add,
                  value: profile['following'].toString(),
                ),
                const Divider(color: Colors.white, thickness: 0.5),
                MenuItem(
                  text: 'Customers',
                  icon: Icons.people_outline,
                  value: profile['customers'].toString(), 
                ),
                const Divider(color: Colors.white, thickness: 0.5),
                MenuItem(
                  text: 'Products',
                  icon: Icons.shopping_cart,
                  value: profile['products'].toString(), 
                ),
                const Divider(color: Colors.white, thickness: 0.5),
                MenuItem(
                  text: 'Reviews',
                  icon: Icons.reviews,
                  value: profile['reviews'].toString(), 
                ),
                const Divider(color: Colors.white, thickness: 0.5),
                MenuItem(
                  text: 'Posts',
                  icon: Icons.post_add,
                  value: profile['posts'].toString(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
