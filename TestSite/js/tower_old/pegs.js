
function onclickPeg(objName) {
    if (canMove) {
        if (objName.id == "peg1" || objName.id == "a1" || objName.id == "b1") {
            if (up1 != null) {
                if (p3 == null && p2 == null && p1 == null) {
                    saveTestStep({ action: 'down', ballColor: up1.id, pegs: 1, position: 3 });
                    up1.animate(moveToP3);
                    p3 = up1;
                    up1 = null;
                    nm++;
                    checkPos();

                }
                else if (p3 != null && p2 == null && p1 == null) {
                    saveTestStep({ action: 'down', ballColor: up1.id, pegs: 1, position: 2 });
                    up1.animate(moveToP2)
                    p2 = up1;
                    up1 = null;
                    nm++;
                    checkPos();
                }
                else if (p3 != null && p2 != null && p1 == null) {
                    saveTestStep({ action: 'down', ballColor: up1.id, pegs: 1, position: 1 });
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
                    saveTestStep({ action: 'down', ballColor: up2.id, pegs: 1, position: 3 });
                    up2.animate(moveU2U1);
                    up2.animate(moveToP3.delay(speed));
                    p3 = up2;
                    up2 = null;
                    nm++;
                    checkPos();

                }
                else if (p3 != null && p2 == null && p1 == null) {
                    saveTestStep({ action: 'down', ballColor: up2.id, pegs: 1, position: 2 });
                    up2.animate(moveU2U1);
                    up2.animate(moveToP2.delay(speed));
                    p2 = up2;
                    up2 = null;
                    nm++;
                    checkPos();
                }
                else if (p3 != null && p2 != null && p1 == null) {
                    saveTestStep({ action: 'down', ballColor: up2.id, pegs: 1, position: 1 });
                    up2.animate(moveU2U1);
                    up2.animate(moveToP1.delay(speed));
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
                    saveTestStep({ action: 'down', ballColor: up3.id, pegs: 1, position: 3 });
                    up3.animate(moveU3U1);
                    up3.animate(moveToP3.delay(speed));
                    p3 = up3;
                    up3 = null;
                    nm++;
                    checkPos();

                }
                else if (p3 != null && p2 == null && p1 == null) {
                    saveTestStep({ action: 'down', ballColor: up3.id, pegs: 1, position: 2 });
                    up3.animate(moveU3U1);
                    up3.animate(moveToP2.delay(speed));
                    p2 = up3;
                    up3 = null;
                    nm++;
                    checkPos();
                }
                else if (p3 != null && p2 != null && p1 == null) {
                    saveTestStep({ action: 'down', ballColor: up3.id, pegs: 1, position: 1 });
                    up3.animate(moveU3U1);
                    up3.animate(moveToP1.delay(speed));
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
                    saveTestStep({ action: 'down', ballColor: up1.id, pegs: 2, position: 4 });
                    up1.animate(moveU1U2);
                    up1.animate(moveToP4.delay(speed))
                    p4 = up1;
                    up1 = null;
                    nm++;
                    checkPos();
                }
                else if (p4 == null && p5 == null) {
                    saveTestStep({ action: 'down', ballColor: up1.id, pegs: 2, position: 5 });
                    up1.animate(moveU1U2);
                    up1.animate(moveToP5.delay(speed));
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
                    saveTestStep({ action: 'down', ballColor: up2.id, pegs: 2, position: 4 });
                    up2.animate(moveToP4.delay(speed))
                    p4 = up2;
                    up2 = null;
                    nm++;
                    checkPos();
                }
                else if (p4 == null && p5 == null) {
                    saveTestStep({ action: 'down', ballColor: up2.id, pegs: 2, position: 5 });
                    up2.animate(moveToP5.delay(speed));
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
                    saveTestStep({ action: 'down', ballColor: up3.id, pegs: 2, position: 4 });
                    up3.animate(moveU3U2);
                    up3.animate(moveToP4.delay(speed))
                    p4 = up3;
                    up3 = null;
                    nm++;
                    checkPos();
                }
                else if (p4 == null && p5 == null) {
                    saveTestStep({ action: 'down', ballColor: up3.id, pegs: 2, position: 5 });
                    up3.animate(moveU3U2);
                    up3.animate(moveToP5.delay(speed));
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
                    saveTestStep({ action: 'down', ballColor: up1.id, pegs: 3, position: 6 });
                    up1.animate(moveU1U3);
                    up1.animate(moveToP6.delay(speed));
                    p6 = up1;
                    up1 = null;
                    nm++;
                    checkPos();
                }
                else if (up2 != null) {
                    saveTestStep({ action: 'down', ballColor: up2.id, pegs: 3, position: 6 });
                    up2.animate(moveU2U3);
                    up2.animate(moveToP6.delay(speed));
                    p6 = up2;
                    up2 = null;
                    nm++;
                    checkPos();
                }
                else if (up3 != null) {
                    saveTestStep({ action: 'down', ballColor: up3.id, pegs: 3, position: 6 });
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

