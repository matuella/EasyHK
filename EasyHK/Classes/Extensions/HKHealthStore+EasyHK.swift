//
//  HKHealthStore+EasyHK.swift
//  EasyHK
//
//  Created by Guilherme Carlos Matuella on 29/04/18.
//  Copyright © 2018 gmatuella. All rights reserved.
//

import HealthKit

extension HKHealthStore {
    
    private enum EasyHKError: Error {
        
        case missingParameters
        case notAvailable
        case notAuthorized (unauthorizedAccesses: [EasyHKAccess])
        case dataTypeUnavailable (unavailableAccesses: [EasyHKAccess])
    }
    
    public func authorize(accesses: [EasyHKAccess],
                          completion: @escaping (Bool, Error?) -> Void) {
        
        guard HKHealthStore.isHealthDataAvailable() else {
            completion(false, EasyHKError.notAvailable)
            return
        }
        
        if accesses.isEmpty {
            completion(false, EasyHKError.missingParameters)
            return
        }
        
        var writableAccesses = Set<HKSampleType>()
        var readableAccesses = Set<HKObjectType>()

        //TODO: Finish to return the respective errors.
//        var unauthorizedAccesses = [EasyHKAccess]()
//        var unavailableReadableAccesses = [EasyHKReadable]()
//        var unavailableWritableAccesses = [EasyHKWritable]()
        
        for access in accesses {
            if let associatedObjectType = access.readAccess?.associatedObjectType {
                readableAccesses.insert(associatedObjectType)
            } else {
                //IF IT'S NIL, MEANS THAT THE DATA TYPE WASN'T *AVAILABLE* IN THE DEVICE??
                
                //Must validate if the readAccess was nil, meaning it shouldn't error at all.
                //                unavailableReadableAccesses.append(access)
            }
            
            if let associatedSampleType = access.writeAccess?.associatedSampleType {
                writableAccesses.insert(associatedSampleType)
            } else {
                //IF IT'S NIL, MEANS THAT THE DATA TYPE WASN'T *AVAILABLE* IN THE DEVICE??
                
                //Must validate if the writeAccess was nil, meaning it shouldn't error at all.
                //                unavailableWritableAccesses.append(access)
            }
        }
        
        let readableAccessesToStore = readableAccesses.isEmpty ? nil : readableAccesses
        let writableAccessesToStore = writableAccesses.isEmpty ? nil : writableAccesses
        
        HKHealthStore().requestAuthorization(toShare: writableAccessesToStore, read: readableAccessesToStore) { success, error in
            completion(success, error)
        }
    }
}
