//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by Элина Рупова on 09.03.2022.
//

import Foundation
import UIKit

class CommentNetworkService {
    private init() {}
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        NetworkService.shared.getData(url: url) { json in
            do {
                let response = try GetCommentResponse(json: json)
                completion(response)
            } catch {
                print(error)
            }
        }
    }
}
