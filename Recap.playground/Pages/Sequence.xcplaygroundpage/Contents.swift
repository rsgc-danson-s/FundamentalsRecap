/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence
 
 Some new shape types and options have been added to the Canvas class.
 
 Use this new functionality, and your [knowledge of colour](http://russellgordon.ca/rsgc/2016-17/ics2o/HSB_Colour_Model_-_Summary_-_Swift_3.pdf), to reproduce this abstract version of the eBay logo:
 
 ![new_ebay_logo.png](new_ebay_logo.jpg "Overlapping Shapes Logo")
 
 Color and alpha (transparency) matter.
 
 Try reproducing this image for practice.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 250)


canvas.drawShapesWithBorders = false

//draw rounded rectangle
canvas.fillColor = Color(hue: 48, saturation: 100, brightness: 100, alpha: 100)
canvas.drawRoundedRectangle(centreX: 300, centreY: 125, width: 120, height: 120)

//draw triangle
canvas.fillColor = Color(hue: 82, saturation: 100, brightness: 80, alpha: 75)
var points : [NSPoint] = []// creates empty list of type NSPOint
points.append(NSPoint(x: 320, y: 210))
points.append(NSPoint(x: 475, y: 210))
points.append(NSPoint(x: 387, y: 25))
canvas.drawCustomShape(with:points)

//draw circle
canvas.fillColor = Color.red
canvas.drawEllipse(centreX: 100, centreY: 125, width: 150, height: 150)

//draw rectangle
canvas.fillColor = Color(hue: 221, saturation: 100, brightness: 100, alpha: 75)
canvas.drawRectangle(centreX: 200, centreY: 120, width: 120, height: 225)





/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
