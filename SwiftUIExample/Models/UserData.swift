//
//  UserData.swift
//  SwiftUIExample
//
//  Created by Satoshi Ito on 2019/10/26.
//  Copyright © 2019 Satoshi Ito. All rights reserved.
//

import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
