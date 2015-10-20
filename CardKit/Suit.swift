public enum Suit {
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
    switch self {
    case Spade:
      return "Spade"
    case Heart:
      return "Heart"
    case Diamond:
      return "Diamond"
    case Club:
      return "Club"
    }
  }
}
