import Darwin

extension CollectionType {
  /// Returns a shuffled array
  public func shuffled() -> [Generator.Element] {
    var array = Array(self)
    array.shuffle()
    return array
  }
}

extension MutableCollectionType where Index == Int {
  /// Shuffle elements in-place
  mutating public func shuffle() {
    for index in 0 ..< (count - 1) {
      let newIndex = Int(arc4random_uniform(UInt32(count - index))) + index

      if newIndex != index {
        swap(&self[index], &self[newIndex])
      }
    }
  }
}
