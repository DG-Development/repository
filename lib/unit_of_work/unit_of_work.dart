abstract class UnitOfWork<Entity> {

  void commit();
  void dispose();
  void registerNew(Entity entity);
  void registerDeleted(Entity entity);
  void registerModified(Entity entity);
}
