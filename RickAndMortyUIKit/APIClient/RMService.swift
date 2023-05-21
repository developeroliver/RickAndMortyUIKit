//
//  RMService.swift
//  RickAndMortyUIKit
//
//  Created by olivier geiger on 21/05/2023.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singletion instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parmeters:
    ///     - request: Request instance
    ///     - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
