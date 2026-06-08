import 'dart:async';
import 'dart:math';

Future<String> fetchUser() async {
  await Future.delayed(Duration(seconds: 2));

  if (Random().nextBool()) {
    throw Exception("Failed to fetch user");
  }

  return "User data loaded successfully";
}

Stream<int> countdown(int start) async* {
  for (int i = start; i >= 1; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Future<void> main() async {
  try {
    print("Fetching user...");
    String result = await fetchUser();
    print(result);
  } catch (e) {
    print("Error: $e");
  }

  print("\nCountdown:");

  await for (var tick in countdown(5)) {
    print(tick);
  }

  print("Done!");
}