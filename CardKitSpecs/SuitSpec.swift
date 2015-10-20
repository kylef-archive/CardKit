import Spectre
import CardKit


describe("Suit") {
  $0.it("is equatable") {
    try equal(Suit.Spade, Suit.Spade)
    try notEqual(Suit.Spade, Suit.Heart)
  }

  $0.it("is hashable") {
    try equal(Suit.Spade.hashValue, Suit.Spade.hashValue)
  }

  $0.describe("custom string convertible") {
    $0.it("describes spade") {
      try equal(Suit.Spade.description, "Spade")
    }

    $0.it("describes heart") {
      try equal(Suit.Heart.description, "Heart")
    }

    $0.it("describes diamond") {
      try equal(Suit.Diamond.description, "Diamond")
    }

    $0.it("describes club") {
      try equal(Suit.Club.description, "Club")
    }
  }
}
