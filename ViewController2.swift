//
//  ViewController2.swift
//  MyFirstGame
//
//  Created by Tanya Tomchuk on 31.07.16.
//  Copyright © 2016 Tanya Tomchuk. All rights reserved.
//

import UIKit
var dicep1 = 0
var dicep2 = 0



class ViewController2: UIViewController {
    
    let pers1i: UIImage = UIImage(named: "pikachu.png")!
    let pers1v: UIImageView = UIImageView()
    
    let pers2i: UIImage = UIImage(named: "jigglypuff.png")!
    let pers2v: UIImageView = UIImageView()
    
    var x: [Int] = [0,40,80,120,160,200,240,280,280,240,200,160,120,80,40,0,0,40,80,120,160,200,240,280,280,240,200,160,120,80,40,0,0,40,80,120,160,200,240,280,280,240,200,160,120,80,40,0,0,40,80,120,160,200,240,280,280,240,200,160,120,80,40,0]
    var y: [Int] = [300,300,300,300,300,300,300,300,260,260,260,260,260,260,260,260,220,220,220,220,220,220,220,220,180,180,180,180,180,180,180,180,140,140,140,140,140,140,140,140,100,100,100,100,100,100,100,100,60,60,60,60,60,60,60,60,20,20,20,20,20,20,20,20]
    
    
    func pers1_view() {
        pers1v.image = pers1i
        pers1v.frame.size.width = 40
        pers1v.frame.size.height = 40
        UIView.animateWithDuration(0.8, animations: {
            self.pers1v.frame.origin.x = CGFloat(self.x[dicep1])
            self.pers1v.frame.origin.y = CGFloat(self.y[dicep1])
        })
        view.addSubview(pers1v)
    }
    
    func pers2_view() {
        pers2v.image = pers2i
        pers2v.frame.size.width = 40
        pers2v.frame.size.height = 40
        UIView.animateWithDuration(0.8, animations: {
            self.pers2v.frame.origin.x = CGFloat(self.x[dicep2])
            self.pers2v.frame.origin.y = CGFloat(self.y[dicep2])
        })
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
    
    func pers2go() {
        dicep2 += DiceGo()
        if (dicep2 < 63) {
            pers2_view()
        }
    }
    
    @IBAction func go(sender: UIButton) {
        dicep1 += DiceGo()
        if (dicep1 < 63) {
            pers1_view()
        }
        _ = NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: #selector(ViewController2.pers2go), userInfo: nil, repeats: false)
        
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
