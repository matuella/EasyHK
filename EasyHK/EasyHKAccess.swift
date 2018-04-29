//
//  EasyHKAccess.swift
//  EasyHK
//
//  Created by Guilherme Carlos Matuella on 29/04/18.
//  Copyright © 2018 gmatuella. All rights reserved.
//

import HealthKit

// MARK: EasyHK Protocols and Structs

public protocol EasyHKWritable {
    var associatedSampleType: HKSampleType? { get }
}

public protocol EasyHKReadable {
    var associatedObjectType: HKObjectType? { get }
}

///Encodable + Decodable turns into Codable
///Writable + Readable turns into ?
public typealias EasyHKReadWrite = EasyHKWritable & EasyHKReadable

public struct EasyHKAccess {
    
    private(set) var writeAccess: EasyHKWritable?
    private(set) var readAccess: EasyHKReadable?
    
    public init(withReadAndWriteAccess readAndWriteAccess: EasyHKReadWrite) {
        self.readAccess = readAndWriteAccess
        self.writeAccess = readAndWriteAccess
    }
    
    public init(withWriteAccess writeAccess: EasyHKWritable) {
        self.writeAccess = writeAccess
    }
    
    public init(withReadAccess readAccess: EasyHKReadable) {
        self.readAccess = readAccess
    }
}
