//
//  URLFeedParserMock.swift
//  RSSReaderSwiftTests
//
//  Created by Vitaly Batrakov on 31.07.2018.
//  Copyright © 2018 vbat. All rights reserved.
//

import Foundation
@testable import RSSReaderSwift

class URLFeedParserMock: URLFeedParser {
    var isNeedToSucceed = false
    var expectedFeed: Feed!
    var expectedErrorMessage: String!
    
    func parseFeed(with url: URL, completion: @escaping (Result<Feed>) -> Void) {
        completion(isNeedToSucceed ? .success(expectedFeed) : .error(expectedErrorMessage))
    }
    
}
