# Day 29 – Project 5: WordScramble part 1

_[https://www.hackingwithswift.com/100/swiftui/29](https://www.hackingwithswift.com/100/swiftui/29)_

This app is a game that will show players a random eight-letter word, and ask them to make words out of it. This app also introduced `List`, `onAppear()`, `Bundle`, `fatalError()`, and others.

## List

`List` is used to provide a scrolling table of data, much like `Form`. You can also integrate static and dynamic content within the same List element

```swift
List {
    Section(header: Text("Section 1")) {
        Text("Static row 1")
        Text("Static row 2")
    }

    Section(header: Text("Section 2")) {
        ForEach(0..<5) {
            Text("Dynamic row \($0)")
        }
    }

    Section(header: Text("Section 3")) {
        Text("Static row 3")
        Text("Static row 4")
    }
}
```

## Loading resources from your app bundle

Whenever we have something in our app's Bundle that we want to deal with in code, we first need to locate it with a URL. If we want to read the URL for a file in our main app bundle, we use Bundle.main.url(). If the file exists it will be sent back to us, otherwise we’ll get back nil, so this is an optional URL.

```swift
if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
    // we found the file in our bundle!
    if let fileContents = try? String(contentsOf: fileURL) {
        // we loaded the file into a string!
    }
}
```
