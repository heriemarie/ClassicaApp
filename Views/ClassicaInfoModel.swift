//
//  ClassicaInfoModel.swift
//  ClassicaApp
//
//  Created by Herie Marie A. Estaño on 5/25/22.
//

import Foundation

struct ClassicaInfoModel: Hashable {
    
    var id = UUID ()
    let title: String
    let composer: String
    let image: String
    let type: String
}

