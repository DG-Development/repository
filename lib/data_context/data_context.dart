abstract class DataContext<Key> {

  void dispose();
  Future<void> connection({required String appId, required String apiUrl, required String clientKey, required String liveQueryUrl});

  Future<Map<String, dynamic>> readByKey({required String tableName, required Key key});
  Future<List<dynamic>> readAll({required String tableName});
  Future<Key?> add({required String tableName, required Map<String, dynamic> data});
  void remove({required String tableName, required String key});
  Future<List<dynamic>> readWhereContain({required String tableName, Map<String, String>? constraint});
  Future<bool> addNewData({required String tableName, required Map<String, dynamic> data});
  Future<List<dynamic>> readAllData({required String tableName,required bool archive,required int pageNumber});
  Future<List<dynamic>> readDataByKey({required String tableName, required Key key});
}
