//A widget that centers its child within itself.
//This widget will be as big as possible if its dimensions are constrained and widthFactor and heightFactor are null.
//If a dimension is unconstrained and the corresponding size factor is null then the widget will match its child's size in that dimension.
//If a size factor is non-null then the corresponding dimension of this widget will be the product of the child's dimension and the size factor.
//For example if widthFactor is 2.0 then the width of this widget will always be twice its child's width.

Center({Key key, double widthFactor, double heightFactor, Widget child})
//Creates a widget that centers its child.
