//
//  ASToastTests.swift
//  ASToast
//
//  Created by Abdullah Selek on 06/08/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

import UIKit
import Quick
import Nimble

@testable import ASToast

class ASToastTests: QuickSpec {
    
    override func spec() {
        describe(".makeToast with single text") {
            context("Toast view display success") {
                it("set a valid message") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("TEST", backgroundColor: nil)
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view display fails") {
                it("set a empty message") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("", backgroundColor: UIColor.greenColor())
                    expect(view.subviews.count).to(equal(0))
                }
            }
        }
        describe(".makeToast with message, duration, position") {
            context("Toast view display success with 3 parameters") {
                it("set valid message, duration and position") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("TEST", duration: NSTimeInterval(3.0),
                                   position: ASToastPosition.ASToastPositionCenter.rawValue,
                                   backgroundColor: nil)
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view display success with 3 parameters when position is invalid") {
                it("set a invalid position, valid text and duration") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("TEST", duration: NSTimeInterval(3.0), position: "",
                                   backgroundColor: UIColor.blueColor())
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view display fails with 3 parameters when text is empty") {
                it("set a empty text, valid duration and valid position") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("", duration: NSTimeInterval(3.0), position: ASToastPosition.ASToastPositionCenter.rawValue,
                                   backgroundColor: UIColor.blueColor())
                    expect(view.subviews.count).to(equal(0))
                }
            }
        }
        describe(".makeToast with message, duration, position and title") {
            context("Toast view diplays success with 4 valid parameters") {
                it("set valid message, duration, position and title") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("TEST", duration: NSTimeInterval(3.0), position: ASToastPosition.ASToastPositionCenter.rawValue,
                                   title: "TITLE", backgroundColor: nil)
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view display success with 4 parameters when text is empty") {
                it("set empty message, duration, position and title") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("", duration: NSTimeInterval(3.0), position: ASToastPosition.ASToastPositionCenter.rawValue,
                                   title: "TITLE", backgroundColor: UIColor.blueColor())
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view display success with 4 parameters when title is empty") {
                it("set message, duration, position and empty title") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("TEST", duration: NSTimeInterval(3.0), position: ASToastPosition.ASToastPositionCenter.rawValue,
                                   title: "", backgroundColor: UIColor.blueColor())
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view display success with 4 parameters when position empty") {
                it("set message, duration, position and empty title") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("TEST", duration: NSTimeInterval(3.0), position: "", title: "TITLE",
                                   backgroundColor: nil)
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view display fails with 4 parameters when mesage and title empty") {
                it("set message, duration, position and empty title") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("", duration: NSTimeInterval(3.0), position: ASToastPosition.ASToastPositionCenter.rawValue, title: "", backgroundColor: UIColor.blueColor())
                    expect(view.subviews.count).to(equal(0))
                }
            }
        }
        describe(".makeToast with message, duration, position and image") {
            context("Toast view diplay success with 4 valid parameters") {
                it("set valid message, duration, position and image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("TEST", duration: NSTimeInterval(3.0), position: ASToastPosition.ASToastPositionCenter.rawValue,
                                   image: UIImage(named: "apple_logo.png"), backgroundColor: nil)
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay success with duration, position, image and empty message") {
                it("set duration, position, image and empty message") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("", duration: NSTimeInterval(3.0), position: ASToastPosition.ASToastPositionCenter.rawValue,
                                   image: UIImage(named: "apple_logo.png"), backgroundColor: UIColor.blueColor())
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay success with message, duration, image and empty position") {
                it("set message, duration, position and empty image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("TEST", duration: NSTimeInterval(3.0), position: "",
                                   image: UIImage(named: "apple_logo.png"), backgroundColor: nil)
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay fails with duration, position, empty message and image") {
                it("set message, duration, position and empty image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("", duration: NSTimeInterval(3.0), position: ASToastPosition.ASToastPositionCenter.rawValue,
                                   image: UIImage(named: ""), backgroundColor: UIColor.blueColor())
                    expect(view.subviews.count).to(equal(0))
                }
            }
        }
        describe(".makeToast with message, duration, position, title and image") {
            context("Toast view diplay success with 5 valid parameters") {
                it("set valid message, duration, position, title and image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("TEST", duration: NSTimeInterval(3.0), position: ASToastPosition.ASToastPositionCenter.rawValue,
                                   title: "TITLE", image: UIImage(named: "apple_logo.png"), backgroundColor: nil)
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay success with message, duration, position, image and empty title") {
                it("set valid message, duration, position, title and image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("TEST", duration: NSTimeInterval(3.0), position: ASToastPosition.ASToastPositionCenter.rawValue,
                                   title: "", image: UIImage(named: "apple_logo.png"), backgroundColor: UIColor.blueColor())
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay success with message, title, duration, position and empty image") {
                it("set valid message, duration, position, title and image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("TEST", duration: NSTimeInterval(3.0), position: ASToastPosition.ASToastPositionCenter.rawValue,
                                   title: "", image: UIImage(named: ""), backgroundColor: nil)
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay success with message, title, duration, image and empty position") {
                it("set valid message, duration, position, title and image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("TEST", duration: NSTimeInterval(3.0), position: "",
                                   title: "", image: UIImage(named: ""), backgroundColor: UIColor.blueColor())
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay success with duration, position, image and empty message, title") {
                it("set valid message, duration, position, title and image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("", duration: NSTimeInterval(3.0), position: ASToastPosition.ASToastPositionCenter.rawValue,
                                   title: "", image: UIImage(named: "apple_logo.png"), backgroundColor: UIColor.blueColor())
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay fails with duration, position and empty message, title, image") {
                it("set valid message, duration, position, title and image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToast("", duration: NSTimeInterval(3.0), position: ASToastPosition.ASToastPositionCenter.rawValue,
                                   title: "", image: UIImage(named: ""), backgroundColor: UIColor.blueColor())
                    expect(view.subviews.count).to(equal(0))
                }
            }
        }
        describe(".showToast with view") {
            context("Toast view display success with view") {
                it("set valid view") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    let toastView = UIView()
                    view.showToast(toastView)
                    expect(view.subviews.count).to(equal(1))
                }
            }
        }
        describe(".showToast with toastView, duration, position") {
            context("Toast view display success with toastView, duration and position") {
                it("set valid toastView, duration and position") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    let toastView = UIView()
                    view.showToast(toastView, duration: NSTimeInterval(3.0), position: ASToastPosition.ASToastPositionCenter.rawValue)
                    expect(view.subviews.count).to(equal(1))
                }
            }
            context("Toast view display success with toastView, duration and empty position") {
                it("set valid toastView, duration and empty position") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    let toastView = UIView()
                    view.showToast(toastView, duration: NSTimeInterval(3.0), position: "")
                    expect(view.subviews.count).to(equal(1))
                }
            }
        }
        describe(".makeToastActivity") {
            context("Toast Activity display success") {
                it("Call makeToastActivity") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToastActivity()
                    expect(view.subviews.count).to(equal(1))
                }
            }
        }
        describe(".hideToastActivity") {
            context("Toast Activity dismiss success") {
                it("Call hideToastActivity") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view.makeToastActivity()
                    expect(view.subviews.count).to(equal(1))
                    view.hideToastActivity()
                }
            }
        }
    }
    
}
