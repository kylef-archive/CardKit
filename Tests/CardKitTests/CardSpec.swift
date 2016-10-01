import Spectre
import CardKit


func testCard() {
  describe("Card") {
    let card = Card(suit: .spade, value: .ace)

    $0.it("has a suit") {
      try expect(card.suit) == .spade
    }

    $0.it("has a value") {
      try expect(card.value) == .ace
    }

    $0.describe("equatable") {
      $0.it("returns true when the card has the same suit and value") {
        try expect(card) == Card(suit: .spade, value: .ace)
      }

      $0.it("returns false when the card has a different suit") {
        try expect(card) != Card(suit: .heart, value: .ace)
      }

      $0.it("returns false when the card has a different value") {
        try expect(card) != Card(suit: .spade, value: .two)
      }
    }

    $0.it("is hashable") {
      try expect(card.hashValue) == Card(suit: .spade, value: .ace).hashValue
    }

    $0.it("provides all cards") {
      let deck = Card.all()

      // Ensure that all cards are unique
      try expect(Set(deck).count) == 52
    }
  }
}
