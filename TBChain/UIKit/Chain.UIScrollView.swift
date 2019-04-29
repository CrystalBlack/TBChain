//
// Created by 尹乾鹏 on 2019-04-21.
// Copyright (c) 2019 pureblack. All rights reserved.
//

import Foundation
import UIKit

extension ChainBoxContainer where T: UIScrollView {

    /// 内容偏离值
    ///
    /// - default contentOffset: CGPoint.zero
    @discardableResult
    public func contentOffset(_ contentOffset: CGPoint = .zero) -> ChainBoxContainer<T> {
        self.value.contentOffset = contentOffset
        return self.value.c
    }

    /// 内容大小
    ///
    /// - default contentSize: CGSize.zero
    @discardableResult
    public func contentSize(_ contentSize: CGSize = .zero) -> ChainBoxContainer<T> {
        self.value.contentSize = contentSize
        return self.value.c
    }

    /// 内边距
    ///
    /// - default contentInset: CGSize.zero
    @discardableResult
    public func contentInset(_ contentInset: UIEdgeInsets = .zero) -> ChainBoxContainer<T> {
        self.value.contentInset = contentInset
        return self.value.c
    }

    /// 内边距调整样式
    ///
    /// - default contentInsetAdjustmentBehavior: .automatic
    @available(iOS 11.0, *)
    @discardableResult
    public func contentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior = .automatic) -> ChainBoxContainer<T> {
        self.value.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior
        return self.value.c
    }

    /// 边缘弹性
    ///
    /// - default supportBounces: true
    @discardableResult
    public func bounces(_ isSupport: Bool = true) -> ChainBoxContainer<T> {
        self.value.bounces = isSupport
        return self.value.c
    }

    /// 垂直弹性
    ///
    /// - default isSupport: false
    @discardableResult
    public func verticalBounce(_ isSupport: Bool = false) -> ChainBoxContainer<T> {
        self.value.alwaysBounceVertical = isSupport
        return self.value.c
    }

    /// 水平弹性
    ///
    /// - default isSupport: false
    @discardableResult
    public func horizontalBounce(_ isSupport: Bool = false) -> ChainBoxContainer<T> {
        self.value.alwaysBounceHorizontal = isSupport
        return self.value.c
    }

    /// 显示滚动条
    ///
    /// - default showsHorizontal: true
    /// - default showsVertical: true
    @discardableResult
    public func scrollIndicator(showsHorizontal: Bool = true, showsVertical: Bool = true) -> ChainBoxContainer<T> {
        self.value.showsHorizontalScrollIndicator = showsHorizontal
        self.value.showsVerticalScrollIndicator = showsVertical
        return self.value.c
    }

    /// 是否可以滚动
    ///
    /// - default isScrollEnabled: true
    @discardableResult
    public func isScrollEnabled(_ isScrollEnabled: Bool = true) -> ChainBoxContainer<T> {
        self.value.isScrollEnabled = isScrollEnabled
        return self.value.c
    }

    /// 是否可以整页滚动
    ///
    /// - default isPagingEnabled: false
    @discardableResult
    public func isPagingEnabled(_ isPagingEnabled: Bool = false) -> ChainBoxContainer<T> {
        self.value.isPagingEnabled = isPagingEnabled
        return self.value.c
    }

    /// 滚动速率
    @discardableResult
    public func decelerationRate(_ decelerationRate: UIScrollView.DecelerationRate) -> ChainBoxContainer<T> {
        self.value.decelerationRate = decelerationRate
        return self.value.c
    }
}