import SpriteKit
import GameplayKit

class Lion : GameObject {
    
    init() {
        super.init(imageString: "lion", initialScale: 1)
        self.Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start() {
        self.zPosition = 1
    }
    
    
    
    override func Update() {
       
    }
}
