//
// Created by 尹乾鹏 on 2019-04-21.
// Copyright (c) 2019 pureblack. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionViewFlowLayout : Chain {

}

extension ChainBoxContainer where T: UICollectionViewFlowLayout {
    /// minimumLineSpacing
    ///
    /// - default minimumLineSpacing: 0
    @discardableResult
    public func minimumLineSpacing(_ minimumLineSpacing: CGFloat = 0) -> ChainBoxContainer<T> {
        self.value.minimumLineSpacing = minimumLineSpacing
        return self.value.c
    }

    /// minimumInteritemSpacing
    ///
    /// - default minimumInteritemSpacing: 0
    @discardableResult
    public func minimumInteritemSpacing(_ minimumInteritemSpacing: CGFloat = 0) -> ChainBoxContainer<T> {
        self.value.minimumInteritemSpacing = minimumInteritemSpacing
        return self.value.c
    }

    /// item的大小
    ///
    /// - default itemSize: .zero
    @discardableResult
    public func itemSize(_ itemSize: CGSize = .zero) -> ChainBoxContainer<T> {
        self.value.itemSize = itemSize
        return self.value.c
    }

    /// 滚动方向
    ///
    /// - default scrollDirection: .horizontal
    @discardableResult
    public func scrollDirection(_ scrollDirection: UICollectionView.ScrollDirection = .horizontal) -> ChainBoxContainer<T> {
        self.value.scrollDirection = scrollDirection
        return self.value.c
    }

    /// 预估item大小
    ///
    /// - default estimatedItemSize: .zero
    @discardableResult
    public func estimatedItemSize(_ estimatedItemSize: CGSize = .zero) -> ChainBoxContainer<T> {
        self.value.estimatedItemSize = estimatedItemSize
        return self.value.c
    }

    /// sectionInset
    ///
    /// - default sectionInset: .zero
    @discardableResult
    public func sectionInset(_ sectionInset: UIEdgeInsets = .zero) -> ChainBoxContainer<T> {
        self.value.sectionInset = sectionInset
        return self.value.c
    }
}