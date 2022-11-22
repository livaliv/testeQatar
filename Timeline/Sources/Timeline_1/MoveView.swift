// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class MoveView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 375, height: 375)
        public static let backgroundColor = UIColor.white
    }

    public var blue: ShapeView!
    public var green: ShapeView!
    public var red: ShapeView!

    public override var intrinsicContentSize: CGSize {
        return Defaults.size
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        backgroundColor = Defaults.backgroundColor
        clipsToBounds = false
        createViews()
        addSubviews()
        layer.name = "sceneLayer"
        //scale(to: frame.size)
    }

    /// Scales `self` and its subviews to `size`.
    ///
    /// - Parameter size: The size `self` is scaled to.
    ///
    /// UIKit specifies: "In iOS 8.0 and later, the transform property does not affect Auto Layout. Auto layout
    /// calculates a view's alignment rectangle based on its untransformed frame."
    ///
    /// see: https://developer.apple.com/documentation/uikit/uiview/1622459-transform
    ///
    /// If there are any constraints in IB affecting the frame of `self`, this method will have consequences on
    /// layout / rendering. To properly scale an animation, you will have to position the view manually.
    public func scale(to size: CGSize) {
        let x = size.width / Defaults.size.width
        let y = size.height / Defaults.size.height
        transform = CGAffineTransform(scaleX: x, y: y)
    }

    private func createViews() {
        CATransaction.suppressAnimations {
            createBlue()
            createGreen()
            createRed()
        }
    }

    private func createBlue() {
        blue = ShapeView(frame: CGRect(x: 68, y: 188, width: 100, height: 100))
        blue.backgroundColor = UIColor.clear
        blue.layer.shadowOffset = CGSize(width: 0, height: 0)
        blue.layer.name = "blue"
        blue.layer.shadowColor = UIColor.clear.cgColor
        blue.layer.shadowOpacity = 1
        blue.layer.position = CGPoint(x: 68, y: 188)
        blue.layer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        blue.layer.masksToBounds = false
        blue.shapeLayer.name = "blue.shapeLayer"
        blue.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        blue.shapeLayer.strokeColor = UIColor(red: 0.059, green: 0.482, blue: 0.741, alpha: 1).cgColor
        blue.shapeLayer.fillColor = UIColor(red: 0.145, green: 0.678, blue: 1, alpha: 1).cgColor
        blue.shapeLayer.lineDashPattern = []
        blue.shapeLayer.lineDashPhase = 0
        blue.shapeLayer.lineWidth = 10
        blue.shapeLayer.path = CGPathCreateWithSVGString("M0,0l100,0 0,100 -100,0 0,-100zM0,0")!


    }

    private func createGreen() {
        green = ShapeView(frame: CGRect(x: 188, y: 188, width: 100, height: 100))
        green.backgroundColor = UIColor.clear
        green.layer.shadowOffset = CGSize(width: 0, height: 0)
        green.layer.name = "green"
        green.layer.shadowColor = UIColor.clear.cgColor
        green.layer.shadowOpacity = 1
        green.layer.position = CGPoint(x: 188, y: 188)
        green.layer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        green.layer.masksToBounds = false
        green.shapeLayer.name = "green.shapeLayer"
        green.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        green.shapeLayer.strokeColor = UIColor(red: 0.157, green: 0.596, blue: 0.498, alpha: 1).cgColor
        green.shapeLayer.fillColor = UIColor(red: 0.314, green: 0.89, blue: 0.761, alpha: 1).cgColor
        green.shapeLayer.lineDashPattern = []
        green.shapeLayer.lineDashPhase = 0
        green.shapeLayer.lineWidth = 10
        green.shapeLayer.path = CGPathCreateWithSVGString("M0,0l100,0 0,100 -100,0 0,-100zM0,0")!


    }

    private func createRed() {
        red = ShapeView(frame: CGRect(x: 308, y: 188, width: 100, height: 100))
        red.backgroundColor = UIColor.clear
        red.layer.shadowOffset = CGSize(width: 0, height: 0)
        red.layer.name = "red"
        red.layer.shadowColor = UIColor.clear.cgColor
        red.layer.shadowOpacity = 1
        red.layer.position = CGPoint(x: 308, y: 188)
        red.layer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        red.layer.masksToBounds = false
        red.shapeLayer.name = "red.shapeLayer"
        red.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        red.shapeLayer.strokeColor = UIColor(red: 0.612, green: 0, blue: 0.29, alpha: 1).cgColor
        red.shapeLayer.fillColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        red.shapeLayer.lineDashPattern = []
        red.shapeLayer.lineDashPhase = 0
        red.shapeLayer.lineWidth = 10
        red.shapeLayer.path = CGPathCreateWithSVGString("M0,0l100,0 0,100 -100,0 0,-100zM0,0")!


    }

    private func addSubviews() {
        addSubview(blue)
        addSubview(green)
        addSubview(red)
    }
}
