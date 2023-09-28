//
//  TasksScreen.swift
//  TwoP
//
//  Created by admin on 24.08.2023.
//  Copyright © 2023 HmmSoft. All rights reserved.
//

import SwiftUI

struct TasksScreen: View {
    var body: some View {
        TopUserBar(userName: "Habil Cangir", remainingRVCR: 20, vipType: 3, salesCount: 20, profileImage: nil)
        
        
    }
}

struct TasksScreen_Previews: PreviewProvider {
    static var previews: some View {
        TasksScreen()
    }
}
