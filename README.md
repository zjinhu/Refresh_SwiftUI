[![SPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/)
![Xcode 14.2+](https://img.shields.io/badge/Xcode-14.2%2B-blue.svg)
![iOS 13.0+](https://img.shields.io/badge/iOS-14.0%2B-blue.svg)
![SwiftUI 3.0+](https://img.shields.io/badge/SwiftUI-3.0%2B-orange.svg)

Add default styles based on [Refresh](https://github.com/wxxsw/Refresh)

default style

```swift
ScrollView {
        DefaultRefreshHeader(refreshing: $headerRefreshing, refreshText: "123") {
                self.reload()
        }

        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 1)){

        }

       DefaultRefreshFooter(refreshing: $footerRefreshing, noMoreText: "345") {
           self.loadMore()
       }
       .noMore(noMore)
       .preload(offset: 50)

}
.enableRefresh()
```

custom style

```swift
ScrollView {
    RefreshHeader(refreshing: $headerRefreshing, action: reload) { progress in
        if self.headerRefreshing {
            Text("refreshing...")
        } else {
            Text("Pull to refresh")
        }
    }

    ForEach(items) { item in
        YourCell(item: item)
    }

    RefreshFooter(refreshing: $footerRefreshing, action: loadMore) {
        if self.noMore {
            Text("No more data !")
        } else {
            Text("refreshing...")
        }
    }
    .noMore(noMore)
    .preload(offset: 50)
}
.enableRefresh()
```

## Install

### Cocoapods

1. Add `pod 'Refresh_SwiftUI'` in Podfile

2. Execute `pod install or pod update`

3. Import `import Refresh_SwiftUI`

### Swift Package Manager

Starting from Xcode 11, the Swift Package Manager is integrated, which is very convenient to use. HUD also supports integration via Swift Package Manager.

Select `File > Swift Packages > Add Pacakage Dependency` in Xcode's menu bar, and enter in the search bar

`https://github.com/jackiehu/Refresh_SwiftUI`, you can complete the integration

### Manual integration

Just drag the Refresh_SwiftUI folder in the Sources folder into the project that needs to be integrated

## More tools to speed up APP development

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftMediator&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftMediator)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftLog&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftLog)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftMesh&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftMesh)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftNotification&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftNotification)
