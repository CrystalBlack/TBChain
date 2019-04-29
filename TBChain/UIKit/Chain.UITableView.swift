//
// Created by 尹乾鹏 on 2019-04-21.
// Copyright (c) 2019 pureblack. All rights reserved.
//

import Foundation
import UIKit

extension ChainBoxContainer where T: UITableView {

    /// 数据源
    @discardableResult
    public func dataSource(_ dataSource: UITableViewDataSource?) -> ChainBoxContainer<T> {
        self.value.dataSource = dataSource
        return self.value.c
    }

    /// 代理者
    @discardableResult
    public func delegate(_ delegate: UITableViewDelegate?) -> ChainBoxContainer<T> {
        self.value.delegate = delegate
        return self.value.c
    }

    /// 预估高度
    @discardableResult
    public func estimatedHeight(row: CGFloat, sectionHeader: CGFloat, sectionFooter: CGFloat) -> ChainBoxContainer<T> {
        self.value.estimatedRowHeight = row
        self.value.estimatedSectionHeaderHeight = sectionHeader
        self.value.estimatedSectionFooterHeight = sectionFooter
        return self.value.c
    }

    /// 约束高度
    @discardableResult
    public func height(row: CGFloat, sectionHeader: CGFloat, sectionFooter: CGFloat) -> ChainBoxContainer<T> {
        self.value.rowHeight = row
        self.value.sectionHeaderHeight = sectionHeader
        self.value.sectionFooterHeight = sectionFooter
        return self.value.c
    }

    /// 背景视图
    @discardableResult
    public func backgroundView(_ backgroundView: UIView?) -> ChainBoxContainer<T> {
        self.value.backgroundView = backgroundView
        return self.value.c
    }

    /// 分割形式
    ///
    /// - default separatorStyle: UITableViewCell.SeparatorStyle.singleLine
    @discardableResult
    public func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle = .singleLine) -> ChainBoxContainer<T> {
        self.value.separatorStyle = separatorStyle
        return self.value.c
    }

    /// 注册cell
    @discardableResult
    public func registerCell(_ cellClass: AnyClass?, _ identifier: String) -> ChainBoxContainer<T> {
        self.value.register(cellClass, forCellReuseIdentifier: identifier)
        return self.value.c
    }

    /// 注册 header && Footer
    @discardableResult
    public func registerHeaderOrFooter(_ itemClass: AnyClass?, _ identifier: String) -> ChainBoxContainer<T> {
        self.value.register(itemClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self.value.c
    }

    /// Header控件
    public func headerView(_ tableHeaderView: UIView?) -> ChainBoxContainer<T> {
        self.value.tableHeaderView = tableHeaderView
        return self.value.c
    }

    /// Footer控件
    public func footerView(_ tableFooterView: UIView?) -> ChainBoxContainer<T> {
        self.value.tableFooterView = tableFooterView
        return self.value.c
    }
}