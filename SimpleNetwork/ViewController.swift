//
//  ViewController.swift
//  SimpleNetwork
//
//  Created by Nikita Krylov on 30.08.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var request = URLRequest(url: URL(string: "https://v2.jokeapi.dev/joke/Any")!)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = ["AuthToken": "null"]
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
        if let data = data, let joke = try? JSONDecoder().decode(Joke.self, from: data) {
            print(joke.category!)
        }
        }
        task.resume()
    }


}

