//
// Created by 尹乾鹏 on 2019-04-20.
// Copyright (c) 2019 pureblack. All rights reserved.
//

import Foundation
import UIKit


extension ChainBoxContainer where T: UIButton {
    /// 标题
    ///
    /// - default state: UIControl.State.normal
    @discardableResult
    public func title(_ title: String?, state: UIControl.State = .normal) -> ChainBoxContainer<T> {
        self.value.setTitle(title, for: state)
        return self.value.c
    }

    /// 标题颜色
    ///
    /// - default state: UIControl.State.normal
    @discardableResult
    public func titleColor(_ titleColor: UIColor?, state: UIControl.State = .normal) -> ChainBoxContainer<T> {
        self.value.setTitleColor(titleColor, for: state)
        return self.value.c
    }

    /// 标题阴影
    ///
    /// - default state: UIControl.State.normal
    @discardableResult
    public func titleShadow(color: UIColor?,
                            offset: CGSize,
                            state: UIControl.State = .normal) -> ChainBoxContainer<T> {
        self.value.setTitleShadowColor(color, for: state)
        self.value.titleLabel?.shadowOffset = offset
        return self.value.c
    }

    /// 图片
    ///
    /// - default state: UIControl.State.normal
    @discardableResult
    public func image(_ image: UIImage?, state: UIControl.State = .normal) -> ChainBoxContainer<T> {
        self.value.setImage(image, for: state)
        return self.value.c
    }

    /// 背景图片
    ///
    /// - default state: UIControl.State.normal
    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, state: UIControl.State = .normal) -> ChainBoxContainer<T> {
        self.value.setBackgroundImage(backgroundImage, for: state)
        return self.value.c
    }

    /// 富文本标题
    ///
    /// - default state: UIControl.State.normal
    @discardableResult
    public func attributedTitle(_ title: NSAttributedString?, state: UIControl.State = .normal) -> ChainBoxContainer<T> {
        self.value.setAttributedTitle(title, for: state)
        return self.value.c
    }
}