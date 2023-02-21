//
//  StorageManager.swift
//  Thoughts
//
//  Created by Mark Goncharov on 20.02.2023.
//

import Foundation
import FirebaseStorage

class StorageManager {
    static let shared = StorageManager()
    
    private var container = Storage.storage().reference()
    
    private init() {}
    
    public func uploadUserProfilePicture(email: String,
                                  image: UIImage?,
                                  completion: @escaping (Bool) -> Void) {
        
    }
    
    public func downloadUrlForProfilePicture(user: User,
                                     completion: @escaping (URL?) -> Void) {
        
    }
    
    public func uploadBlogHeaderImage(blogPost: BlogPost,
                                image: UIImage?,
                                completion: @escaping (Bool) -> Void) {
        
    }
    
    public func downloadUrlForPostHeader(blogPost: BlogPost,
                                  completion: @escaping (URL?) -> Void) {
        
    }
}
