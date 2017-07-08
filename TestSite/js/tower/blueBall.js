function onclickBlue(objName) {
    if (canMove) {

        if (up1 == null && up2 == null && up3 == null) {
            if (p6 == blue) {
                objName.animate(moveFromP6);
                up3 = blue;
                p6 = null;
                checkPos(true);
            }

            else if (p5 == blue && p4 == null) {
                objName.animate(moveFromP5)
                up2 = blue;
                p5 = null;
                checkPos(true);
            }
            else if (p4 == blue) {
                objName.animate(moveFromP4)
                up2 = blue;
                p4 = null;
                checkPos(true);
            }
            else if (p3 == blue && p2 == null && p1 == null) {
                objName.animate(moveFromP3)
                up1 = blue;
                p3 = null;
                checkPos();
            }
            else if (p2 == blue && p1 == null) {
                objName.animate(moveFromP2)
                up1 = blue;
                p2 = null;
                checkPos()
            }
            else if (p1 == blue) {
                objName.animate(moveFromP1)
                up1 = blue;
                p1 = null;
                checkPos(true);
            }
            else
            {
                checkPos();
            }

        }
        else if (up1 != null && up1 != blue) {
            if (p2 == blue && p1 == null) {
                up1.animate(moveToP1)
                p1 = up1;
                up1 = null;
                nm++;
                checkPos();

            }
            else if (p3 == blue && p2 == !null && p1 == null) {
                up1.animate(moveToP1);
                p1 = up1;
                up1 = null;
                nm++;
                checkPos();

            }
            else if (p3 == blue && p2 == null && p1 == null) {
                up1.animate(moveToP2);
                p2 = up1;
                up1 = null;
                nm++;
                checkPos();

            }
            else if (p5 == blue && p4 == null) {

                up1.animate(moveU1U2);
                up1.animate(moveToP4.delay(speed));
                p4 = up1;
                up1 = null;
                nm++;
                checkPos();
            }
            else if (p4 != null && p5 != null)
            {
                up1.animate(moveU1U2);
                up2 = up1;
                up1 = null;
                nmWr++;
                nm++;
          
            }
            else if (p6!= null)
            {
                up1.animate(moveU1U3);
                up3 = up1;
                up1 = null;
                nmWr++;
                nm++;

            }

        }
        else if (up2 != null && up2 != blue) {
            if (p2 == blue && p1 == null) {
                up2.animate(moveU2U1);
                up2.animate(moveToP1.delay(speed));
                p1 = up2;
                up2 = null;
                nm++;
                checkPos();


            }
            else if (p3 == blue && p2 == !null && p1 == null) {
                up2.animate(moveU1U2);
                up2.animate(moveToP1.delay(speed));
                p1 = up2;
                up2 = null;
                checkPos();


            }
            else if (p3 == blue && p2 == null && p1 == null) {
                up2.animate(moveU2U1);
                up2.animate(moveToP2.delay(speed));
                p2 = up2;
                up2 = null;
                nm++;
                checkPos();


            }
            else if (p5 == blue && p4 == null) {
                up2.animate(moveToP4);
                p4 = up2
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
        }
        else {
            checkPos();
        }
        if (up3 != null && up3 != blue) {
            if (p2 == blue && p1 == null) {
                up3.animate(moveU3U1);
                up3.animate(moveToP1.delay(speed))
                p1 = up3;
                up3 = null;
                nm++;
                checkPos();
            }
            else if (p3 == blue && p2 == !null && p1 == null) {
                up3.animate(moveU3U2);
                up3.animate(moveToP1.delay(speed));
                p1 = up3;
                up3 = null;
                nm++;
                checkPos();
            }
            else if (p3 == blue && p2 == null && p1 == null) {
                up3.animate(moveU2U1);
                up3.animate(moveToP2.delay(speed));
                p2 = up3;
                up3 = null;
                nm++;
                checkPos();
            }
            else if (p5 == blue && p4 == null) {
                up3.animate(moveU3U2)
                up3.animate(moveToP4.delay(speed));
                p4 = up3;
                up3 = null;
                nm++;
                checkPos();
            }
            else if (p4 !=null && p5 != null)
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
        else {
            checkPos();
        }
    }
}