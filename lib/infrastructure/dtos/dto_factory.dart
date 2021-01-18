abstract class DtoFactory<D> {
  Map<String, dynamic> toJson(D dto);
  D fromJson(Map<String, dynamic> json);
}
