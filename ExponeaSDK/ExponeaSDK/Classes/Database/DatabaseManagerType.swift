//
//  DatabaseManagerType.swift
//  ExponeaSDK
//
//  Created by Dominik Hádl on 11/04/2018.
//  Copyright © 2018 Exponea. All rights reserved.
//

import Foundation

/// Protocol to manage Tracking events
public protocol DatabaseManagerType: class {
    var customer: Customer { get }
    
    func trackEvent(with data: [DataType]) throws
    func identifyCustomer(with data: [DataType]) throws
    
    func fetchTrackCustomer() throws -> [TrackCustomer]
    func fetchTrackEvent() throws -> [TrackEvent]

    func addRetry(_ object: TrackCustomer) throws
    func addRetry(_ object: TrackEvent) throws

    func delete(_ object: TrackCustomer) throws
    func delete(_ object: TrackEvent) throws
    

    /// Completely clears the database, including the Customer object.
    /// Useful for completely anonymizing the user.
    func clear() throws
}
