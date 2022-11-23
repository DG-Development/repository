abstract class DataContext<Key> {

  void dispose();
  Future<void> connection({required String appId, required String apiUrl, required String clientKey, required String liveQueryUrl});

  Future<Map<String, dynamic>> readByKey({required String tableName, required Key key});
  Future<List<dynamic>> readAll({required String tableName});
  Future<Key?> add({required String tableName, required Map<String, dynamic> data});
  void remove({required String tableName, required String key});
  Future<List<dynamic>> readWhereContain({required String tableName, Map<String, String>? constraint});
}
