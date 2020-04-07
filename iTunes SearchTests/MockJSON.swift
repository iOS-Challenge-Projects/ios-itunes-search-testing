//
//  MockJSON.swift
//  iTunes SearchTests
//
//  Created by FGT MAC on 4/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation


let goodResultData = """
{
    "resultCount": 2,
"results": [
    {
        "trackName": "GarageBand",
        "artistName": "Apple",
    },
    {
         "trackName": "Garage Virtual",
         "artistName": "Nexogen",
     }
    ]
}
""".data(using: .utf8)!
