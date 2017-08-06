function onclickBlue(objName) {
    if (canMove) {
        if (up1 == null && up2 == null && up3 == null) {
            if (p6 == blue) {
                saveTestStep({ action: 'up', ballColor: 'blue', pegs: 3, position: 6 });
                objName.animate(moveFromP6);
                up3 = blue;
                p6 = null;
                checkPos(true);
            }

            else if (p5 == blue && p4 == null) {
                saveTestStep({ action: 'up', ballColor: 'blue', pegs: 2, position: 5 });
                objName.animate(moveFromP5)
                up2 = blue;
                p5 = null;
                checkPos(true);
            }
            else if (p4 == blue) {
                saveTestStep({ action: 'up', ballColor: 'blue', pegs: 2, position: 4 });
                objName.animate(moveFromP4)
                up2 = blue;
                p4 = null;
                checkPos(true);
            }
            else if (p3 == blue && p2 == null && p1 == null) {
                saveTestStep({ action: 'up', ballColor: 'blue', pegs: 1, position: 3 });
                objName.animate(moveFromP3)
                up1 = blue;
                p3 = null;
                checkPos();
            }
            else if (p2 == blue && p1 == null) {
                saveTestStep({ action: 'up', ballColor: 'blue', pegs: 1, position: 2 });
                objName.animate(moveFromP2)
                up1 = blue;
                p2 = null;
                checkPos()
            }
            else if (p1 == blue) {
                saveTestStep({ action: 'up', ballColor: 'blue', pegs: 1, position: 1 });
                objName.animate(moveFromP1)
                up1 = blue;
                p1 = null;
                checkPos(true);
            }
            else {
                checkPos();
            }

        }
        else if (up1 != null && up1 != blue) {
            if (p2 == blue && p1 == null) {
                saveTestStep({ action: 'down', ballColor: up1.id, pegs: 1, position: 1 });
                up1.animate(moveToP1)
                p1 = up1;
                up1 = null;
                nm++;
                checkPos();

            }
            else if (p3 == blue && p2 == !null && p1 == null) {
                saveTestStep({ action: 'down', ballColor: up1.id, pegs: 1, position: 1 });
                up1.animate(moveToP1);
                p1 = up1;
                up1 = null;
                nm++;
                checkPos();

            }
            else if (p3 == blue && p2 == null && p1 == null) {
                saveTestStep({ action: 'down', ballColor: up1.id, pegs: 1, position: 2 });
                up1.animate(moveToP2);
                p2 = up1;
                up1 = null;
                nm++;
                checkPos();

            }
            else if (p5 == blue && p4 == null) {
                saveTestStep({ action: 'down', ballColor: up1.id, pegs: 2, position: 4 });
                up1.animate(moveU1U2);
                up1.animate(moveToP4.delay(speed));
                p4 = up1;
                up1 = null;
                nm++;
                checkPos();
            }
            else if (p4 != null && p5 != null) {
                saveTestStep({ action: 'move', ballColor: up1.id, pegs: 2 });
                up1.animate(moveU1U2);
                up2 = up1;
                up1 = null;
                nmWr++;
                nm++;

            }
            else if (p6 != null) {
                saveTestStep({ action: 'move', ballColor: up1.id, pegs: 3 });
                up1.animate(moveU1U3);
                up3 = up1;
                up1 = null;
                nmWr++;
                nm++;

            }

        }
        else if (up2 != null && up2 != blue) {
            if (p2 == blue && p1 == null) {
                saveTestStep({ action: 'down', ballColor: up2.id, pegs: 1, position: 1 });
                up2.animate(moveU2U1);
                up2.animate(moveToP1.delay(speed));
                p1 = up2;
                up2 = null;
                nm++;
                checkPos();


            }
            else if (p3 == blue && p2 == !null && p1 == null) {
                saveTestStep({ action: 'down', ballColor: up2.id, pegs: 1, position: 1 });
                up2.animate(moveU1U2);
                up2.animate(moveToP1.delay(speed));
                p1 = up2;
                up2 = null;
                checkPos();


            }
            else if (p3 == blue && p2 == null && p1 == null) {
                saveTestStep({ action: 'down', ballColor: up2.id, pegs: 1, position: 2 });
                up2.animate(moveU2U1);
                up2.animate(moveToP2.delay(speed));
                p2 = up2;
                up2 = null;
                nm++;
                checkPos();


            }
            else if (p5 == blue && p4 == null) {
                saveTestStep({ action: 'down', ballColor: up2.id, pegs: 2, position: 4 });
                up2.animate(moveToP4);
                p4 = up2
                up2 = null;
                nm++;
                checkPos();
            }
            else if (p6 != null) {
                saveTestStep({ action: 'move', ballColor: up2.id, pegs: 3 });
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
                saveTestStep({ action: 'down', ballColor: up3.id, pegs: 1, position: 1 });
                up3.animate(moveU3U1);
                up3.animate(moveToP1.delay(speed))
                p1 = up3;
                up3 = null;
                nm++;
                checkPos();
            }
            else if (p3 == blue && p2 == !null && p1 == null) {
                saveTestStep({ action: 'down', ballColor: up3.id, pegs: 1, position: 1 });
                up3.animate(moveU3U2);
                up3.animate(moveToP1.delay(speed));
                p1 = up3;
                up3 = null;
                nm++;
                checkPos();
            }
            else if (p3 == blue && p2 == null && p1 == null) {
                saveTestStep({ action: 'down', ballColor: up3.id, pegs: 1, position: 2 });
                up3.animate(moveU2U1);
                up3.animate(moveToP2.delay(speed));
                p2 = up3;
                up3 = null;
                nm++;
                checkPos();
            }
            else if (p5 == blue && p4 == null) {
                saveTestStep({ action: 'down', ballColor: up3.id, pegs: 2, position: 4 });
                up3.animate(moveU3U2)
                up3.animate(moveToP4.delay(speed));
                p4 = up3;
                up3 = null;
                nm++;
                checkPos();
            }
            else if (p4 != null && p5 != null) {
                saveTestStep({ action: 'move', ballColor: up3.id, pegs: 2 });
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