import 'package:flutter/material.dart';
import '../models/location.dart';

class LocationDetailPage extends StatefulWidget {
  final Location location;

  const LocationDetailPage({
    super.key,
    required this.location,
  });

  @override
  State<LocationDetailPage> createState() => _LocationDetailPageState();
}

class _LocationDetailPageState extends State<LocationDetailPage> {
  late int _starCount;

  @override
  void initState() {
    super.initState();
    _starCount = widget.location.countStar;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.location.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // IMAGE
            Image.network(
              widget.location.imageUrl,
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.location.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.location.address,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),

                  // ⭐ STAR (CLICKABLE)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _starCount++;
                        widget.location.countStar = _starCount;
                      });
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.star, color: Colors.red),
                        const SizedBox(width: 4),
                        Text('$_starCount'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _ActionButton(
                    icon: Icons.call,
                    label: 'CALL',
                    onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Calling ${widget.location.name}...')),
                    ),
                  ),
                  _ActionButton(
                    icon: Icons.near_me,
                    label: 'ROUTE',
                    onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Opening route to ${widget.location.address}...')),
                    ),
                  ),
                  _ActionButton(
                    icon: Icons.share,
                    label: 'SHARE',
                    onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Sharing ${widget.location.name}...')),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                widget.location.description,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          children: [
            Icon(icon, color: Colors.blue),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(color: Colors.blue, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
