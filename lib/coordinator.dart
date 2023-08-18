abstract class Coordinator {
  Future<void> start ();
  Future<void> move (String to);
  Future<void> end ();
}