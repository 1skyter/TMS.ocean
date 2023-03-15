import UIKit

private extension TimeInterval {
    static let playerImagesAnimationDuration = 0.5
    static let playerMovementAnimationDuration = 0.3
}

private extension String {
    static let modelName = "player_"
    static let modelJumpName = "player_jump"
}

private extension Int {
    static let startImageNumber = 1
    static let endImageNumber = 8
}

final class Player {
    var model = UIImageView()
    var isJumpingNow = false
    private var startPlayerPos: CGPoint?
    private var imgAnimationSet: [UIImage] = []
    
    func hideModel(_ status: Bool) {
        switch status {
        case true:
            model.stopAnimating()
            model.isHidden = true
        case false:
            model.startAnimating()
            model.isHidden = false
        }
    }
    
    func jump() {
        let startSize = model.frame.size
        isJumpingNow = true
        model.stopAnimating()
        
        UIView.animateKeyframes(withDuration: .defaultJumpDuration, delay: 0, options: .autoreverse) {
            let newSize = self.model.frame.size.width * Double.sizeWhileJumping
            
            self.model.frame.size = CGSize(width: newSize / 2, height: newSize)
        } completion: { _ in
            self.model.frame.size = startSize
            self.isJumpingNow = false
            self.model.startAnimating()
        }
    }
    
    func detectPlayerMove(direction: Move) {
        UIView.animate(withDuration: .playerMovementAnimationDuration, delay: 0, options: .curveLinear) {
            let movementLenght = self.model.frame.width / .playerMovementDivider
            
            switch direction {
            case .left:
                self.model.frame.origin.x -= movementLenght
            case .right:
                self.model.frame.origin.x += movementLenght
            }
            
        } completion: { isCancelled in
            guard !isCancelled else { return }
            if let playerLayer = self.model.layer.presentation() {
                self.model.frame.origin.x = playerLayer.frame.origin.x
            }
        }
    }
    
    func inCorrectPosition() -> Bool {
        guard let layer = model.layer.presentation()?.frame else { return true }
        guard let superview = model.superview?.frame else { return true }
        let currentXPos = layer.origin.x
        
        if currentXPos <= 0 || currentXPos >= superview.width - model.frame.width {
            return false
        }
        
        return true
    }
    
    func setup(viewWidth: CGFloat, viewHeight: CGFloat) {
        let playerHeight = viewWidth / .playerContentDivider
        let playerWidth = playerHeight / 2
        let startPlayerPoint = CGPoint(
            x: viewWidth / 2 - playerWidth / 2,
            y: viewHeight - (playerHeight + viewHeight / .playerPaddingMultiplyer)
        )
        let playerFrameSize = CGSize(width: playerWidth, height: playerHeight)
        
        startPlayerPos = startPlayerPoint
        model.frame = CGRect(origin: startPlayerPoint, size: playerFrameSize)
        model.layer.contentsGravity = .resize
        model.animationImages = setImageAnimationSet(imageName: .modelName)
        model.animationDuration = .playerImagesAnimationDuration
        model.image = UIImage(named: .modelJumpName)
    }
    
    private func setImageAnimationSet(imageName: String) -> [UIImage] {
        var imgListArray: [UIImage] = []
        
        for countValue in Int.startImageNumber...Int.endImageNumber {
            let strImageName: String = imageName + String(countValue)
            let image = UIImage(named: strImageName)
            
            if let image = image {
                imgListArray.append(image)
            }
        }
        
        return imgListArray
    }
    
    func setStartPosition() {
        if let playerPos = startPlayerPos {
            model.frame.origin = playerPos
        }
    }
    
}
