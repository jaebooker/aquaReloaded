//
//  GameScene.swift
//  aqua_game
//
//  Created by dalia icedo on 3/10/17.
//  Copyright © 2017 dalia icedo. All rights reserved.
//

import SpriteKit
import GameplayKit
import Foundation
import CoreMotion

class GameScene: SKScene, SKPhysicsContactDelegate {
    let motionManager = CMMotionManager()
    
    var violetnoodle = SKSpriteNode()
    var pink_noodle = SKSpriteNode()
    var green_noodle = SKSpriteNode()
    var yring = SKSpriteNode()
    var bring = SKSpriteNode()
    var pring = SKSpriteNode()
    var gring = SKSpriteNode()
    var yring2 = SKSpriteNode()
    var yring3 = SKSpriteNode()
    var button1 = SKSpriteNode()
    var button2 = SKSpriteNode()
    var leftShooter = SKSpriteNode()
    var rightShooter = SKSpriteNode()
    var point1 = SKSpriteNode()
    var point2 = SKSpriteNode()
    var point3 = SKSpriteNode()
    let yringCategory: UInt32 = 0x1 << 1
    let yring2Category: UInt32 = 0x1 << 1
    let yring3Category: UInt32 = 0x1 << 1
    let bringCategory: UInt32 = 0x1 << 1
    let pringCategory: UInt32 = 0x1 << 1
    let gringCategory: UInt32 = 0x1 << 1
    let point1Category: UInt32 = 0x1 << 1
    let point2Category: UInt32 = 0x1 << 1
    let point3Category: UInt32 = 0x1 << 1

//    override init(size: CGSize) {
//        super.init(size: <#T##CGSize#>)
//        self.physicsWorld.contactDelegate = self
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
   override func didMove(to view: SKView) {
    
    self.motionManager.startAccelerometerUpdates()
    var array = [yring,yring2,yring3,gring,bring,pring]
    var xmin: [CGFloat]=[180,-200,-60]
    var xmax: [CGFloat]=[310,270,90]
    var ymin: [CGFloat]=[-136,-130,310]
    var ymax: [CGFloat]=[100,100,550]
    func tictoc(_ timer: Timer) {
        for i in array {
            for j in 0...2 {
                if (i.position.x >= xmin[j] && i.position.x <= xmax[j]) && (i.position.y >= ymin[j] && i.position.y <= ymax[j]){
                    i.removeFromParent()
                    print("We did it")
                }
            }
        }
    }

        //var timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true, block: <#T##(Timer) -> Void#>)
//        var timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(self.tictoc(_:)), userInfo: nil, repeats: true)
//                
//            }
//        }
        violetnoodle = self.childNode(withName: "violetnoodle") as! SKSpriteNode
        pink_noodle = self.childNode(withName: "pink_noodle") as! SKSpriteNode
        green_noodle = self.childNode(withName: "green_noodle") as! SKSpriteNode
        yring = self.childNode(withName: "yring") as! SKSpriteNode
        bring = self.childNode(withName: "bring") as! SKSpriteNode
        gring = self.childNode(withName: "gring") as! SKSpriteNode
        pring = self.childNode(withName: "pring") as! SKSpriteNode
        yring2 = self.childNode(withName: "yring2") as! SKSpriteNode
        yring3 = self.childNode(withName: "yring3") as! SKSpriteNode
        button1 = self.childNode(withName: "button1") as! SKSpriteNode
        button2 = self.childNode(withName: "button2") as! SKSpriteNode
        leftShooter = self.childNode(withName: "leftShooter") as! SKSpriteNode
        rightShooter = self.childNode(withName: "rightShooter") as! SKSpriteNode
        point1 = self.childNode(withName: "point1") as! SKSpriteNode
        point2 = self.childNode(withName: "point2") as! SKSpriteNode
        point3 = self.childNode(withName: "point3") as! SKSpriteNode
        yring.physicsBody?.categoryBitMask = yringCategory
        yring2.physicsBody?.categoryBitMask = yring2Category
        yring3.physicsBody?.categoryBitMask = yring3Category
        bring.physicsBody?.categoryBitMask = bringCategory
        pring.physicsBody?.categoryBitMask = pringCategory
        gring.physicsBody?.categoryBitMask = gringCategory
        point1.physicsBody?.categoryBitMask = point1Category
        point2.physicsBody?.categoryBitMask = point2Category
        point3.physicsBody?.categoryBitMask = point3Category
        yring.physicsBody?.contactTestBitMask = point3Category
        //yring.physicsBody?.collisionBitMask = 0
        point3.physicsBody?.contactTestBitMask = yringCategory
        point3.physicsBody?.collisionBitMask = 0
        yring2.physicsBody?.contactTestBitMask = point3Category
        //yring2.physicsBody?.collisionBitMask = 0
        yring3.physicsBody?.contactTestBitMask = point3Category
        //yring3.physicsBody?.collisionBitMask = 0
        bring.physicsBody?.contactTestBitMask = point3Category
        //bring.physicsBody?.collisionBitMask = 0
        pring.physicsBody?.contactTestBitMask = point3Category
        //pring.physicsBody?.collisionBitMask = 0
        bring.physicsBody?.contactTestBitMask = point3Category
        //bring.physicsBody?.collisionBitMask = 0
        gring.physicsBody?.contactTestBitMask = point3Category
        //gring.physicsBody?.collisionBitMask = 0
        point3.physicsBody?.contactTestBitMask = yring2Category
        point3.physicsBody?.contactTestBitMask = yring3Category
        point3.physicsBody?.contactTestBitMask = pringCategory
        point3.physicsBody?.contactTestBitMask = bringCategory
        point3.physicsBody?.contactTestBitMask = gringCategory
        point3.physicsBody?.usesPreciseCollisionDetection = true
        yring.physicsBody?.usesPreciseCollisionDetection = true
        yring3.physicsBody?.usesPreciseCollisionDetection = true
        yring2.physicsBody?.usesPreciseCollisionDetection = true
        bring.physicsBody?.usesPreciseCollisionDetection = true
        gring.physicsBody?.usesPreciseCollisionDetection = true
        pring.physicsBody?.usesPreciseCollisionDetection = true
//    var timer = Timer.scheduledTimer(withTimeInterval: 0.2,
//                                     repeats: true) {
//                                        [weak self] timer in
//                                        guard let strongSelf = self else {
//                                            return
//                                        }
//                                        for i in array {
//                                            for j in 0...2 {
////                                                if (i.position.x >= xmin[j] && i.position.x <= xmax[j]) && (i.position.y >= ymin[j] && i.position.y <= ymax[j]){
//                                                if (self?.yring.position.x >= xmin[j] && self?.yring.position.x <= xmax[j]) && (self?.yring.position.y >= ymin[j] && (self?.yring.position.y)! <= ymax[j]){
//
//                                                    self?.yring.removeFromParent()
//                                                        print("yring destroyed")}
//                                                
//                                                if (self?.yring2.position.x >= xmin[j] && self?.yring2.position.x <= xmax[j]) && (self?.yring2.position.y >= ymin[j] && self?.yring2.position.y <= ymax[j]){
//                                                
//                                                        self?.yring2.removeFromParent()
//                                                        print("yring2 destroyed")
//                                                    }
//                                                 if (self?.yring3.position.x >= xmin[j] && self?.yring3.position.x <= xmax[j]) && (self?.yring3.position.y >= ymin[j] && self?.yring3.position.y <= ymax[j]){
//                                                
//                                                        self?.yring3.removeFromParent()
//                                                        print("yring3 destroyed")
//                                                    }
//                                                    if i == self?.pring {
//                                                        self?.pring.removeFromParent()
//                                                        print("pring destroyed")
//                                                    }
//                                                    if i == self?.bring {
//                                                        self?.bring.removeFromParent()
//                                                        print("bring destroyed")
//                                                    }
//                                                //}
//                                            }}}
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        border.friction = 0
        border.restitution = 1
        
        self.physicsBody = border
        let backgroundMusic = SKAudioNode(fileNamed: "music.mp3")
        backgroundMusic.autoplayLooped = true
        addChild(backgroundMusic)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let node : SKNode = self.atPoint(location)
            if node.name == "button1" {
                bubbles()
                print("buttonpressed")
            }
            if node.name == "button2" {
                print("button2pressed")
                bubbles2()
            }
            }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let node : SKNode = self.atPoint(location)
            if node.name == "button1" {
                print("buttonpressed")
            }
            if node.name == "button1" {
                print("buttonpressed")
            }
            if node.name == "button2" {
                print("button2pressed")
            }
        }
    }
    func bubbles() {
        run(SKAction.playSoundFileNamed("bubblesound.mp3", waitForCompletion: false))
        let bubble = SKSpriteNode(imageNamed: "bubble_1")
        bubble.position = leftShooter.position
        bubble.position.y += 1
        bubble.physicsBody = SKPhysicsBody(circleOfRadius: bubble.size.width / 2)
        bubble.physicsBody?.isDynamic = true
        bubble.physicsBody?.collisionBitMask = 0
        bubble.physicsBody?.usesPreciseCollisionDetection = true
        self.addChild(bubble)
        print("LeftShooter")
        let animationDuration:TimeInterval = 1.5
        var actionArray = [SKAction]()
        
        actionArray.append(SKAction.move(to: CGPoint(x: leftShooter.position.x, y: self.frame.size.height + 10), duration: animationDuration))
        actionArray.append(SKAction.removeFromParent())
        
        bubble.run(SKAction.sequence(actionArray))
        
    }
    func bubbles2() {
        run(SKAction.playSoundFileNamed("bubblesound.mp3", waitForCompletion: false))
        let bubble2 = SKSpriteNode(imageNamed: "bubble_1")
        bubble2.position = rightShooter.position
        bubble2.position.y += 1
        bubble2.physicsBody = SKPhysicsBody(circleOfRadius: bubble2.size.width / 2)
        bubble2.physicsBody?.isDynamic = true
        bubble2.physicsBody?.collisionBitMask = 0
        bubble2.physicsBody?.usesPreciseCollisionDetection = true
        self.addChild(bubble2)
        print("RightShooter")
        let animationDuration:TimeInterval = 1.5
        var actionArray = [SKAction]()
        
        actionArray.append(SKAction.move(to: CGPoint(x: rightShooter.position.x, y: self.frame.size.height + 10), duration: animationDuration))
        actionArray.append(SKAction.removeFromParent())
        
        bubble2.run(SKAction.sequence(actionArray))
    }
    func didBegin(_ contact: SKPhysicsContact) {
        var firstBody:SKPhysicsBody
        var secondBody:SKPhysicsBody
        
        if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask {
            firstBody = contact.bodyA
            secondBody = contact.bodyB
        }else{
            firstBody = contact.bodyB
            secondBody = contact.bodyA
        }
        
        if (firstBody.categoryBitMask & yringCategory) != 0 && (secondBody.categoryBitMask & point3Category) != 0 {
            circleDidEnterNoodle(yringCategory: secondBody.node as! SKSpriteNode, point3Category: firstBody.node as! SKSpriteNode)
            print("collision")
        }
        if (firstBody.categoryBitMask & yring2Category) != 0 && (secondBody.categoryBitMask & point3Category) != 0 {
            circleDidEnterNoodle2(yring2Category: secondBody.node as! SKSpriteNode, point3Category: firstBody.node as! SKSpriteNode)
            print("collision")
        }
        if (firstBody.categoryBitMask & yring3Category) != 0 && (secondBody.categoryBitMask & point3Category) != 0 {
            circleDidEnterNoodle3(yring3Category: secondBody.node as! SKSpriteNode, point3Category: firstBody.node as! SKSpriteNode)
            print("collision")
        }
        if (firstBody.categoryBitMask & bringCategory) != 0 && (secondBody.categoryBitMask & point3Category) != 0 {
            circleDidEnterNoodle4(bringCategory: secondBody.node as! SKSpriteNode, point3Category: firstBody.node as! SKSpriteNode)
            print("collision")
        }
        if (firstBody.categoryBitMask & pringCategory) != 0 && (secondBody.categoryBitMask & point3Category) != 0 {
            circleDidEnterNoodle5(pringCategory: secondBody.node as! SKSpriteNode, point3Category: firstBody.node as! SKSpriteNode)
            print("collision")
        }
        if (firstBody.categoryBitMask & gringCategory) != 0 && (secondBody.categoryBitMask & point3Category) != 0 {
            circleDidEnterNoodle6(gringCategory: secondBody.node as! SKSpriteNode, point3Category: firstBody.node as! SKSpriteNode)
            print("collision")
        }
        
    }
    func circleDidEnterNoodle (yringCategory:SKSpriteNode, point3Category:SKSpriteNode) {
        yringCategory.removeFromParent()
        print("one circle removed")
    }
    func circleDidEnterNoodle2 (yring2Category:SKSpriteNode, point3Category:SKSpriteNode) {
        yring2Category.removeFromParent()
        print("one circle removed")
    }
    func circleDidEnterNoodle3 (yring3Category:SKSpriteNode, point3Category:SKSpriteNode) {
        yring3Category.removeFromParent()
        print("one circle removed")
    }
    func circleDidEnterNoodle4 (bringCategory:SKSpriteNode, point3Category:SKSpriteNode) {
        bringCategory.removeFromParent()
        print("one circle removed")
    }
    func circleDidEnterNoodle5 (pringCategory:SKSpriteNode, point3Category:SKSpriteNode) {
        pringCategory.removeFromParent()
        print("one circle removed")
    }
    func circleDidEnterNoodle6 (gringCategory:SKSpriteNode, point3Category:SKSpriteNode) {
        gringCategory.removeFromParent()
        print("one circle removed")
    }
    override func update(_ currentTime: TimeInterval) {
        // Unwrap the accelerometer data optional:
        if let accelData = self.motionManager.accelerometerData {
            var forceAmount:CGFloat
            var movement = CGVector()
            // Based on the device orientation, the tilt number
            // can indicate opposite user desires. The
            // UIApplication class exposes an enum that allows
            // us to pull the current orientation.
            // We will use this opportunity to explore Swift's
            // switch syntax and assign the correct force for the
            // current orientation:
            switch
            UIApplication.shared.statusBarOrientation {
            case .landscapeLeft:
                // The 20,000 number is an amount that felt right
                // for our example, given Pierre's 30kg mass:
                forceAmount = 20000
            case .landscapeRight:
                forceAmount = -20000
            default:
                forceAmount = 0
            }
            // If the device is tilted more than 15% towards
            // vertical, then we want to move the Penguin:
            if accelData.acceleration.y > 0.15 {
                movement.dx = forceAmount
            }
                // Core Motion values are relative to portrait view.
                // Since we are in landscape, use y-values for x-axis.
            else if accelData.acceleration.y < -0.15 {
                movement.dx = -forceAmount
            }
            // Apply the force we created to the player:
            leftShooter.physicsBody?.applyForce(movement)
            //rightShooter.physicsBody?.applyForce(movement)
        }
        // Called before each frame is rendered
    }
}
