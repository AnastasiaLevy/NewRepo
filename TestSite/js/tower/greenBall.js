
function onclickGreen(objName) {
    if (canMove){
    if ( up1 == null && up2 == null && up3 == null) {
        if (p6 == green) {
            objName.animate(moveFromP6);
            up3 = green;
            p6 = null;
            checkPos(true);

        }
        else if (p5 == green && p4 == null) {
            objName.animate(moveFromP5)
            up = green;
            p5 = null;
            up2 = green;
            checkPos();
        }
        else if (p4 == green) {
            objName.animate(moveFromP4);
            p4 = null;
            up2 = green;
            checkPos(true);
        }
        else if (p3 == green && p2 == null && p1 == null) {
            objName.animate(moveFromP3)
            up1 = green;
            p3 = null;
            checkPos();
        }
        else if (p2 == green && p1 == null) {
            objName.animate(moveFromP2)
            up1 = green;
            p2 = null;
            checkPos();
          
        }
        else if (p1 == green) {
            objName.animate(moveFromP1)
            up1 = green;
            p1 = null;
            checkPos(true);

        }
        else {
            checkPos();
        }

    }
    else if (up1 != null && up1 != green) {
        if (green == p5 && p4 == null) {
            up1.animate(moveU1U2);
            up1.animate(moveToP4.delay(speed));
            p4 = up1;
            up1 = null;
            nm++;
            checkPos();

        }
        else if (green == p2 && p1 == null) {
            up1.animate(moveToP1);
            p1 = up1;
            up1 = null;
            nm++;
            checkPos();
            
        }
        else if (green == p3 && p2 == null && p1 == null) {
            up1.animate(moveToP2);
            p2 = up1;
            up1 = null;
            nm++;
            checkPos();
        }
        else if (p4 != null && p5 !=null)
        {
            up1.animate(moveU1U2);
            up2 = up1;
            up1 = null;
            nmWr++;
            nm++;

        }
        else if(p6!=null)
        {
            up1.animate(moveU1U3);
            up3 = up1;
            up1 = null;
            nmWr++;
            nm++;

        }
        else {
            checkPos();
        }

    }
    else if (up2 != null && up2 !=green) {
        if (green == p2 && p1 == null) {
            up2.animate(moveU2U1);
            up2.animate(moveToP1.delay(speed));
            p1 = up2;
            up2 = null;
            nm++;
            checkPos();
        }
        else if (green == p3 && p1 == null && p2 != null) {
            up2.animate(moveU2U1);
            up2.animate(moveToP1.delay(speed));
            p1 = up2;
            up2 = null;
            nm++;
            checkPos();

        }
        else if (green == p3 && p1 == null && p2 == null) {
            up2.animate(moveU2U1);
            up2.animate(moveToP2.delay(speed));
            p2 = up2;
            up2 = null;
            nm++;
            checkPos();

        }
        else if (green == p5 && p4 == null) {
            up2.animate(moveToP4.delay(speed));
            p4 = up2;
            up2 = null;
            nm++;
            checkPos();
        }
        else if (p6 != null)
        {
            up2.animate(moveU2U3);
            up3 = up2;
            up2 = null;
            nmWr++;
            nm++;

        }
        else {
            checkPos();
        }
    

    } else if (up3 != null && up3 != green) {
        if (green == p2 && p1 == null) {
            up3.animate(moveU3U1);
            up3.animate(moveToP1.delay(speed));
            p1 = up3;
            up3 = null;
            nm++;
            checkPos();
        }
        else if (green == p3 && p1 == null && p2 != null) {
            up3.animate(moveU3U1);
            up3.animate(moveToP1.delay(speed));
            p1 = up3;
            up3 = null;
            nm++;
            checkPos();

        }
        else if (green == p3 && p1 == null && p1 == null) {
            up3.animate(moveU3U1);
            up3.animate(moveToP2.delay(speed));
            p2 = up3;
            up3 = null;
            nm++;
            checkPos();

        }
        else if (green == p5 && p4 == null) {
            up3.animate(moveU3U2);
            up3.animate(moveToP4.delay(speed));
            p4 = up3;
            up3 = null;
            nm++;
            checkPos();
        }
        else if (p4 != null && p5 != null)
        {
            up3.animate(moveU3U2);
            up2 = up3;
            up3 = null;
            nmWr++;
            nm++;

        }
        else {
            checkPos();
      }
    }
  }
}