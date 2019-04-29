//
// Created by 尹乾鹏 on 2019-04-21.
// Copyright (c) 2019 pureblack. All rights reserved.
//

import Foundation
import UIKit

extension ChainBoxContainer where T: UICollectionView {
    /// 数据源
    @discardableResult
    public func dataSource(_ dataSource: UICollectionViewDataSource?) -> ChainBoxContainer<T> {
        self.value.dataSource = dataSource
        return self.value.c
    }

    /// 代理者
    @discardableResult
    public func delegate(_ delegate: UICollectionViewDelegate?) -> ChainBoxContainer<T> {
        self.value.delegate = delegate
        return self.value.c
    }

    /// 背景视图
    @discardableResult
    public func backgroundView(_ backgroundView: UIView?) -> ChainBoxContainer<T> {
        self.value.backgroundView = backgroundView
        return self.value.c
    }

    /// 注册cell
    @discardableResult
    public func register(_ cellClass: AnyClass?, _ identifier: String) -> ChainBoxContainer<T> {
        self.value.register(cellClass, forCellWithReuseIdentifier: identifier)
        return self.value.c
    }

    /// 注册 Supplementary
    @discardableResult
    public func registerSupplementary(_ itemClass: AnyClass?, _ elementKind: String, _ identifier: String) -> ChainBoxContainer<T> {
        self.value.register(itemClass, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: identifier)
        return self.value.c
    }
}