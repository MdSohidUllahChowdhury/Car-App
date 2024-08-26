import 'package:flutter/material.dart';

class Utils {
  static listProInfo() {
    return ListTile(
      contentPadding: const EdgeInsets.only(top: 8),
      leading: const CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('lib/Assets/image/car5.png'),
      ),
      title: const Text(
        'Hello',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          letterSpacing: 1.2,
        ),
      ),
      subtitle: const Text(
        'Shakil Chowdhury',
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            letterSpacing: 1.2,
            fontFamily: 'Bold'),
      ),
      trailing: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          child: Icon(
            Icons.favorite_border,
            size: 25,
            color: Colors.grey.shade800,
          )),
    );
  }

  static listSearchInfo() {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(24)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: const Icon(
          Icons.search,
          size: 25,
        ),
        title: const Text(
          'Search',
        ),
        trailing: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.lightBlueAccent.shade400,
            child: const Icon(
              Icons.equalizer_rounded,
              size: 25,
              color: Colors.white,
            )),
      ),
    );
  }

  static carCategory(imagepath) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.black,
      child: InkWell(
        onTap: () {},
        child: Image.asset(imagepath),
      ),
    );
  }

  static populerViewAll() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'Populer',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1.2,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'View All',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: Colors.grey,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ],
    );
  }

  static priceAndReating(price, reating) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          price,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
            letterSpacing: 1.2,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              const Icon(
                Icons.star,
                size: 15,
                color: Colors.amber,
              ),
              const SizedBox(width: 5),
              Text(
                reating,
                style: const TextStyle(
                  fontSize:10,
                  fontWeight: FontWeight.w900,
                  color: Colors.black54,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
