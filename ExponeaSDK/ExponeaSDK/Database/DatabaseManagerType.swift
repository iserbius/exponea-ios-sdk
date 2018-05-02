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
    func trackEvent(with data: [DataType]) -> Bool
    func trackCustomer(with data: [DataType]) -> Bool
    func fetchTrackCustomer() -> [TrackCustomers]
    func fetchTrackEvents() -> [TrackEvents]
    func deleteTrackCustomer(object: AnyObject) -> Bool
    func deleteTrackEvent(object: AnyObject) -> Bool
}