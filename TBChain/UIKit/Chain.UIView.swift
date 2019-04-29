//
// Created by 尹乾鹏 on 2019-03-21.
// Copyright (c) 2019 pureblack. All rights reserved.
//

import Foundation
import UIKit

extension UIView: Chain {

}

extension ChainBoxContainer where T: UIView {
    /// 显隐
    ///
    /// - default isHidden: false
    @discardableResult
    public func isHidden(_ isHidden: Bool = false) -> ChainBoxContainer<T> {
        self.value.isHidden = isHidden
        return self.value.c
    }

    /// 背景色
    @discardableResult
    public func backgroundColor(_ color: UIColor?) -> ChainBoxContainer<T> {
        self.value.backgroundColor = color
        return self.value.c
    }

    /// 内容布局模式
    ///
    /// - default contentModel: .scaleToFill
    @discardableResult
    public func contentMode(_ contentModel: UIView.ContentMode = .scaleToFill) -> ChainBoxContainer<T> {
        self.value.contentMode = contentModel
        return self.value.c
    }

    /// layer层添加边线
    ///
    /// - default width: 0
    @discardableResult
    public func border(color: UIColor? = nil, width: CGFloat = 0) -> ChainBoxContainer<T> {
        self.value.layer.borderColor = color?.cgColor
        self.value.layer.borderWidth = width
        return self.value.c
    }

    /// layer层添加阴影
    ///
    /// - default offset: CGSize(width: 0.0, height: -3.0)
    /// - default opacity: 0
    /// - default radius: 3
    @discardableResult
    public func shadow(color: UIColor? = nil,
                       offset: CGSize = CGSize(width: 0.0, height: -3.0),
                       opacity: Float = 0.0,
                       radius: CGFloat = 3.0) -> ChainBoxContainer<T> {
        self.value.layer.shadowColor = color?.cgColor
        self.value.layer.shadowOffset = offset
        self.value.layer.shadowOpacity = opacity
        self.value.layer.shadowRadius = radius
        return self.value.c
    }

    /// 是否支持用户交互
    @discardableResult
    public func supportUserInteraction(_ supportUserInteraction: Bool) -> ChainBoxContainer<T> {
        self.value.isUserInteractionEnabled = supportUserInteraction
        return self.value.c
    }

    /// 透明度
    @discardableResult
    public func alpha(_ alpha: CGFloat) -> ChainBoxContainer<T> {
        self.value.alpha = alpha
        return self.value.c
    }

    /// clipsToBounds
    ///
    /// - default clipsToBounds: true
    @discardableResult
    public func clipsToBounds(_ clipsToBounds: Bool = true) -> ChainBoxContainer<T> {
        value.clipsToBounds = clipsToBounds
        return self.value.c
    }
}