import Spectre
import CardKit


describe("Value") {
  $0.it("is equatable") {
    try equal(Value.Ace, Value.Ace)
    try notEqual(Value.Ace, Value.Two)
  }

  $0.it("is hashable") {
    try equal(Value.Ace.hashValue, Value.Ace.hashValue)
  }

  $0.describe("custom string convertible") {
    $0.it("describes an ace") {
      try equal(Value.Ace.description, "A")
    }

    $0.it("describes a two") {
      try equal(Value.Two.description, "2")
    }

    $0.it("describes a three") {
      try equal(Value.Three.description, "3")
    }

    $0.it("describes a four") {
      try equal(Value.Four.description, "4")
    }

    $0.it("describes a five") {
      try equal(Value.Five.description, "5")
    }

    $0.it("describes a six") {
      try equal(Value.Six.description, "6")
    }

    $0.it("describes a seven") {
      try equal(Value.Seven.description, "7")
    }

    $0.it("describes an eight") {
      try equal(Value.Eight.description, "8")
    }

    $0.it("describes a nine") {
      try equal(Value.Nine.description, "9")
    }

    $0.it("describes a ten") {
      try equal(Value.Ten.description, "10")
    }

    $0.it("describes a jack") {
      try equal(Value.Jack.description, "J")
    }

    $0.it("describes a queen") {
      try equal(Value.Queen.description, "Q")
    }

    $0.it("describes a king") {
      try equal(Value.King.description, "K")
    }
  }
}
