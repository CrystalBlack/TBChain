//
// Created by 尹乾鹏 on 2019-04-21.
// Copyright (c) 2019 pureblack. All rights reserved.
//

import Foundation
import UIKit

extension ChainBoxContainer where T: UIImageView {

    /// 图片
    @discardableResult
    public func image(_ image: UIImage?) -> ChainBoxContainer<T> {
        self.value.image = image
        return self.value.c
    }

    /// 高亮图片
    @discardableResult
    public func highlightedImage(_ image: UIImage?) -> ChainBoxContainer<T> {
        self.value.highlightedImage = image
        return self.value.c
    }

    /// 是否是高亮状态
    @discardableResult
    public func isHighlighted(_ isHighlighted: Bool) -> ChainBoxContainer<T> {
        self.value.isHighlighted = isHighlighted
        return self.value.c
    }

    /// 图片组
    @discardableResult
    public func animationImages(_ images: [UIImage]?) -> ChainBoxContainer<T> {
        self.value.animationImages = images
        return self.value.c
    }

    /// 高亮图片组
    @discardableResult
    public func highlightedAnimationImages(_ images: [UIImage]?) -> ChainBoxContainer<T> {
        self.value.highlightedAnimationImages = images
        return self.value.c
    }

    /// 动画总时长 系统默认会使30fps
    @discardableResult
    public func animationDuration(_ duration: TimeInterval) -> ChainBoxContainer<T> {
        self.value.animationDuration = duration
        return self.value.c
    }

    /// 动画总时长 0无线循环
    @discardableResult
    public func animationRepeatCount(_ repeatCount: Int) -> ChainBoxContainer<T> {
        self.value.animationRepeatCount = repeatCount
        return self.value.c
    }
}