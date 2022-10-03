import 'package:ferry/ferry.dart';
import 'package:ferry/typed_links.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';

class GraphQLClientService {
  static Future<Client> get() async {
    await Hive.initFlutter();
    final box = await Hive.openBox("graphql");

    final store = HiveStore(box);

    final cache = Cache(store: store);

    final link = HttpLink('http://localhost:3000/graphql');

    final client = Client(
      link: link,
      cache: cache,
    );
    return client;
  }
}
