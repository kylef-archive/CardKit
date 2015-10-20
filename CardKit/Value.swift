public enum Value {
  case Ace
  case Two
  case Three
  case Four
  case Five
  case Six
  case Seven
  case Eight
  case Nine
  case Ten
  case Jack
  case Queen
  case King

  /// Returns all possible values
  static var all: [Value] {
    return [
      .Ace, .Two, .Three, .Four, .Five, .Six, .Seven, .Eight, .Nine, .Ten,
      .Jack, .Queen, .King
    ]
  }
}

extension Value : CustomStringConvertible {
  public var description: String {
    switch self {
    case Ace:
      return "A"
    case Two:
      return "2"
    case Three:
      return "3"
    case Four:
      return "4"
    case Five:
      return "5"
    case Six:
      return "6"
    case Seven:
      return "7"
    case Eight:
      return "8"
    case Nine:
      return "9"
    case Ten:
      return "10"
    case Jack:
      return "J"
    case Queen:
      return "Q"
    case King:
      return "K"
    }
  }
}
