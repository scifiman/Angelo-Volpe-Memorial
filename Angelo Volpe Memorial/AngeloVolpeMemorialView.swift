//
//  Angelo_Volpe_MemorialView.swift
//  Angelo Volpe Memorial
//
//  Created by Rippy, Jeff on 5/11/22.
//

import Foundation
import ScreenSaver
import SpriteKit

final class AngeloVolpeMemorialView: ScreenSaverView {
    // MARK: - Properties

    var spriteView: SKView!
    var scene: MemorialScene!

    private let textLabel: NSTextField = {
       let label = NSTextField()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isEditable = false
        label.drawsBackground = false
        label.isBordered = false
        label.isBezeled = false
        label.isSelectable = false
        label.textColor = .white
        return label
    }()

    private lazy var configWindowController: NSWindowController = {
        return ConfigurationWindowController()
    }()

    // MARK: - Initializers
    override init?(frame: NSRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: - ScreenSaverView
    override func animateOneFrame() {
        animationTimeInterval = 1 / 30

/*
        textLabel.stringValue = "Hello Screensaver World &shrug;"
        addSubview(textLabel)
        addConstraints([
            NSLayoutConstraint(item: textLabel, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: textLabel, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)
        ])
*/
        
/*
        let myImageView = NSImageView(frame: frame)
        myImage = NSImage(named: NSImage.Name("AngeloVolpe@3x.png"))
        myImage?.size.width = bounds.width
        myImage?.size.height = bounds.height
        myImageView.image = myImage
        addSubview(myImageView)

        addConstraints([
            NSLayoutConstraint(item: myImageView!, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: myImageView!, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)
        ])
*/
        if spriteView == nil {
            let spriteView = SKView(frame: frame)
            let scene = MemorialScene(size: frame.size)
            self.spriteView = spriteView
            addSubview(spriteView)
            scene.isUserInteractionEnabled = false
            spriteView.presentScene(scene)
        }

//        super .animateOneFrame()
    }

    override var hasConfigureSheet: Bool {
        return false
    }
}
