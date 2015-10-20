import Spectre
import CardKit


describe("Card") {
  let card = Card(suit: .Spade, value: .Ace)

  $0.it("has a suit") {
    try equal(card.suit, .Spade)
  }

  $0.it("has a value") {
    try equal(card.value, .Ace)
  }

  $0.describe("equatable") {
    $0.it("returns true when the card has the same suit and value") {
      try equal(card, Card(suit: .Spade, value: .Ace))
    }

    $0.it("returns false when the card has a different suit") {
      try notEqual(card, Card(suit: .Heart, value: .Ace))
    }

    $0.it("returns false when the card has a different value") {
      try notEqual(card, Card(suit: .Spade, value: .Two))
    }
  }

  $0.it("is hashable") {
    try equal(card.hashValue, Card(suit: .Spade, value: .Ace).hashValue)
  }

  $0.it("provides all cards") {
    let deck = Card.all()

    // Ensure that all cards are unique
    try equal(Set(deck).count, 52)
  }
}
