public enum Suit : String {
  case Spade
  case Heart
  case Diamond
  case Club

  /// Returns all possible suits
  static var all: [Suit] {
    return [.Spade, .Heart, .Diamond, .Club]
  }
}

extension Suit : CustomStringConvertible {
  public var description: String {
    return self.rawValue
  }
}
