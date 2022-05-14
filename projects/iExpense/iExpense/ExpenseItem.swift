//
//  ExpenseItem.swift
//  iExpense
//
//  Created by John Kevin Losito on 5/13/22.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
