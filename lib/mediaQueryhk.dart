import 'package:flutter/material.dart';


class ResponsiveImageLayout extends StatelessWidget {
  // Sample image URLs - replace with your actual image paths/URLs
  final List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN3fMD9X1_p5b6lRSCGcpDtH9BcgEOsEZLg&s',
    'https://flagpedia.net/data/flags/w702/bd.webp',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN3fMD9X1_p5b6lRSCGcpDtH9BcgEOsEZLg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN3fMD9X1_p5b6lRSCGcpDtH9BcgEOsEZLg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN3fMD9X1_p5b6lRSCGcpDtH9BcgEOsEZLg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN3fMD9X1_p5b6lRSCGcpDtH9BcgEOsEZLg&s',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Images'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Get the maximum width of the screen
          double screenWidth = constraints.maxWidth;
          int imageCount;

          if (screenWidth < 768) {
            // Mobile - 2 images
            imageCount = 2;
          } else if (screenWidth <= 1024) {
            // Tablet - 3 images
            imageCount = 3;
          } else {
            // Desktop/Web - 4 images
            imageCount = 4;
          }

          // Take only the required number of images
          final displayedImages = imageUrls.take(imageCount).toList();

          return GridView.builder(
            padding: EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: imageCount > 2 ? imageCount - 1 : 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.0,
            ),
            itemCount: displayedImages.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(displayedImages[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}