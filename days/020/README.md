# Day 20 – Project 2: Guess the Flag part 1

_[https://www.hackingwithswift.com/100/swiftui/20](https://www.hackingwithswift.com/100/swiftui/20)_

Part 1 is an introduction to the project app which focuses on new SwiftUI views that will be used for the app.

## Using stacks to arrange views

There are views that are useful if you want to render multiple views: `VStack`, `HStack`, `ZStack`.

### VStack

Use this to place two or more views one after the other, vertically stacked.

```swift
var body: some View {
    VStack {
        Text("Hello, world!")
        Text("This is inside a stack")
    }
}
```

You can add spacing between views as well as aligning them using `spacing` and `alignment` property respectively.

```swift
VStack(alignment: .leading, spacing: 20) {
    Text("Hello, world!")
    Text("This is inside a stack")
}
```

### HStack

This is the same with `VStack`, just stacking the views horizontally.

```swift
HStack(spacing: 20) {
    Text("Hello, world!")
    Text("This is inside a stack")
}
```

### ZStack

ZStack is for arranging things by depth which makes views overlap each other.

```swift
ZStack {
    Text("Hello, world!")
    Text("This is inside a stack")
}
```

## Colors and frames

Color is a view itself. Colors automatically take up all the space available. Use ` frame()` modifier to set specific size.

```swift
ZStack {
    Color.red
        .frame(width: 200, height: 200)
    Text("Your content")
}
```

You can also specify minimum and maximum widths and heights.

```swift
Color.red
    .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
```

## Gradients

There are three kinds of gradient to use: `LinearGradient`, `RadialGradient`, and `AngularGradient`.

### LinearGradient

Linear gradient goes in one direction.

```swift
LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
```

You can also provide gradient stops, which let you specify both a color and how far along the gradient the color should be used.

```swift
LinearGradient(gradient: Gradient(stops: [
    Gradient.Stop(color: .white, location: 0.45),
    Gradient.Stop(color: .black, location: 0.55),
]), startPoint: .top, endPoint: .bottom)
```

### RadialGradient

Radial gradients move outward in a circle shape

```swift
RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
```

### AngularGradient

Angular gradient cycles colors around a circle rather than radiating outward, and can create some beautiful effects.

```swift
AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
```

## Buttons and images

There are few different ways we can customize the way buttons look. First is by `role`.

```swift
Button("Delete selection", role: .destructive){}
```

Second, we can use one of the built-in styles for buttons: `.bordered` and `.borderedProminent`, as well as using `tint()` modifier to customize the colors used for a bordered button

```swift
VStack {
    Button("Button 1") { }
        .buttonStyle(.bordered)
    Button("Button 2", role: .destructive) { }
        .buttonStyle(.bordered)
    Button("Button 3") { }
        .buttonStyle(.borderedProminent)
        .tint(.mint)
    Button("Button 4", role: .destructive) { }
        .buttonStyle(.borderedProminent)
}
```

If you want to customize the label or use `Image` instead, you can use a second trailing closure.

```swift
VStack {
    Button {
        print("Button was tapped")
    } label: {
        Text("Tap me!")
            .padding()
            .foregroundColor(.white)
            .background(.red)
    }
    Button {
        print("Edit button was tapped")
    } label: {
        Image(systemName: "pencil")
    }
    Button {
        print("Edit button was tapped")
    } label: {
        Label("Edit", systemImage: "pencil")
    }
}
```

## Showing alert messages

Alerts exist as another modifier on a view, which binds to a certain piece of state to know whether or not it should be shown.

```swift
@State private var isShowingAlert = false

var body: some View {
    Button("Show Alert") {
        self.isShowingAlert = true
    }
    .alert("Important message", isPresented: $isShowingAlert) {
        Button("Cancel", role: .cancel) { }
        Button("Delete", role: .destructive) { }
    } message: {
        Text("Please read this.")
    }
}
```
