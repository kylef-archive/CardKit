# CardKit

CardKit provides model structures for building playable card games.

## Usage

Creating a card

```swift
let card = Card(suit: .Heart, value: .Ace)
```

Creating a deck of cards

```swift
let deck = Card.all()
```

Shuffling (in-place)

```swift
deck.shuffle()
```

New shuffled array of cards

```swift
let suffledDeck = deck.shuffled()
```

## Installation

[CocoaPods](http://cocoapods.org/) or [Conche](https://github.com/kylef/Conche)
are the recommended and supported installation methods.

```ruby
pod 'CardKit'
```

## License

CardKit is licensed under the BSD license. See [LICENSE](LICENSE) for more
info.
