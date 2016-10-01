import Spectre
import CardKit


func testDeck() {
  describe("Deck") {
    $0.describe("shuffling") {
      $0.it("returns a new deck in a different order") {
        let deck = Card.all()
        let shuffledDeck = deck.shuffled()

        try expect(deck.count) == shuffledDeck.count
      }

      $0.it("shuffles a mutable collection in-place") {
        let deck = Card.all()
        var shuffledDeck = deck
        shuffledDeck.shuffle()

        try expect(deck.count) == shuffledDeck.count
      }
    }
  }
}
