//
// Created by 尹乾鹏 on 2019-04-21.
// Copyright (c) 2019 pureblack. All rights reserved.
//

import Foundation
import UIKit

extension ChainBoxContainer where T: UILabel {

    /// 文本
    @discardableResult
    public func text(_ text: String?) -> ChainBoxContainer<T> {
        self.value.text = text
        return self.value.c
    }

    /// 字体
    ///
    /// - default font: 17号字体
    @discardableResult
    public func font(_ font: UIFont = UIFont.systemFont(ofSize: 17)) -> ChainBoxContainer<T> {
        self.value.font = font
        return self.value.c
    }

    /// 字体颜色
    ///
    /// - default color: 黑色
    @discardableResult
    public func textColor(_ color: UIColor = .black) -> ChainBoxContainer<T> {
        self.value.textColor = color
        return self.value.c
    }

    /// 字体阴影
    ///
    /// - default offset: CGSize(width: 0, height: -1)
    @discardableResult
    public func textShadow(_ color: UIColor? = nil, _ offset: CGSize = CGSize(width: 0, height: -1)) -> ChainBoxContainer<T> {
        self.value.shadowColor = color
        self.value.shadowOffset = offset
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

    /// 换行模式
    ///
    /// - default lineBreakMode: NSLineBreakMode.byTruncatingTail
    @discardableResult
    public func lineBreakMode(_ lineBreakMode: NSLineBreakMode = .byTruncatingTail) -> ChainBoxContainer<T> {
        self.value.lineBreakMode = lineBreakMode
        return self.value.c
    }

    /// 富文本
    @discardableResult
    public func attributedText(_ attributedText: NSAttributedString?) -> ChainBoxContainer<T> {
        self.value.attributedText = attributedText
        return self.value.c
    }

    /// 文本行数限制
    @discardableResult
    public func numberOfLines(_ numberOfLines: Int) -> ChainBoxContainer<T> {
        self.value.numberOfLines = numberOfLines
        return self.value.c
    }

    /// 文本字体大小根据控件大小进行约束
    ///
    /// - default isSupport: true
    /// - default minimumFontSize: 默认是0，表示当前字体所能支持的最小大小。（0-1之间）如果是0.6，表示当前字体的0.6倍大小为最小字体
    @discardableResult
    public func autoAdjustFontToFit(_ isSupport: Bool = true, minimumFontSize: CGFloat = 0.0) -> ChainBoxContainer<T> {
        self.value.adjustsFontSizeToFitWidth = isSupport
        self.value.minimumScaleFactor = minimumFontSize
        return self.value.c
    }
}