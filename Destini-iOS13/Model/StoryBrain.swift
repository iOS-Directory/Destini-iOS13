//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    //Struct for the text of the label and buttons
    let storyNumber = [
        Story(title: "You see a fork in the road.", choice1: "Taje a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play a dead."),
        Story(title: "You find a trasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    //Takes in a string with the name of the button pressed and returns
    //the number for the next story to be call
    func nextStory(_ userChoice: String) -> Int{
        let leftOption = storyNumber[0].choice1
        if(userChoice == leftOption){
            return 1
        }else{
            return 2
        }
    }
    
    
}
