function scoreManager()
{
    this.scoreArray = [];
    this.correctCounter = 0;
    this.incorrectCounter = 0;
    this.missedCounterCorrect = 0;
    this.missedCounterInCorrect = 0;
    this.noresponseCounter = 0;
    this.timeAverageResponse = [];
    this.timeCorrectArray = [];
    this.timeIncorrectArray = [];
    this.timeMissedCorrectArray = [];
    this.timeMissedInCorrectArray = [];
    
    this.setTestStarted = function()
    {
        
    }
    
    this.setCorrect = function()
    {
        this.correctCounter++;
    }
    
    this.setIncorrect = function()
    {
        this.incorrectCounter++;;
    }
    
    this.setMissed = function( missedCorrect )
    {
        if ( missedCorrect )
        {
            this.missedCounterCorrect++;
        }
        else
        {
            this.missedCounterInCorrect++;
        }
    }
    
    this.setNoresponse = function()
    {
        this.noresponseCounter++;
    }
    
    this.setTimeCorrect = function( currentTime )
    {
        this.timeCorrectArray.push( currentTime );
    }
    
    this.setTimeIncorrect = function( currentTime )
    {
        this.timeIncorrectArray.push( currentTime );
    }
    
    this.setTimeMissed = function( currentTime, missedCorrect )
    {
        if ( missedCorrect )
        {
            this.timeMissedCorrectArray.push( currentTime );
        }
        else
        {
            this.timeMissedInCorrectArray.push( currentTime );
        }
    }
    
    this.setAverageResponse = function( currentTime )
    {
        this.timeAverageResponse.push( currentTime );
    }
    
    this.getTestScore = function()
    {
        this.scoreArray = [this.correctCounter, this.incorrectCounter, this.missedCounterCorrect, this.missedCounterInCorrect, this.noresponseCounter, 
                           this.getAverageFromArray( this.timeCorrectArray ) , this.getAverageFromArray( this.timeIncorrectArray ), 
                           this.getAverageFromArray( this.timeMissedCorrectArray ), this.getAverageFromArray( this.timeMissedInCorrectArray ), 
                           this.getAverageFromArray( this.timeAverageResponse )];
        return this.scoreArray;
    }
    
    this.clearScoreArray = function()
    {
        this.scoreArray = [];
        this.correctCounter = 0;
        this.incorrectCounter = 0;
        this.missedCounterCorrect = 0;
        this.missedCounterInCorrect = 0;
        this.noresponseCounter = 0;
        this.timeAverageResponse = [];
        this.timeCorrectArray = [];
        this.timeIncorrectArray = [];
        this.timeMissedCorrectArray = [];
        this.timeMissedInCorrectArray = [];
    }
    
    this.getAverageFromArray = function( currentArray )
    {
        var amountArrayValue = 0;
        for ( var i = 0; i < currentArray.length; i++ )
        {
            amountArrayValue += currentArray[i];
        }
        return ( currentArray.length > 0 ) ? Math.round( amountArrayValue / currentArray.length ) / 1000 + " seconds" : "-";
    }
}