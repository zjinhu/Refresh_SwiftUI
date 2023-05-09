[![SPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/)
![Xcode 14.2+](https://img.shields.io/badge/Xcode-14.2%2B-blue.svg)
![iOS 13.0+](https://img.shields.io/badge/iOS-14.0%2B-blue.svg)
![SwiftUI 3.0+](https://img.shields.io/badge/SwiftUI-3.0%2B-orange.svg)

在 [Refresh](https://github.com/wxxsw/Refresh) 的基础上添加默认样式

默认样式

```
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

自定义样式

```
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

## 安装

### cocoapods

1.在 Podfile 中添加 `pod ‘Refresh_SwiftUI’`

2.执行 `pod install 或 pod update`

3.导入 `import Refresh_SwiftUI`

### Swift Package Manager

从 Xcode 11 开始，集成了 Swift Package Manager，使用起来非常方便。HUD 也支持通过 Swift Package Manager 集成。

在 Xcode 的菜单栏中选择 `File > Swift Packages > Add Pacakage Dependency`，然后在搜索栏输入

`https://github.com/jackiehu/Refresh_SwiftUI`，即可完成集成

### 手动集成

只需把Sources文件夹中的Refresh_SwiftUI文件夹拖进需要集成的项目即可

## 更多砖块工具加速APP开发

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftMediator&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftMediator)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftShow&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftShow)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftLog&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftLog)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftyForm&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftyForm)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftEmptyData&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftEmptyData)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftPageView&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftPageView)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=JHTabBarController&theme=radical&locale=cn)](https://github.com/jackiehu/JHTabBarController)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftMesh&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftMesh)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftNotification&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftNotification)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftNetSwitch&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftNetSwitch)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftButton&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftButton)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftDatePicker&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftDatePicker)

