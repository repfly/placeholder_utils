# placeholder_utils
<a href="https://github.com/repfly/placeholder_utils/actions?style=plastic"><img src="https://github.com/repfly/placeholder_utils/workflows/CI/badge.svg?style=plastic" alt="Build Status"></a>
<a href="https://opensource.org/licenses/MIT" target="_blank"><img src="https://img.shields.io/badge/License-MIT-yellow.svg?style=plastic"/></a>
<img src="https://img.shields.io/github/last-commit/repfly/placeholder_utils?style=plastic"/>

**A set of functions and widgets to help people on development process.**



### Current Features

### **Generating lorem ipsum**

```dart
loremIpsum(
    paragraphs: 1,
    words: 10,
    initWithLorem: true
    );
```

You also can delay the return by calling ``futureLoremIpsum()`` by passing a ``duration``. 

### **Generating random bool value**

```dart
getRandomBool();
```

You also can delay the return by calling ``getFutureBool()`` by passing a ``duration``. 

### **Generate and return either ``double`` or ``int``**

In some cases, it can be needed to test both types.

```dart
getDoubleOrInt(number = 1);
```
### 