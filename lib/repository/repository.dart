abstract class IRepository<Entity, Key> {

  Future<List<Entity>> readAll() ;
  Future<Entity?> readByKey(Key key);
  Future<Entity?> add(Entity entity);
  Future<Entity?> update(Entity entity);
  Future<Entity?> remove(Entity entity);
  Future<List<Entity>> readAllData(int no);
  Future<List<Entity>> readDataByKey(String key);
}
