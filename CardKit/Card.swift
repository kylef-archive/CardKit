public struct Card : Equatable {
  public let suit: Suit
  public let value: Value

  public init(suit: Suit, value: Value) {
    self.suit = suit
    self.value = value
  }
}

public func == (lhs: Card, rhs: Card) -> Bool {
  return lhs.suit == rhs.suit && lhs.value == rhs.value
}

extension Card : Hashable {
  public var hashValue: Int {
    return suit.hashValue
  }
}
