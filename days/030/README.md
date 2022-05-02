# Day 30 – Project 5: WordScramble part 2

_[https://www.hackingwithswift.com/100/swiftui/30](https://www.hackingwithswift.com/100/swiftui/30)_

## Running code when app launches

SwiftUI gives us a dedicated view modifier `onAppear()` for running a closure when a view is shown.

```swift
.onAppear(perform: functionToRun)
```

## Validating words with UITextChecker

In order to check if a word is "valid English", we can use `UITextChecker`.

```swift
func isReal(word: String) -> Bool {
    let checker = UITextChecker()
    let range = NSRange(location: 0, length: word.utf16.count)
    let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")

    return misspelledRange.location == NSNotFound
}
```
