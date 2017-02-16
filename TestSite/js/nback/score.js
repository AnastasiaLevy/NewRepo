function scoreManager()
{
    this.scoreArray = [];
    this.totalScoreArray = [];
    this.scoreCurrentTestArray = [];
    this.hitsCounter = 0;
    this.missCounter = 0;
    this.corrRejCounter = 0;
    this.falseAlarmCounter = 0;
    this.omitYesCounter = 0;
    this.omitNoCounter = 0;
    this.hitsCounterTotal = 0;
    this.missCounterTotal = 0;
    this.corrRejCounterTotal = 0;
    this.falseAlarmCounterTotal = 0;
    this.omitYesCounterTotal = 0;
    this.omitNoCounterTotal = 0;
    this.correctCounter = 0;
    this.incorrectCounter = 0;
    this.missedCounterCorrect = 0;
    this.missedCounterInCorrect = 0;
    this.noresponseCounter = 0;
    this.correctCounterTotal = 0;
    this.incorrectCounterTotal = 0;
    this.missedCounterCorrectTotal = 0;
    this.missedCounterInCorrectTotal = 0;
    this.noresponseCounterTotal = 0;
    this.timeAverageResponse = [];
    this.timeCorrectArray = [];
    this.timeIncorrectArray = [];
    this.timeMissedCorrectArray = [];
    this.timeMissedInCorrectArray = [];
    this.timeAverageResponseTotal = [];
    this.timeCorrectArrayTotal = [];
    this.timeIncorrectArrayTotal = [];
    this.timeMissedCorrectArrayTotal = [];
    this.timeMissedInCorrectArrayTotal = [];
    this.persentScore = "";
    this.persentScoreTotal = "";
    
    this.setHits = function()
    {
        this.hitsCounter++;
        this.hitsCounterTotal++;
    }
    
    this.setMiss = function()
    {
        this.missCounter++;
        this.missCounterTotal++;
    }
    
    this.setCorrectReject = function()
    {
        this.corrRejCounter++;
        this.corrRejCounterTotal++;
    }
    
    this.setFalseAlarm = function()
    {
        this.falseAlarmCounter++;
        this.falseAlarmCounterTotal++;
    }
    
    this.setOmitTarget = function()
    {
        this.omitYesCounter++;
        this.omitYesCounterTotal++;
    }
    
    this.setOmitNoTarget = function()
    {
        this.omitNoCounter++;
        this.omitNoCounterTotal++;
    }
    
    this.setPersentScore = function( totalLettersInCurrentList )
    {
        this.persentScore = ( ( this.hitsCounter + this.corrRejCounter ) / totalLettersInCurrentList ) * 100 + "%";
    }
    
    this.setPersentScoreTotal = function( totalLettersInList )
    {
        this.persentScoreTotal = ( ( this.hitsCounterTotal + this.corrRejCounterTotal ) / totalLettersInList ) * 100 + "%";
    }
    
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
    
    this.setMissed = function( missedCorrect )
    {
        if ( missedCorrect )
        {
            this.missedCounterCorrect++;
            this.missedCounterCorrectTotal++;
        }
        else
        {
            this.missedCounterInCorrect++;
            this.missedCounterInCorrectTotal++;
        }
    }
    
    this.setNoresponse = function()
    {
        this.noresponseCounter++;
        this.noresponseCounterTotal++;
    }
    
    this.setTimeCorrect = function( currentTime )
    {
        this.timeCorrectArray.push( currentTime );
        this.timeCorrectArrayTotal.push( currentTime );
    }
    
    this.setTimeIncorrect = function( currentTime )
    {
        this.timeIncorrectArray.push( currentTime );
        this.timeIncorrectArrayTotal.push( currentTime );
    }
    
    this.setTimeMissed = function( currentTime, missedCorrect )
    {
        if ( missedCorrect )
        {
            this.timeMissedCorrectArray.push( currentTime );
            this.timeMissedCorrectArrayTotal.push( currentTime );
        }
        else
        {
            this.timeMissedInCorrectArray.push( currentTime );
            this.timeMissedInCorrectArrayTotal.push( currentTime );
        }
    }
    
    this.setAverageResponse = function( currentTime )
    {
        this.timeAverageResponse.push( currentTime );
        this.timeAverageResponseTotal.push( currentTime );
    }
    
    this.setTestScore = function()
    {
        this.scoreCurrentTestArray = [this.correctCounter, this.incorrectCounter, this.missedCounterCorrect, this.missedCounterInCorrect, this.noresponseCounter,
                                      this.getAverageFromArray( this.timeCorrectArray ) , this.getAverageFromArray( this.timeIncorrectArray ),
                                      this.getAverageFromArray( this.timeMissedCorrectArray ), this.getAverageFromArray( this.timeMissedInCorrectArray ),
                                      this.getAverageFromArray( this.timeAverageResponse ), this.hitsCounter, this.missCounter, this.corrRejCounter,
                                      this.falseAlarmCounter, this.omitYesCounter, this.omitNoCounter, this.persentScore];
        this.scoreArray.push( this.scoreCurrentTestArray );
    }
    
    this.getTestsScore = function()
    {
        return this.scoreArray;
    }
    
    this.setTestsTotalScore = function()
    {
        this.totalScoreArray.push( this.correctCounterTotal );
        this.totalScoreArray.push( this.incorrectCounterTotal );
        this.totalScoreArray.push( this.missedCounterCorrectTotal );
        this.totalScoreArray.push( this.missedCounterInCorrectTotal );
        this.totalScoreArray.push( this.noresponseCounterTotal );
        this.totalScoreArray.push( this.getAverageFromArray( this.timeCorrectArrayTotal ) );
        this.totalScoreArray.push( this.getAverageFromArray( this.timeIncorrectArrayTotal ) );
        this.totalScoreArray.push( this.getAverageFromArray( this.timeMissedCorrectArrayTotal ) );
        this.totalScoreArray.push( this.getAverageFromArray( this.timeMissedInCorrectArrayTotal ) );
        this.totalScoreArray.push( this.getAverageFromArray( this.timeAverageResponseTotal ) );
        this.totalScoreArray.push( this.hitsCounterTotal );
        this.totalScoreArray.push( this.missCounterTotal );
        this.totalScoreArray.push( this.corrRejCounterTotal );
        this.totalScoreArray.push( this.falseAlarmCounterTotal );
        this.totalScoreArray.push( this.omitYesCounterTotal );
        this.totalScoreArray.push( this.omitNoCounterTotal );
        this.totalScoreArray.push( this.persentScoreTotal );
    }
    
    this.getTestsTotalScore = function()
    {
        return this.totalScoreArray;
    }
    
    this.clearScoreArray = function()
    {
        this.scoreCurrentTestArray = [];
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
        this.hitsCounter = 0;
        this.missCounter = 0;
        this.corrRejCounter = 0;
        this.falseAlarmCounter = 0;
        this.omitYesCounter = 0;
        this.omitNoCounter = 0;
        this.persentScore = "";
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