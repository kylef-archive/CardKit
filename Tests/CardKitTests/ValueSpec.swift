import Spectre
import CardKit


func testValue() {
  describe("Value") {
    $0.it("is equatable") {
      try expect(Value.ace) == Value.ace
      try expect(Value.ace) != Value.two
    }

    $0.it("is hashable") {
      try expect(Value.ace.hashValue) == Value.ace.hashValue
    }

    $0.describe("custom string convertible") {
      $0.it("describes an ace") {
        try expect(Value.ace.description) == "A"
      }

      $0.it("describes a two") {
        try expect(Value.two.description) == "2"
      }

      $0.it("describes a three") {
        try expect(Value.three.description) == "3"
      }

      $0.it("describes a four") {
        try expect(Value.four.description) == "4"
      }

      $0.it("describes a five") {
        try expect(Value.five.description) == "5"
      }

      $0.it("describes a six") {
        try expect(Value.six.description) == "6"
      }

      $0.it("describes a seven") {
        try expect(Value.seven.description) == "7"
      }

      $0.it("describes an eight") {
        try expect(Value.eight.description) == "8"
      }

      $0.it("describes a nine") {
        try expect(Value.nine.description) == "9"
      }

      $0.it("describes a ten") {
        try expect(Value.ten.description) == "10"
      }

      $0.it("describes a jack") {
        try expect(Value.jack.description) == "J"
      }

      $0.it("describes a queen") {
        try expect(Value.queen.description) == "Q"
      }

      $0.it("describes a king") {
        try expect(Value.king.description) == "K"
      }
    }
  }
}
