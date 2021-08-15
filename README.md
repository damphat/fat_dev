# fat_dev
flutter development tools

## Usage

```dart
    FatDev({
        'actions': {
            'login': () => login(user, password),
        },
        'state': {
            'profile': profile,
            'friends': friendList,
        },
        'complex': () => Future.value(Stream.fromIterable([[1, 2], 3])),
        'widget': CircleAvatar(),
    })
```