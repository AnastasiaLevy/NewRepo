function scoreManager()
{
    this.scoreArray = [];
    this.totalScoreArray = [];
    this.scoreCurrentTestArray = [];
    this.movesCounter = 0;   
    this.movesCounterTotal = 0; 
    this.incorrectCounter = 0;
    this.incorrectCounterTotal = 0;
    this.sScore = [];
    this.timeAvgRespFirstCard = [];
    this.timeAvgRespSecondCard = [];
    this.timeAvgRespFirstCardTotal = [];
    this.timeAvgRespSecondCardTotal = [];
    this.timeAvgTest = [];
    
    this.setMoves = function()
    {
        this.movesCounter++;
        this.movesCounterTotal++;
    }
    
    this.setIncorrect = function()
    {
        this.incorrectCounter++;
        this.incorrectCounterTotal++;
    }
    
    this.setTimeFirstCard = function( currentTime )
    {
        this.timeAvgRespFirstCard.push( currentTime );
        this.timeAvgRespFirstCardTotal.push( currentTime );
    }
    
    this.setTimeSecondCard = function( currentTime )
    {
        this.timeAvgRespSecondCard.push( currentTime );
        this.timeAvgRespSecondCardTotal.push( currentTime );
    }
    
    this.setScore = function( allItemNotHide, amountHided )
    {
        var testScore = allItemNotHide ? Math.round( ( ( ( amountHided / ( schemeTests[currentTest - 1].length ) ) * 100 ) / 100 ) * Math.round( ( amountHided / this.movesCounter ) * 100 ) ) : Math.round( ( schemeTests[currentTest - 1].length / this.movesCounter ) * 100 );
        this.sScore.push( testScore );
    }
    
    this.setAvgTimeTest = function( currentTime )
    {
        this.timeAvgTest.push( Math.round( currentTime / 1000 ) );
    }
    
    this.setTestScore = function()
    {
        this.scoreCurrentTestArray = [this.movesCounter, this.incorrectCounter, this.sScore[currentTest - 1],
                                      this.getAverageFromArray( this.timeAvgRespFirstCard ) , this.getAverageFromArray( this.timeAvgRespSecondCard ), 
                                      this.timeAvgTest[currentTest - 1]];
        this.scoreArray.push( this.scoreCurrentTestArray );
    }
    
    this.getTestsScore = function()
    {
        return this.scoreArray;
    }
    
    this.getTestsTotalScore = function()
    {
        this.totalScoreArray.push( this.movesCounterTotal );
        this.totalScoreArray.push( this.incorrectCounterTotal );
        this.totalScoreArray.push( this.getAverageFromArray( this.sScore ) );
        this.totalScoreArray.push( this.getAverageFromArray( this.timeAvgRespFirstCardTotal ) );
        this.totalScoreArray.push( this.getAverageFromArray( this.timeAvgRespSecondCardTotal ) );
        this.totalScoreArray.push( this.getAverageFromArray( this.timeAvgTest ) );
        return this.totalScoreArray;
    }
    
    this.clearScoreArray = function()
    {
        this.scoreCurrentTestArray = [];
        this.movesCounter = 0;   
        this.incorrectCounter = 0;
        this.timeAvgRespFirstCard = [];
        this.timeAvgRespSecondCard = [];
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