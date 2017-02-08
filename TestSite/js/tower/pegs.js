
function onclickPeg(objName) {
    if (canMove) {
        if (objName.id == "peg1" || objName.id == "a1" || objName.id == "b1") {
           
            if (up1 != null) {
                if (p3 == null && p2 == null && p1 == null) {
                    up1.animate(moveToP3);
                    p3 = up1;
                    up1 = null;
                    nm++;
                    checkPos();

                }
                else if (p3 != null && p2 == null && p1 == null) {
                    up1.animate(moveToP2)
                    p2 = up1;
                    up1 = null;
                    nm++;
                    checkPos();
                }
                else if (p3 != null && p2 != null && p1 == null) {
                    up1.animate(moveToP1);
                    p1 = up1;
                    up1 = null;
                    nm++;
                    checkPos();
                }
                else {
                    checkPos();
                }
            }
            else if (up2 != null) {
                if (p3 == null && p2 == null && p1 == null) {
                    up2.animate(moveU2U1);
                    up2.animate(moveToP3.delay(700));
                    p3 = up2;
                    up2 = null;
                    nm++;
                    checkPos();

                }
                else if (p3 != null && p2 == null && p1 == null) {
                    up2.animate(moveU2U1);
                    up2.animate(moveToP2.delay(700));
                    p2 = up2;
                    up2 = null;
                    nm++;
                    checkPos();
                }
                else if (p3 != null && p2 != null && p1 == null) {
                    up2.animate(moveU2U1);
                    up2.animate(moveToP1.delay(700));
                    p1 = up2;
                    up2 = null;
                    nm++;
                    checkPos();
                }
                else {
                    checkPos();
                }

            }
            else if (up3 != null) {

                if (p3 == null && p2 == null && p1 == null) {
                    up3.animate(moveU3U1);
                    up3.animate(moveToP3.delay(700));
                    p3 = up3;
                    up3 = null;
                    nm++;
                    checkPos();

                }
                else if (p3 != null && p2 == null && p1 == null) {
                    up3.animate(moveU3U1);
                    up3.animate(moveToP2.delay(700));
                    p2 = up3;
                    up3 = null;
                    nm++;
                    checkPos();
                }
                else if (p3 != null && p2 != null && p1 == null) {
                    up3.animate(moveU3U1);
                    up3.animate(moveToP1.delay(700));
                    p1 = up3;
                    up3 = null;
                    nm++;
                    checkPos();
                }
                else {
                    checkPos();
                }

            }

        }

        else if (objName.id == "peg2" || objName.id == "a2" || objName.id == "b2") {

            if (up1 !== null) {
                if (p4 == null && p5 !== null) {
                    up1.animate(moveU1U2);
                    up1.animate(moveToP4.delay(700))
                    p4 = up1;
                    up1 = null;
                    nm++;
                    checkPos();
                }
                else if (p4 == null && p5 == null) {
                    up1.animate(moveU1U2);
                    up1.animate(moveToP5.delay(700));
                    p5 = up1;
                    up1 = null;
                    nm++;
                    checkPos();
                }
                else {
                    checkPos();
                }

            }
            if (up2 != null) {
                if (p4 == null && p5 !== null) {

                    up2.animate(moveToP4.delay(700))
                    p4 = up2;
                    up2 = null;
                    nm++;
                    checkPos();
                }
                else if (p4 == null && p5 == null) {

                    up2.animate(moveToP5.delay(700));
                    p5 = up2;
                    up2 = null;
                    nm++;
                    checkPos();
                }
                else {
                    checkPos();
                }

            }
            if (up3 != null) {
                if (p4 == null && p5 !== null) {
                    up3.animate(moveU3U2);
                    up3.animate(moveToP4.delay(700))
                    p4 = up3;
                    up3 = null;
                    nm++;
                    checkPos();
                }
                else if (p4 == null && p5 == null) {
                    up3.animate(moveU3U2);
                    up3.animate(moveToP5.delay(700));
                    p5 = up3;
                    up3 = null;
                    nm++;
                    checkPos();
                }
                else {
                    checkPos();
                }

            }

        }
        else if (objName.id == "peg3" || objName.id == "a3" || objName.id == "b3") {
            if (p6 == null) {
                if (up1 != null) {
                    up1.animate(moveU1U3);
                    up1.animate(moveToP6.delay(700));
                    p6 = up1;
                    up1 = null;
                    nm++;
                    checkPos();
                }
                else if (up2 != null) {
                    up2.animate(moveU2U3);
                    up2.animate(moveToP6.delay(700));
                    p6 = up2;
                    up2 = null;
                    nm++;
                    checkPos();
                }
                else if (up3 != null) {
                    up3.animate(moveToP6);
                    p6 = up3;
                    up3 = null;
                    nm++;
                    checkPos();
                }
                else {
                    checkPos();
                }
            }
        }
        else {
            checkPos();
        }
    }

}

