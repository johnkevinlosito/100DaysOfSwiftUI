# Day 32 – Project 6: Animations part 1

_[https://www.hackingwithswift.com/100/swiftui/32](https://www.hackingwithswift.com/100/swiftui/32)_

## Creating implicit animations

We can ask SwiftUI to create an implicit animation for our changes so that all the property changes happens smoothly by adding an `animation()` modifier to the view.

```swift
@State private var animationAmount = 1.0
var body: some View {
    Button("Tap Me") {
        animationAmount += 1
    }
    .padding(50)
    .background(.red)
    .foregroundColor(.white)
    .clipShape(Circle())
    .scaleEffect(animationAmount)
    .blur(radius: (animationAmount - 1) * 3)
    .animation(.default, value: animationAmount)
}
```

## Customizing animations

SwiftUI gives us plenty of tools to craft easing functions in the argument that we pass to .animation.

```swift
Button("Tap Me") {
//
}
.padding(50)
.background(.red)
.foregroundColor(.white)
.clipShape(Circle())
.overlay(
    Circle()
        .stroke(.red)
        .scaleEffect(animationAmount)
        .opacity(2 - animationAmount)
        .animation(
            .easeInOut(duration: 1)
            .repeatForever(autoreverses: false),
            value: animationAmount
        )
)
.onAppear {
    animationAmount = 2
}
```

## Animating bindings

The `animation()` modifier can be applied to any SwiftUI binding, which causes the value to animate between its current and new value. With this variant of the `animation()` modifier, we don’t need to specify which value we’re watching for changes

```swift
VStack {
    Stepper("Scale amount", value: $animationAmount.animation(.easeInOut(duration: 1)
        .repeatCount(3, autoreverses: true)), in: 1...10)

    Spacer()

    Button("Tap Me") {
        animationAmount += 1
    }
    .padding(40)
    .background(.red)
    .foregroundColor(.white)
    .clipShape(Circle())
    .scaleEffect(animationAmount)
}
```

## Explicit animations

We can explicitly ask SwiftUI to animate when a state change by using `withAnimation()` closure

```swift
Button("Tap Me") {
    // animate
    withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
        animationAmount += 360
    }
}
.padding(50)
.background(.red)
.foregroundColor(.white)
.clipShape(Circle())
.rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
```
