//
//  FeedServiceMock.swift
//  RSSReaderSwiftTests
//
//  Created by Vitaly Batrakov on 31.07.2018.
//  Copyright © 2018 vbat. All rights reserved.
//

import Foundation
@testable import RSSReaderSwift

final class FeedServiceMock: FeedService {
    
    // MARK: - Properties
    
    var isGetFeedsCompleted = false
    var isGetFeedsWithUrlCompleted = false
    var isNeedToSucceed = false
    var expectedFeed: Feed!
    var expectedErrorMessage: String!
    
    // MARK: - FeedService methods
    
    func getFeeds(with completion: @escaping ([Result<Feed>]) -> Void) {
        isGetFeedsCompleted = true
        completion([isNeedToSucceed ? .success(expectedFeed) : .error(expectedErrorMessage)])
    }
    
    func getFeed(with url: URL, completion: @escaping (Result<Feed>) -> Void) {
        isGetFeedsWithUrlCompleted = true
        completion(isNeedToSucceed ? .success(expectedFeed) : .error(expectedErrorMessage))
    }
    
}
