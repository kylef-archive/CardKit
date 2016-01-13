public enum Value : String {
  case Ace    = "A"
  case Two    = "2"
  case Three  = "3"
  case Four   = "4"
  case Five   = "5"
  case Six    = "6"
  case Seven  = "7"
  case Eight  = "8"
  case Nine   = "9"
  case Ten    = "10"
  case Jack   = "J"
  case Queen  = "Q"
  case King   = "K"

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
    return self.rawValue
  }
}
