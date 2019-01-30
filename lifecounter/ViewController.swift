//
//  ViewController.swift
//  lifecounter
//
//  Created by Conor Reiland on 1/28/19.
//  Copyright © 2019 Conor Reiland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerLoses: UILabel!
    var player1 = Player(life: 20)
    var player2 = Player(life: 20)
    var player3 = Player(life: 20)
    var player4 = Player(life: 20)

    override func viewDidLoad() {
        super.viewDidLoad()
        player1 = Player(life: 20)
        player2 = Player(life: 20)
        player3 = Player(life: 20)
        player4 = Player(life: 20)
        playerLoses.isHidden = true
    }
    
    @IBOutlet weak var Player1Life: UILabel!
    
    @IBAction func Player1Plus5(sender: UIButton) {
        player1.addLife(amount: 5)
        Player1Life.text = "Life: " + String(player1.life)
    }
    
    @IBAction func Player1Add1(sender: UIButton) {
        player1.addLife(amount: 1)
        Player1Life.text = "Life: " + String(player1.life)
    }
    @IBAction func Player1Subtract1(_ sender: Any) {
        player1.subtractLife(amount: 1)
        Player1Life.text = "Life: " + String(player1.life)
        if player1.life <= 0 {
            playerLoses.text = "Player 1 Loses"
            playerLoses.isHidden = false
        }
    }
        
    @IBAction func Player1Subtract5(sender: UIButton) {
        player1.subtractLife(amount: 5)
        Player1Life.text = "Life: " + String(player1.life)
        if player1.life <= 0 {
            playerLoses.text = "Player 1 Loses"
            playerLoses.isHidden = false
        }
    }
    @IBOutlet weak var Player2Life: UILabel!
    
    @IBAction func Player2Plus5(sender: UIButton) {
        player2.addLife(amount: 5)
        Player2Life.text = "Life: " + String(player2.life)
        
    }
    
    @IBAction func Player2Add1(sender: UIButton) {
        player2.addLife(amount: 1)
        Player2Life.text = "Life: " + String(player2.life)
    }
    @IBAction func Player2Subtract1(sender: UIButton) {
        player2.subtractLife(amount: 1)
        Player2Life.text = "Life: " + String(player2.life)
        if player2.life <= 0 {
            playerLoses.text = "Player 2 Loses"
            playerLoses.isHidden = false
        }
    }
    @IBAction func Player2Subtract5(sender: UIButton) {
        player2.subtractLife(amount: 5)
        Player2Life.text = "Life: " + String(player2.life)
        if player2.life <= 0 {
            playerLoses.text = "Player 2 Loses"
            playerLoses.isHidden = false
        }
    }
    
    @IBOutlet weak var Player3Life: UILabel!
    
    @IBAction func Player3Plus5(sender: UIButton) {
        player3.addLife(amount: 5)
        Player3Life.text = "Life: " + String(player3.life)
    }
    
    @IBAction func Player3Add1(sender: UIButton) {
        player3.addLife(amount: 1)
        Player3Life.text = "Life: " + String(player3.life)
    }
    @IBAction func Player3Subtract1(sender: UIButton) {
        player3.subtractLife(amount: 1)
        Player3Life.text = "Life: " + String(player3.life)
        if player3.life <= 0 {
            playerLoses.text = "Player 3 Loses"
            playerLoses.isHidden = false
        }
    }
    @IBAction func Player3Subtract5(sender: UIButton) {
        player3.subtractLife(amount: 5)
        Player3Life.text = "Life: " + String(player3.life)
        if player3.life <= 0 {
            playerLoses.text = "Player 3 Loses"
            playerLoses.isHidden = false
        }
    }
    
    @IBOutlet weak var Player4Life: UILabel!
    
    @IBAction func Player4Plus5(sender: UIButton) {
        player4.addLife(amount: 5)
        Player4Life.text = "Life: " + String(player4.life)
    }
    
    @IBAction func Player4Add1(sender: UIButton) {
        player4.addLife(amount: 1)
        Player4Life.text = "Life: " + String(player4.life)
    }
    @IBAction func Player4Subtract1(sender: UIButton) {
        player4.subtractLife(amount: 1)
        Player4Life.text = "Life: " + String(player4.life)
        if player4.life <= 0 {
            playerLoses.text = "Player 4 Loses"
            playerLoses.isHidden = false
        }
    }
    @IBAction func Player4Subtract5(sender: UIButton) {
        player4.subtractLife(amount: 5)
        Player4Life.text = "Life: " + String(player4.life)
        if player4.life <= 0 {
            playerLoses.text = "Player 4 Loses"
            playerLoses.isHidden = false
        }
    }
}

class Player {
    var life : Int
    
    init(life l : Int) {
        life = l
    }
    
    func subtractLife(amount : Int){
        self.life = self.life - amount
    }
    
    func addLife(amount : Int){
        self.life = self.life + amount
    }
    
}
