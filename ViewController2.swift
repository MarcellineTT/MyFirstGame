//
//  ViewController2.swift
//  MyFirstGame
//
//  Created by Tanya Tomchuk on 31.07.16.
//  Copyright © 2016 Tanya Tomchuk. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    let pers1i: UIImage = UIImage(named: "pikachu.png")!
    let pers1v: UIImageView = UIImageView()
    
    let pers2i: UIImage = UIImage(named: "jigglypuff.png")!
    let pers2v: UIImageView = UIImageView()
    
    func pers1_view() {
        pers1v.image = pers1i
        pers1v.frame.size.width = 40
        pers1v.frame.size.height = 40
        view.addSubview(pers1v)
    }
    
    func pers2_view() {
        pers2v.image = pers2i
        pers2v.frame.size.width = 40
        pers2v.frame.size.height = 40
        view.addSubview(pers2v)
    }
    
    @IBOutlet weak var cube_img: UIImageView!
    
    func DiceGo() -> Int {
        let random_cube = Int(arc4random_uniform(6)+1)
        let link_cube:String = "cube" + String(random_cube) + ".png"
        let cubei: UIImage = UIImage(named: link_cube)!
        cube_img.image = cubei
        view.addSubview(cube_img)
        return random_cube
        
    }
    @IBAction func go(sender: UIButton) {
        var clic_go = DiceGo()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pers1_view()
        pers2_view()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
