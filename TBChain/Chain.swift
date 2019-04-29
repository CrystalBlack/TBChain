//
// Created by 尹乾鹏 on 2019-03-21.
// Copyright (c) 2019 pureblack. All rights reserved.
//

import Foundation

/// "桥"类,需要使用链式调用的类需要遵守的协议
public protocol Chain {

}

public extension Chain {
    var c: ChainBoxContainer<Self> { return ChainBoxContainer(value: self) }
}

/// 链式容器
public struct ChainBoxContainer<T> {
    public let value: T

    public init(value: T) { self.value = value }
}

extension ChainBoxContainer {
    public var instance: T {
        return value
    }
}