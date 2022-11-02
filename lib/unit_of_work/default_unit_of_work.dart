import 'package:repository/entity/entity.dart';
import 'package:repository/repository.dart';
import 'package:repository/unit_of_work/unit_of_work.dart';

class DefaultUnitOfWork<TEntity extends Entity, Key> implements UnitOfWork<TEntity> {

  late List<Entity> _newEntity;
  late List<Entity> _deletedEntity;
  late List<Entity> _modifiedEntity;
  late IRepository<Entity, Key> repository;

  @override
  void commit(){
    _insertNew();
    _updateModified();
    _deleteRemoved();
  }

  @override
  void dispose() {

  }

  @override
  void registerNew(TEntity entity){
    if(entity.getKey() == 0) {
      return;
    }

    for (var element in _newEntity) {
      if(element == entity) {
        continue;
      }
    }


    for (var element in _deletedEntity) {
      if(element == entity) {
        continue;
      }
    }

    for (var element in _modifiedEntity) {
      if(element == entity) {
        continue;
      }
    }

    _newEntity.add(entity);
  }

  @override
  void registerDeleted(TEntity entity){
    if(entity.getKey() == 0) {
      return;
    }

    for (var element in _newEntity) {
      if(element == entity) {
        continue;
      }
    }

    for (var element in _deletedEntity) {
      if(element == entity) {
        continue;
      }
    }

    _deletedEntity.add(entity);
  }

  @override
  void registerModified(TEntity entity){
    if(entity.getKey() == 0) {
      return;
    }

    for (var element in _newEntity) {
      if(element == entity) {
        continue;
      }
    }

    for (var element in _deletedEntity) {
      if(element == entity) {
        continue;
      }
    }

    for (var element in _modifiedEntity) {
      if(element == entity) {
        continue;
      }
    }

    _modifiedEntity.add(entity);
  }

  ///Private function
  void _insertNew() {
  }

  void _updateModified() {

  }

  void _deleteRemoved() {

  }
}
