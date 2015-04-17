Udemy iOS programming using swift:
Tic Tac Toe app
![screen shot](/screenshot/sc1.png)

## Takeaways

### Animation
```
UIView.animateWithDuration(0.5, animations: {() -> Void in
    self.playAgainBtn.center = CGPointMake(self.playAgainBtn.center.x + 600, self.playAgainBtn.center.y)
})
```

### Programmatically set button image
```
@IBAction func placeSymbol(sender: AnyObject) {
   \\...
   sender.setImage(image, forState: .Normal)
   \\...
}
```

### Find certain UI element
```
for subview in view.subviews {
    if subview.isKindOfClass(UIButton) {
        // do something
    }
}
```

### Main.storyboard
- Multiple UIbuttons sharing the same @IBAction: using ```sender: AnyObject``` to identify each of them
- Autolayout: using _left_ and _right_ constraints relative to the "board" to place the buttons on desired positions