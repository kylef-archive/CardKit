import Darwin

extension Collection {
  /// Returns a shuffled array
  public func shuffled() -> [Generator.Element] {
    var array = Array(self)
    array.shuffle()
    return array
  }
}

extension MutableCollection where Index == Int {
  /// Shuffle elements in-place
  mutating public func shuffle() {
    for index in startIndex ..< (endIndex - 1) {
      let newIndex = Int(arc4random_uniform(UInt32(endIndex - index))) + index

      if newIndex != index {
        swap(&self[index], &self[newIndex])
      }
    }
  }
}
