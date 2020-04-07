//
//  NetworkDataLoader.swift
//  iTunes Search
//
//  Created by FGT MAC on 4/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation


protocol NetworkDataLoader {
    func loadData(using request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
}
