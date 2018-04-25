//
//  FeedStorage.swift
//  RSSReaderSwift
//
//  Created by Vitaliy Batrakov on 24.04.2018.
//  Copyright © 2018 vbat. All rights reserved.
//

import Foundation

protocol FeedStorage {
    func getFeeds() -> [Feed]
    func save(feeds: Feed)
}
