//
// Created by 尹乾鹏 on 2019-04-21.
// Copyright (c) 2019 pureblack. All rights reserved.
//

import Foundation
import UIKit

extension ChainBoxContainer where T: UITextView {
    /// 代理者
    @discardableResult
    public func delegate(_ delegate: UITextViewDelegate?) -> ChainBoxContainer<T> {
        self.value.delegate = delegate
        return self.value.c
    }

    /// 文本
    @discardableResult
    public func text(_ text: String) -> ChainBoxContainer<T> {
        self.value.text = text
        return self.value.c
    }

    /// 字体
    @discardableResult
    public func font(_ font: UIFont) -> ChainBoxContainer<T> {
        self.value.font = font
        return self.value.c
    }

    /// 文本颜色
    @discardableResult
    public func textColor(_ textColor: UIColor) -> ChainBoxContainer<T> {
        self.value.textColor = textColor
        return self.value.c
    }

    /// 文本排版
    ///
    /// - default textAlignment: NSTextAlignment.left
    @discardableResult
    public func textAlignment(_ textAlignment: NSTextAlignment = .left) -> ChainBoxContainer<T> {
        self.value.textAlignment = textAlignment
        return self.value.c
    }

    /// 是否可以编辑
    ///
    /// - default isEditable: true
    @discardableResult
    public func isEditable(_ isEditable: Bool = true) -> ChainBoxContainer<T> {
        self.value.isEditable = isEditable
        return self.value.c
    }

    /// 是否在输入文本时替换原有文本
    ///
    /// - default clearsOnInsertion: false
    @discardableResult
    public func supportClearsOnInsertion(_ clearsOnInsertion: Bool = false) -> ChainBoxContainer<T> {
        self.value.clearsOnInsertion = clearsOnInsertion
        return self.value.c
    }

    /// 输入容器的内间距
    ///
    /// - default textContainerInset: UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0)
    @discardableResult
    public func textContainerInset(_ textContainerInset: UIEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0)) -> ChainBoxContainer<T> {
        self.value.textContainerInset = textContainerInset
        return self.value.c
    }
}