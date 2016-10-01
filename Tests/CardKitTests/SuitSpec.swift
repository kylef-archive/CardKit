import Spectre
import CardKit


func testSuit() {
  describe("Suit") {
    $0.it("is equatable") {
      try expect(Suit.spade) == Suit.spade
      try expect(Suit.spade) != Suit.heart
    }

    $0.it("is hashable") {
      try expect(Suit.spade.hashValue) == Suit.spade.hashValue
    }

    $0.describe("custom string convertible") {
      $0.it("describes spade") {
        try expect(Suit.spade.description) == "Spade"
      }

      $0.it("describes heart") {
        try expect(Suit.heart.description) == "Heart"
      }

      $0.it("describes diamond") {
        try expect(Suit.diamond.description) == "Diamond"
      }

      $0.it("describes club") {
        try expect(Suit.club.description) == "Club"
      }
    }
  }
}
