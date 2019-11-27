//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.storyNumber[0].title
        choice1Button.setTitle(storyBrain.storyNumber[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.storyNumber[0].choice2, for: .normal)
    }
    
    //On button click will invoke the following code
    @IBAction func choiceMade(_ sender: UIButton) {
        let buttonPressed = sender.currentTitle!
        let nextStory = storyBrain.nextStory(buttonPressed)
        updateUi(nextStory)
    }
    
    func updateUi(_ nextStory: Int){
         storyLabel.text = storyBrain.storyNumber[nextStory].title
         choice1Button.setTitle(storyBrain.storyNumber[nextStory].choice1, for: .normal)
         choice2Button.setTitle(storyBrain.storyNumber[nextStory].choice2, for: .normal)
    }

}

