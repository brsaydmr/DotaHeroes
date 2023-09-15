//
//  HeroStats.swift
//  DotaHeros
//
//  Created by Barış Aydemir on 15.09.2023.
//

import Foundation

struct HeroStats: Decodable {
    let localized_name: String
    let primary_attr: String
    let attack_type: String
    let legs: Int
    let img: String
}
