//
//  HKCharacteristicTypeIdentifier+EasyHK.swift
//  EasyHK
//
//  Created by Guilherme Carlos Matuella on 29/04/18.
//  Copyright © 2018 gmatuella. All rights reserved.
//

import HealthKit

extension HKCharacteristicTypeIdentifier: EasyHKReadable {
    
    public var associatedObjectType: HKObjectType? {
        return HKObjectType.characteristicType(forIdentifier: self)
    }
}
