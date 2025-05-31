# 🎯Difference between Any, AnyObject, and AnyHashable in Swift
[![Watch on YouTube](Image.png)](https://youtu.be/qivCX_4Tpkg)
This includes:
✅ Definitions
✅ Code examples
✅ Real-world use cases
✅ Common **interview questions**
✅ Sharable format for GitHub or blog

---

````markdown
# 🧠 Understanding Any, AnyObject, and AnyHashable in Swift

Swift provides several generalized types that allow developers to work with values of unknown or flexible types. The most commonly confused ones are:

- `Any`  
- `AnyObject`  
- `AnyHashable`

This guide explains what they are, how they’re different, and when to use each — especially important for iOS interview preparation.

---

## 🔍 1. What is `Any`?

`Any` can represent **any type**, including:
- Value types (`Int`, `String`, `Bool`, `Struct`)
- Reference types (`Class`)
- Even closures and tuples

### ✅ Example:

```swift
var value: Any = 42
value = "Pushpendra"
value = true
````

### 💡 Use Case:

When dealing with APIs, dynamic data (e.g., JSON), or general-purpose containers.

### ⚠️ Typecasting Required:

```swift
let value: Any = 10
if let number = value as? Int {
    print(number)
}
```

---

## 🧱 2. What is `AnyObject`?

`AnyObject` represents **only class instances** (reference types).

### ✅ Example:

```swift
class Dog {}
struct Cat {}

var obj: AnyObject = Dog()     // ✅
obj = Cat()                    // ❌ Struct not allowed
```

### 💡 Use Case:

* Working with Objective-C APIs
* Class-only protocol constraints
* Delegate patterns in UIKit

---

## 🧩 3. What is `AnyHashable`?

`AnyHashable` is a type-erased wrapper for any value that conforms to the `Hashable` protocol.
This allows mixing hashable types in dictionaries or sets.

### ✅ Example:

```swift
let set: Set<AnyHashable> = [1, "Pushpendra", true]
```

You can also use it as a dictionary key:

```swift
let dict: [AnyHashable: String] = [
    "id": "123",
    99: "age",
    true: "active"
]
```

---

## 📊 Summary Table

| Type          | Accepts          | Use Case                      | Notes                         |
| ------------- | ---------------- | ----------------------------- | ----------------------------- |
| `Any`         | All Swift types  | JSON, dynamic content         | Requires casting for use      |
| `AnyObject`   | Class types only | UIKit, Objective-C, delegates | Doesn’t work with struct/enum |
| `AnyHashable` | Hashable types   | Keys in Set/Dictionary        | Type-erased `Hashable` values |

---

## 🎯 Real-World Use Cases

* Storing API responses of mixed type → `Any`
* Delegates & Objective-C integration → `AnyObject`
* JSON parsing with dynamic keys → `AnyHashable`

---

## 🎓 Common Interview Questions

Here are some Swift interview questions on this topic:

1. ❓ What is the difference between `Any` and `AnyObject`?
2. ❓ Why would you use `AnyHashable` in a Swift Dictionary?
3. ❓ Can a struct conform to `AnyObject`? Why or why not?
4. ❓ How is type safety affected when using `Any`?
5. ❓ How does Swift handle type casting from `Any` to a specific type?
6. ❓ Give a real-world example of using `AnyHashable`.
7. ❓ When should you prefer `AnyObject` over `Any`?

---

## 📽 Related Video (YouTube)

📺 Watch: [Any vs AnyObject vs AnyHashable in Swift](https://youtu.be/qivCX_4Tpkg)

🎬 This is **Video #15** of my iOS Interview Preparation Series
Covering real-world Swift topics for beginners to advanced.

---

## 📅 1-on-1 Mentoring

Need help preparing for interviews or cleaning up your Swift code?

📌 Book a Consultation:
[https://topmate.io/pushpendra\_saini](https://topmate.io/pushpendra_saini)

---

## 🔖 Tags

`#SwiftProgramming` `#iOSInterviewPrep` `#SwiftAnyVsAnyObject` `#iOSDevelopment` `#PushpendraKumar` `#SwiftTips`

---

> “When types get flexible, your logic must stay strict.”
> — Pushpendra Kumar
