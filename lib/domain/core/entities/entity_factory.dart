abstract class EntityFactory<E, D> {
  E fromDto(D dto);
  D toDto(E entity);
}
