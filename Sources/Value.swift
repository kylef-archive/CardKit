public enum Value {
  case ace
  case two
  case three
  case four
  case five
  case six
  case seven
  case eight
  case nine
  case ten
  case jack
  case queen
  case king

  /// Returns all possible values
  static var all: [Value] {
    return [
      .ace, .two, .three, .four, .five, .six, .seven, .eight, .nine, .ten,
      .jack, .queen, .king
    ]
  }
}

extension Value : CustomStringConvertible {
  public var description: String {
    switch self {
    case .ace:
      return "A"
    case .two:
      return "2"
    case .three:
      return "3"
    case .four:
      return "4"
    case .five:
      return "5"
    case .six:
      return "6"
    case .seven:
      return "7"
    case .eight:
      return "8"
    case .nine:
      return "9"
    case .ten:
      return "10"
    case .jack:
      return "J"
    case .queen:
      return "Q"
    case .king:
      return "K"
    }
  }
}
