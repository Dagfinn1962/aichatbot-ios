//
//  ChatBot.swift
//  AICHATBOT
//
//  Created by Dagfinn Lindbom 18/5 - 23
//

import Foundation

// ChatBot.swift
enum ChatBot: Int, CaseIterable {
    // TODO: Replace with your own user IDs of bots
    case dagfinnlindbom
    
    var botID: String {
        switch self {
        case .dagfinnlindbom: 
            return "aichatbot"
    }
}
     
    
    var name: String {
        switch self {
        case .dagfinnlindbom:
            return "aichatbot"
       
        }
    }
    
    var imageName: String {
        "bot"
    }
}
