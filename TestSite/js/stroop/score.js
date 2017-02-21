function scoreManager()
{
    this.scoreArray = [];
    this.totalScoreArray = [];
    this.scoreCurrentTestArray = [];
    this.correctCounter = 0;
    this.incorrectCounter = 0;
    this.correctCounterTotal = 0;
    this.incorrectCounterTotal = 0;
    this.timeAverageResponse = [];
    this.timeAverageResponseTotal = [];
    
    this.setCorrect = function()
    {
        this.correctCounter++;
        this.correctCounterTotal++;
    }
    
    this.setIncorrect = function()
    {
        this.incorrectCounter++;
        this.incorrectCounterTotal++;
    }
    
    this.setAverageResponse = function( currentTime )
    {
        this.timeAverageResponse.push( currentTime );
        this.timeAverageResponseTotal.push( currentTime );
    }
    
    this.setTestScore = function()
    {
        this.scoreCurrentTestArray = [this.correctCounter, this.incorrectCounter, 
                                      this.getAverageFromArray( this.timeAverageResponse )];
        this.scoreArray.push( this.scoreCurrentTestArray );
    }
    
    this.getTestsScore = function()
    {
        return this.scoreArray;
    }
    
    this.getTestsTotalScore = function()
    {
        this.totalScoreArray.push( this.correctCounterTotal );
        this.totalScoreArray.push( this.incorrectCounterTotal );
        this.totalScoreArray.push( this.getAverageFromArray( this.timeAverageResponseTotal ) );
        return this.totalScoreArray;
    }
    
    this.clearScoreArray = function()
    {
        this.scoreCurrentTestArray = [];
        this.correctCounter = 0;
        this.incorrectCounter = 0;
        this.timeAverageResponse = [];
    }
    
    this.getAverageFromArray = function( currentArray )
    {
        var amountArrayValue = 0;
        for ( var i = 0; i < currentArray.length; i++ )
        {
            amountArrayValue += currentArray[i];
        }
        return ( currentArray.length > 0 ) ? Math.round( amountArrayValue / currentArray.length ) : "-";
    }
}