---
date: 2022-04-02 21:03
description: A description of my first post.
tags: first, article
---

# Test


How to create one result builder.

```swift
@resultBuilder
struct StackBuilder {
    static func buildBlock() -> [UIView] { [] }
}

extension StackBuilder {
    static func buildBlock(_ views: UIView...) -> [UIView] {
        views
    }
}
```
