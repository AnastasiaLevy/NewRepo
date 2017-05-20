function cardsImages()
{
    this.imeagesTest = [];
    this.imeagesLength = 0;
    
    this.setTestImeage = function( objImage )
    {
        this.imeagesLength++;
        this.imeagesTest.push( objImage );
    }
    
    this.showOpenedImage = function( openImage )
    {
        for ( var i = 0; i < currentHitsScheme.hitsLength; i++ )
        {
            if ( i == ( openImage - 1 ) )
            {
                var scaledWidth = getResizedSize( "width", ( currentHitsScheme.currentPicture[i] - 1 ) ) - 3;
                var scaledHeight = getResizedSize( "height", ( currentHitsScheme.currentPicture[i] - 1 ) ) - 3;
                var deltaX = 0;
                var deltaY = 0;
                if ( getResolutionCompare( ( currentHitsScheme.currentPicture[i] - 1 ) ) == "width" )
                {
                    scaledWidth = this.imeagesTest[( currentHitsScheme.currentPicture[i] - 1 )].width * ( scaledHeight / ( this.imeagesTest[( currentHitsScheme.currentPicture[i] - 1 )].height ) );
                    deltaY = ( currentHitsScheme.currentHeight[0] - scaledHeight ) / 2 - 2;
                }
                else
                {
                    scaledHeight = this.imeagesTest[( currentHitsScheme.currentPicture[i] - 1 )].height * ( scaledWidth / ( this.imeagesTest[( currentHitsScheme.currentPicture[i] - 1 )].width ) );
                    deltaX = ( currentHitsScheme.currentWidth[0] - scaledWidth ) / 2 - 2;
                }
                ctx.drawImage( this.imeagesTest[( currentHitsScheme.currentPicture[i] - 1 )], currentHitsScheme.currentX[i] + 2 + deltaX, currentHitsScheme.currentY[i] + 2 + deltaY, scaledWidth, scaledHeight );
            }
        }
    }
    
    this.animationOpenImage = function( openImage, points )
    {
        for ( var i = 0; i < currentHitsScheme.hitsLength; i++ )
        {
            if ( i == ( openImage - 1 ) )
            {
                var scaledWidth = getResizedSize( "width", ( currentHitsScheme.currentPicture[i] - 1 ) ) - 3;
                var scaledHeight = getResizedSize( "height", ( currentHitsScheme.currentPicture[i] - 1 ) ) - 3;
                var deltaX = 0;
                var deltaY = 0;
                var deltaXStroke = 0;
                var deltaYStroke = 0;
                var imgW, imgH, imgDx;
                var currentSize;
                if ( getResolutionCompare( ( currentHitsScheme.currentPicture[i] - 1 ) ) == "width" )
                {
                    deltaY = ( currentHitsScheme.currentHeight[0] - scaledHeight ) / 2 - 2;
                    imgW = currentHitsScheme.currentWidth[i];//this.imeagesTest[( currentHitsScheme.currentPicture[i] - 1 )].width;
                    imgH = this.imeagesTest[( currentHitsScheme.currentPicture[i] - 1 )].height + deltaY;
                    deltaYStroke = 2;
                    currentSize = "width";
                }
                else
                {
                    deltaX = ( currentHitsScheme.currentWidth[0] - scaledWidth ) / 2 - 2;
                    imgH = this.imeagesTest[( currentHitsScheme.currentPicture[i] - 1 )].height;
                    imgW = currentHitsScheme.currentWidth[i];//this.imeagesTest[( currentHitsScheme.currentPicture[i] - 1 )].width + deltaX;
                    deltaYStroke = 2;
                    currentSize = "height"
                }
                
                var yTopStart = points[0][1];
                var yTopEnd = points[1][1];
                if ( ( points[1][0] - points[0][0] - deltaX * 2 ) > 0 )
                {
                    var tgtWidth = points[1][0] - points[0][0];
                }
                else
                {
                    var tgtWidth = points[1][0] - points[0][0] - deltaX * 2;
                }
                var dX = tgtWidth;
                var topDy = ( yTopEnd - yTopStart ) / dX;
            
                var yBotStart = points[3][1];
                var yBotEnd = points[2][1];
                if ( ( points[2][0] - points[3][0] - deltaX * 2 ) > 0 )
                {
                    tgtWidth = points[2][0] - points[3][0] - deltaX * 2;
                }
                else
                {
                    tgtWidth = points[2][0] - points[3][0];
                }
                tgtWidth = points[2][0] - points[3][0] - deltaX * 2;
                dX = tgtWidth;
                var botDy = ( yBotEnd - yBotStart ) / dX;
            
                imgDx = imgW / dX;
            
                var curYtop, curYbot, curImgX;
                var n = 0;
                
                for ( var curX = points[0][0]; curX < points[1][0]; curX++ )
                {
                    curYtop = yTopStart + ( n * topDy ) + deltaY;
                    curYbot = yBotStart + ( n * botDy ) + deltaYStroke + 1 - ( currentSize == "width" ? 0 : deltaYStroke * 2 );
            
                    curImgX = n * imgDx;
                    
                    var sliceHeight = curYbot - curYtop;
                    if ( tgtWidth > 10 )
                    {
                        ctx.drawImage( this.imeagesTest[( currentHitsScheme.currentPicture[i] - 1 )], curImgX, 0, 1, imgH, ( curX + deltaX ), curYtop, imgDx, sliceHeight );
                    }
            
                    n++;
                }
            }

        }
    }
    
    this.clearTestImeage = function()
    {
        for ( var i = this.imeagesLength; i--; )
        {
              if( i === -1 ) return;
              
              this.imeagesTest.splice( i, 1 );
        }
    }
}