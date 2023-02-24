//
//  DataBaseManager.swift
//  Thoughts
//
//  Created by Mark Goncharov on 20.02.2023.
//

import Foundation
import FirebaseFirestore

final class DataBaseManager {
    static let shared = DataBaseManager()
    
    private var dataBase = Firestore.firestore()
    
    private init() {}
    
    public func insert(with post: BlogPost,
                    user: User,
                    completion: @escaping (Bool) -> Void) {
        
    }
    
    public func getAllPosts( completion: @escaping ([BlogPost]) -> Void) {
        
    }
    
    public func getPosts(for user: User,
                      completion: ([BlogPost]) -> Void) {
        
    }
    
    public func insertUser(user: User,
                       completion: @escaping (Bool) -> Void) {
        
        let documentId = user.email
            .replacingOccurrences(of: ".", with: "_")
            .replacingOccurrences(of: "@", with: "_")
        
        let data = [
            "email": user.email,
            "name": user.name
        ]
        
        dataBase
            .collection("users")
            .document(documentId)
            .setData(data) { error in
                completion(error == nil)
            }
    }
}
