//
// Created by 尹乾鹏 on 2019-04-29.
// Copyright (c) 2019 pureblack. All rights reserved.
//

import Foundation

extension NSMutableAttributedString: Chain {

}

extension ChainBoxContainer where T : NSMutableAttributedString {

    /// 属性文本 - 链接
    ///
    /// - default range: self.length文本长度
    @discardableResult
    public func append(_ attrString: NSAttributedString) -> ChainBoxContainer<T> {
        value.append(attrString)
        return value.c
    }

    /// 属性文本 - 字体
    ///
    /// - default range: self.length文本长度
    @discardableResult
    public func font(_ font: UIFont, range: NSRange? = nil) -> ChainBoxContainer<T> {
        value.addAttribute(.font, value: font, range: value.usedRange(range))
        return value.c
    }

    /// 属性文本 - 段落样式
    ///
    /// - default paragraphStyle: .default
    /// - default range: self.length文本长度
    @discardableResult
    public func paragraph(_ paragraphStyle: NSParagraphStyle = .default, range: NSRange? = nil) -> ChainBoxContainer<T> {
        value.addAttribute(.paragraphStyle, value: paragraphStyle, range: value.usedRange(range))
        return value.c
    }

    /// 属性文本 - 文字颜色
    ///
    /// - default range: self.length文本长度
    @discardableResult
    public func textColor(_ foregroundColor: UIColor, range: NSRange? = nil) -> ChainBoxContainer<T> {
        value.addAttribute(.foregroundColor, value: foregroundColor, range: value.usedRange(range))
        return value.c
    }

    /// 属性文本 - 文字颜色
    ///
    /// - default range: self.length文本长度
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor, range: NSRange? = nil) -> ChainBoxContainer<T> {
        value.addAttribute(.backgroundColor, value: backgroundColor, range: value.usedRange(range))
        return value.c
    }

    /// 属性文本 - 文字间距
    ///
    /// - default kern: 0
    /// - default range: self.length文本长度
    @discardableResult
    public func kern(_ kern: Double = 0, range: NSRange? = nil) -> ChainBoxContainer<T> {
        value.addAttribute(.kern, value: NSNumber(floatLiteral: kern), range: value.usedRange(range))
        return value.c
    }

    /// 属性文本 - 删除线
    ///
    /// - default haveStrikethrough: 无删除线
    /// - default range: self.length文本长度
    @discardableResult
    public func haveStrikethrough(_ haveStrikethrough: Bool = false, range: NSRange? = nil) -> ChainBoxContainer<T> {
        let strikethroughStyle = haveStrikethrough ? NSNumber(floatLiteral: 1) : NSNumber(floatLiteral: 0)
        value.addAttribute(.strikethroughStyle, value: strikethroughStyle, range: value.usedRange(range))
        return value.c
    }

    /// 属性文本 - 删除线颜色
    ///
    /// - default range: self.length文本长度
    @discardableResult
    public func strikethroughColor(_ strikethroughColor: UIColor, range: NSRange? = nil) -> ChainBoxContainer<T> {
        value.addAttribute(.strikethroughColor, value: strikethroughColor, range: value.usedRange(range))
        return value.c
    }

    /// 属性文本 - 下划线
    ///
    /// - default underlineStyle: 无下划线
    /// - default range: self.length文本长度
    @discardableResult
    public func haveUnderline(_ haveUnderline: Bool = false, range: NSRange? = nil) -> ChainBoxContainer<T> {
        let underlineStyle = haveUnderline ? NSNumber(floatLiteral: 1) : NSNumber(floatLiteral: 0)
        value.addAttribute(.underlineStyle, value: underlineStyle, range: value.usedRange(range))
        return value.c
    }

    /// 属性文本 - 下划线颜色
    ///
    /// - default range: self.length文本长度
    @discardableResult
    public func underlineColor(_ underlineColor: UIColor, range: NSRange? = nil) -> ChainBoxContainer<T> {
        value.addAttribute(.underlineColor, value: underlineColor, range: value.usedRange(range))
        return value.c
    }

    /// 属性文本 - 链接
    ///
    /// - default range: self.length文本长度
    @discardableResult
    public func link(_ linkURL: URL, range: NSRange? = nil) -> ChainBoxContainer<T> {
        value.addAttribute(.link, value: linkURL, range: value.usedRange(range))
        return value.c
    }
}

extension NSMutableAttributedString {
    fileprivate var usedRange: (_ range: NSRange?) -> NSRange {
        return { range in
            if let range = range, (range.location + range.length) <= self.length {
                return range
            } else {
                return NSRange(location: 0, length: self.length)
            }
        }
    }
}
