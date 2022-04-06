# Day 16 – WeSplit part 1

_[https://www.hackingwithswift.com/100/swiftui/16](https://www.hackingwithswift.com/100/swiftui/16)_

Project directory can be found [here](../../projects/WeSplit/)

## Creating project

1. Launch Xcode, then choose _Create A New Xcode Project_ or `File > New > Project`. Choose `iOS` then `App`. Click Next.
2. Enter product name, e.g., WeSplit.
3. Enter organization identifier. This is usually your own domain in reverse, e.g., `com.johnkevinlosito`. If you don't have a domain, just enter something like: `me.lastname.firstname`.
4. For Interface, select SwiftUI.
5. For Language, select Swift.

Sample initial code:

```swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

## Creating a Form

SwiftUI has a dedicated Form view for handling data entry. Forms are scrolling lists of static controls

```swift
var body: some View {
    Form {
        Text("Hello, world!")
            .padding()
    }
}
```

## Adding navigation bar

Navigation bars get added to views wrapped in a NavigationView view. You can as well add title and change the font by adding modifiers `.navigationTitle()` and `.navigationBarTitleDisplayMode(.inline)`

```swift
NavigationView {
    Form {
        Section {
            Text("Hello, world!")
        }
    }
    .navigationTitle("SwiftUI")
    .navigationBarTitleDisplayMode(.inline)
}
```

## Modifying Program State

SwiftUI views are structs but we can't update properties using `mutating` functions. Instead, we use `@State` property wrapper. It allows properties to be stored separately by SwiftUI in a place that can be modified.

```swift
struct ContentView: View {
    @State var tapCount = 0

    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
    }
}
```

## Binding state to UI controls

We create two-way binding when we want to pass a state to a view and update/sync the changes back to the source state. Use `$` as a prefix for the state.

```swift
struct ContentView: View {
    @State private var name = ""

    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Hello, world!")
        }
    }
}
```

## Creating views in a loop

`ForEach` is a view type for looping over arrays/ranges and to create others views with every iteration. `ForEach` is particularly useful when working with SwiftUI’s `Picker` view, which lets us show various options for users to select from.

```swift
struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"

    var body: some View {
        Picker("Select your student", selection: $selectedStudent) {
            ForEach(0 ..< students.count) {
                Text(self.students[$0])
            }
        }
    }
}
```

Sample code for this topic:

```swift
import SwiftUI

struct ContentView: View {

    @State private var tapCount = 0
    @State private var name = ""

    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = ""

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Hello, world!!")
                    Text("Hello, world!!")
                    Text("Hello, world!!")
                }
                TextField("Enter your name", text: $name)
                Text("Your name is \(name)")
                Button("Tap count: \(tapCount)") {
                    tapCount+=1
                }
                Section {
                    ForEach(0..<5) { number in
                        Text("Row \(number)")
                    }
                }
                Section {
                    Picker("Select your student", selection: $selectedStudent) {
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```
