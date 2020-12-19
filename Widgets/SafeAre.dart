//A widget that insets its child by sufficient padding to avoid intrusions by the operating system.
//It will give automatic padding to avoid Notch or any physical feature of display from the content.
//It have 5 main properties
//1.Child, 2.top, 3.bottom, 4.left, 5.right
SafeArea(
  child: ListView(),
  top: true,
  bottom: true,
  left: false,
  right: false
)

//this is how you can use widgets and your content is not coverd from physical featureof your screen.
//if you want it to be in safe area from all the side you can give padding to it.
SafeArea(
  minimum: EdgeInsets.all(5.0),  //or any double value you can provide according to your need 
)
