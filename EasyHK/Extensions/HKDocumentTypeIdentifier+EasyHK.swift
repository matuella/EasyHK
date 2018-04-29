//
//  HKDocumentTypeIdentifier+EasyHK.swift
//  EasyHK
//
//  Created by Guilherme Carlos Matuella on 29/04/18.
//  Copyright © 2018 gmatuella. All rights reserved.
//

import HealthKit

extension HKDocumentTypeIdentifier: EasyHKReadWrite {
    
    public var associatedObjectType: HKObjectType? {
        return HKObjectType.documentType(forIdentifier: self)
    }
    
    public var associatedSampleType: HKSampleType? {
        return HKSampleType.documentType(forIdentifier: self)
    }
}
