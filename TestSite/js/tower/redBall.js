var prevPos;
function onclickRed(objName) {
    if (canMove)
    {
        if ( up1 == null && up2 == null && up3 == null) {
            if (p6 == red) {
                objName.animate(moveFromP6);
                up3 = red
                p6 = null;
                checkPos();
            }
            else if (p5 == red && p4 == null) {
                objName.animate(moveFromP5)
                up2 = red;
                p5 = null;
                checkPos();
            }
            else if (p4 == red) {
                objName.animate(moveFromP4)
                up2 = red;
                p4 = null;
                checkPos();
            }
            else if (p3 == red && p2 == null && p1 == null) {
                objName.animate(moveFromP3)
                up1 = red;
                p3 = null;
                checkPos();
            }

            else if (p2 == red && p1 == null) {
                objName.animate(moveFromP2)
                up1 = red;
                p2 = null;
                checkPos(true);
            }
            else if (p1 == red) {
                objName.animate(moveFromP1)
                up1 = red;
                p1 = null;
                checkPos();
            }
            else {
                checkPos();
            }

        }
        else if (up1 != null && up1 !== red) {
            if (p2 == red && p1 == null) {
                up1.animate(moveToP1)
                p1 = up1;
                up1 = null;
                nm++;
                checkPos();
               

            }
            else if (p3 == red && p2 == !null && p1 == null) {
                up1.animate(moveToP1);
                p1 = up1;
                up1 = null;
                nm++;
                checkPos();
              
            }
            else if (p3 == red && p2 == null && p1 == null) {
                up1.animate(moveToP2);
                p2 = up1;
                up1 = null;
                nm++;
                checkPos();

            }
            else if (p5 == red && p4 == null) {
                up1.animate(moveU1U2);
                up1.animate(moveToP4.delay(700));
                p4 = up1;
                up1 = null;
                nm++;
                checkPos();

            }
            else if (p4 !== null && p5 !== null )
            {
                nmWr++;
                nm++;

                up1.animate(moveU1U2);
                up2 = up1;
                up1 = null;
            }
            else if (p6 != null)
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
        else if (up2 != null && up2 !== red) {
            if (p2 == red && p1 == null) {
                up2.animate(moveU2U1);
                up2.animate(moveToP1.delay(700))
                p1 = up2;
                up2 = null;
                nm++;
                checkPos();
            }
            else if (p3 == red && p2 == !null && p1 == null) {
                up2.animate(moveU1U2);
                up2.animate(moveToP1.delay(700));
                p1 = up2;
                up2 = null;
                nm++;
                checkPos();
            }
            else if (p3 == red && p2 == null && p1 == null) {
                up2.animate(moveU2U1);
                up2.animate(moveToP2.delay(700));
                p2 = up2;
                up2 = null;
                nm++;
                checkPos();
              
          

            }
            else if (p5 == red && p4 == null) {
                up2.animate(moveToP4.delay(700));
                p4 = up2;
                up2 = null;
                nm++;
                checkPos();


            }
          
            else if (p6 != null) {
                up2.animate(moveU2U3);
                up3 = up2;
                up2 = null;
            }
            else {
                checkPos();
            }

        }
    if (up3 != null && up3 !==red) {
        if (p2 == red && p1 == null) {
            up3.animate(moveU3U1);
            up3.animate(moveToP1.delay(700))
            p1 = up3;
            up1 = null;
            nm++;
            checkPos();
           
        }
        else if (p3 == red && p2 == !null && p1 == null) {
            up3.animate(moveU3U2);
            up3.animate(moveToP1.delay(700));
            p1 = up3;
            up1 = null;
            up = null;
            nm++;
            checkPos();
          
        }
        else if (p3 == red && p2 == null && p1 == null) {
            up3.animate(moveU3U1);
            up3.animate(moveToP2.delay(700));
            p2 = up3;
            up1 = null;
            up = null;
            nm++;
            checkPos();
           
        }
        else if (p5 == red && p4 == null) {
            up3.animate(moveU3U2)
            up3.animate(moveToP4.delay(700));
            p4 = up3;
            up1 = null;
            nm++;
            checkPos();
        }
        else if (p4 !== null && p5 !== null) {
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
    else {
        checkPos();
    }
  }
}
