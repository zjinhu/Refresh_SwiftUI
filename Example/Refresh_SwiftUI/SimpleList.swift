//
//  SimpleList.swift
//  Demo
//
//  Created by Gesen on 2020/3/22.
//

import SwiftUI
import Refresh_SwiftUI
struct SimpleList: View {
    
    struct Item: Identifiable {
        let id = UUID()
        let color: Color
        let contentHeight: CGFloat
    }
    
    @State private var items: [Item] = []
    @State private var headerRefreshing: Bool = false
    @State private var footerRefreshing: Bool = false
    @State private var noMore: Bool = false
    
    var body: some View {
        ScrollView {
            
            if items.count > 0 {
//自定义样式
//                RefreshHeader(refreshing: $headerRefreshing, action: {
//                    self.reload()
//                }) { progress in
//                    if self.headerRefreshing {
//                        SimpleRefreshingView()
//                    } else {
//                        SimplePullToRefreshView(progress: progress)
//                    }
//                }
                //默认样式
                DefaultRefreshHeader(refreshing: $headerRefreshing, refreshText: "123") {
                    self.reload()
                }
            }
            
            
            ForEach(items) { item in
                SimpleCell(item: item)
            }
             
            
            if items.count > 0 {
//自定义样式
//                RefreshFooter(refreshing: $footerRefreshing, action: {
//                    self.loadMore()
//                }) {
//                    if self.noMore {
//                        Text("No more data !")
//                            .foregroundColor(.secondary)
//                            .padding()
//                    } else {
//                        SimpleRefreshingView()
//                            .padding()
//                    }
//                }
//                .noMore(noMore)
//                .preload(offset: 50)
                //默认样式
                DefaultRefreshFooter(refreshing: $footerRefreshing, noMoreText: "345") {
                    self.loadMore()
                }
                .noMore(noMore)
                .preload(offset: 50)
            }
        }
        .enableRefresh()
        .overlay(Group {
            if items.count == 0 {
                ProgressView()
            } else {
                EmptyView()
            }
        })
        .onAppear { self.reload() }
    }
    
    func reload() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.items = SimpleList.generateItems(count: 20)
            self.headerRefreshing = false
            self.noMore = false
        }
    }
    
    func loadMore() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.items += SimpleList.generateItems(count: 10)
            self.footerRefreshing = false
            self.noMore = self.items.count > 50
        }
    }
}

extension SimpleList {
    
    static func generateItems(count: Int) -> [Item] {
        (0 ..< count).map { _ in
            Item(
                color: Color(
                    red: Double.random(in: 0 ..< 255) / 255,
                    green: Double.random(in: 0 ..< 255) / 255,
                    blue: Double.random(in: 0 ..< 255) / 255
                ),
                contentHeight: CGFloat.random(in: 100 ..< 200)
            )
        }
    }
}
