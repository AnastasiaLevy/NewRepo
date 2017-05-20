function hitsScheme()
{
    this.currentX = [];
    this.currentY = [];
    this.currentWidth = [];
    this.currentHeight = [];
    this.currentPicture = [];
    this.visibleItem = [];
    this.hitsLength = 0;
    
    this.setHit = function( currentX, currentY, currentWidth, currentHeight, currentPicture )
    {
        this.hitsLength++;
        this.currentX.push( currentX );
        this.currentY.push( currentY );
        this.currentWidth.push( currentWidth );
        this.currentHeight.push( currentHeight );
        this.currentPicture.push( currentPicture );
        this.visibleItem.push( 1 );
    }
    
    this.clearScheme = function()
    {
        this.currentX = [];
        this.currentY = [];
        this.currentWidth = [];
        this.currentHeight = [];
        this.currentPicture = [];
        this.visibleItem = [];
        this.hitsLength = 0;
    }
}