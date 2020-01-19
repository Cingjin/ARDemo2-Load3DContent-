//
//  CJBodyGrootNode.swift
//  ARDemo2(Load3DContent)
//
//  Created by Anmo on 2020/1/19.
//  Copyright © 2020 com.Cingjin. All rights reserved.
//

import UIKit
import SceneKit

class CJBodyGrootNode: SCNNode {

    override init() {
        super.init()
        guard let url1 = Bundle.main.url(forResource: "baby_groot", withExtension: "dae") else {
            fatalError("baby_groot.dae not exit.")
        }
        
        // 加载scn文件
        guard let url2 = Bundle.main.url(forResource: "baby_groot", withExtension: "scn") else {
            fatalError("baby_groot.scn not exit.")
        }

        guard let customNode = SCNReferenceNode(url: url1) else {
            fatalError("load baby_groot error.")
        }
        
        customNode.load()
        
        self.addChildNode(customNode)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
