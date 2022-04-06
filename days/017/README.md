# Day 17 – WeSplit part 2

_[https://www.hackingwithswift.com/100/swiftui/17](https://www.hackingwithswift.com/100/swiftui/17)_

Project directory can be found [here](../../projects/WeSplit/)

## Reading text from the user with TextField

This project is a check-splitting app, and we need users to enter the cost of their check, how many people are sharing the cost, and how much tip they want to leave. We need to add 3 `@State` properties for these in the `ContentView` struct.

```swift
@State private var checkAmount = 0.0
@State private var numberOfPeople = 2
@State private var tipPercentage = 20
```

Add a form with a `TextField` for the check amount and format it as currency.

```swift
Form {
    Section {
        TextField("Amount", text: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
    }
}
```

Change the keyboard type of the `TextField` by adding `keyboardType()` modifier.

```swift
TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
    .keyboardType(.decimalPad)
```

## Creating pickers in a form

Add pickers to let users pick the number of people who will share the total amount.

```swift
// TextField code

Picker("Number of people", selection: $numberOfPeople) {
    ForEach(2 ..< 100) {
        Text("\($0) people")
    }
}
```

The `Picker` inside a `Form` by default shows a new view, so the form needs to be wrapped inside a `NavigationView` for this to work properly

```swift
var body: some View {
    NavigationView {
        Form {
            // everything inside your form
        }
    }
}
```

To add a title to the navigation bar, add a modifier to the form.

```swift
Form {
    // everything inside your form
}
.navigationTitle("WeSplit")
```

## Calculating the total per person

```swift
var totalPerPerson: Double {
    let peopleCount = Double(numberOfPeople + 2)
    let tipSelection = Double(tipPercentage)

    let tipValue = checkAmount / 100 * tipSelection
    let grandTotal = checkAmount + tipValue
    let amountPerPerson = grandTotal / peopleCount

    return amountPerPerson
}
```

## Hiding the keyboard

Add `@FocusState` to handle input focus.

```swift
@FocusState private var amountIsFocused: Bool
```

Bind the state to the `TextField` using the `.focused()` modifier.

```swift
TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
    .keyboardType(.decimalPad)
    .focused($amountIsFocused)
```

Add a toolbar on the keyboard with a button to hide it by adding `.toolbar` modifier on the form.

```swift
Form {
    // everything inside your form
}
.navigationTitle("WeSplit")
.toolbar {
    ToolbarItemGroup(placement: .keyboard) {
        Spacer()

        Button("Done") {
            amountIsFocused = false
        }
    }
}
```
