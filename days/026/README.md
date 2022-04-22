# Day 26 – Stepper, Dates, and Create ML

_[https://www.hackingwithswift.com/100/swiftui/26](https://www.hackingwithswift.com/100/swiftui/26)_

## Stepper

`Stepper` is a way to let users enter number using buttons with `+` and `-`.

```swift
@State private var sleepAmount = 8.0

var body: some View {
    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
}
```

The parameters `in` and `step` are optional, which you will use if you want to have min-max range and increment value, respectively.

## DatePicker

`DatePicker` is a dedicated view for working and binding `Date` properties.

```swift
@State private var wakeUp = Date.now

var body: some View {
    DatePicker("Please enter a date", selection: $wakeUp,in: Date.now..., displayedComponents: .date)
}
```

The parameters `in` and `displayedComponents` are used if you want to have specific date ranges, and show only specific date components(`.date` will show month, day, and year, and `.hourAndMinute` shows just the hour and minute components). These parameters are optional.

If you want to hide the text, e.g., `Please enter a date`, use the `.labelsHidden()` on the `DatePicker`.

## Date formatting

```swift
Text(Date.now, format: .dateTime.hour().minute())
Text(Date.now, format: .dateTime.day().month().year())
Text(Date.now.formatted(date: .long, time: .shortened))
```

## Training a model with Create ML

Apple has their own framework for machine learning called `Core ML` and `Create ML`. Apple also introduced `Create ML app` that made the process easy of adding machine learning to any app.

Machine learning is done in two steps: we train the model, then we ask the model to make predictions.

Create ML can be launched from Xcode, then go to Xcode menu and choosing `Open Developer Tool` > `Create ML`.
