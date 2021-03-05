Future<void> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 2), () => print('Hello everyone'));
}

Future<String> createOrderMessage() async {
  var order = await fetchUserOrder1();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder1() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      Duration(seconds: 2),
      () => 'Large Latte',
    );

Future<void> main(List<String> args) async {
  await fetchUserOrder();
  print('object');
  print('Fetching user order...');
  print(await createOrderMessage());

  var myFuture = Future(() {
    return 'hello';
  });

  print('1');
  await myFuture
      .then((value) => print(value))
      .catchError((error) => print(error))
      .then((value) => print('value'));

  print('2');
}
