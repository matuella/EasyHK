//
//  HKCorrelationTypeIdentifier+EasyHK.swift
//  EasyHK
//
//  Created by Guilherme Carlos Matuella on 29/04/18.
//  Copyright © 2018 gmatuella. All rights reserved.
//

import HealthKit

extension HKCorrelationTypeIdentifier: EasyHKReadWrite {
    
    public var associatedObjectType: HKObjectType? {
        return HKObjectType.correlationType(forIdentifier: self)
    }
    
    public var associatedSampleType: HKSampleType? {
        return HKSampleType.correlationType(forIdentifier: self)
    }
}
