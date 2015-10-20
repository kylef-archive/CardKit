public struct Card : Equatable {
  public let suit: Suit
  public let value: Value

  public init(suit: Suit, value: Value) {
    self.suit = suit
    self.value = value
  }

  /// Returns all possible cards
  public static func all() -> [Card] {
    return Suit.all.reduce([]) { accumulator, suit in
      accumulator + Value.all.map {
        Card(suit: suit, value: $0)
      }
    }
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
