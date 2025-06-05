void main() {
  List<List<List<Map<String, int>>>> myList = [
    [
      [
        {"Alpha": 24},
      ],
      [
        {"Beta": 25},
      ],
    ],
    [
      [
        {"Alpha": 34},
      ],
      [
        {"Beta": 35},
      ],
    ],
    [
      [
        {"Alpha": 44},
      ],
      [
        {"Beta": 45},
      ],
    ],
    [
      [
        {"Alpha": 54},
      ],
      [
        {"Beta": 55},
      ],
    ],
    [
      [
        {"Alpha": 64},
      ],
      [
        {"Beta": 65},
      ],
    ],
  ];
  print(
    (myList[0][1][0]["Beta"]! + myList[2][1][0]["Beta"]!) +
        (myList[1][1][0]["Beta"]! / 5).toInt(),
  );
}
