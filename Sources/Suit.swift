public enum Suit {
  case spade
  case heart
  case diamond
  case club

  /// Returns all possible suits
  static var all: [Suit] {
    return [.spade, .heart, .diamond, .club]
  }
}

extension Suit : CustomStringConvertible {
  public var description: String {
    switch self {
    case .spade:
      return "Spade"
    case .heart:
      return "Heart"
    case .diamond:
      return "Diamond"
    case .club:
      return "Club"
    }
  }
}
