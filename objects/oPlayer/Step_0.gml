ysp += 0.1
xsp=0

if keyboard_check(vk_left) {
	 xsp=-1
	 image_xscale = -1
}

if keyboard_check(vk_right){
	xsp=+1
	image_xscale = 1
}

if (
    place_meeting(x, y + 1, oSolid) ||
    (modo_ativo == "azul" && place_meeting(x, y + 1, oBlocoAzul)) ||
    (modo_ativo == "vermelho" && place_meeting(x, y + 1, oBlocoVermelho))
) {
	ysp = 0;

	if keyboard_check_pressed(vk_up) {
		ysp = -2.2;

		// Alternar o modo
		if (modo_ativo == "azul") {
			modo_ativo = "vermelho";
		} else {
			modo_ativo = "azul";
		}
	}
}






// Movimento no eixo X
if (
    !place_meeting(x + xsp, y, oSolid) &&
    !(modo_ativo == "azul" && place_meeting(x + xsp, y, oBlocoAzul)) &&
    !(modo_ativo == "vermelho" && place_meeting(x + xsp, y, oBlocoVermelho))
) {
    x += xsp;
}

// Movimento no eixo Y
if (
    !place_meeting(x, y + ysp, oSolid) &&
    !(modo_ativo == "azul" && place_meeting(x, y + ysp, oBlocoAzul)) &&
    !(modo_ativo == "vermelho" && place_meeting(x, y + ysp, oBlocoVermelho))
) {
    y += ysp;
} else {
    // Se está colidindo no Y, para o movimento vertical
    ysp = 0;
}



 

if place_meeting(x,y,oFlag) {
	room_goto_next()
}

if place_meeting(x,y, oSpike){
	room_restart()
}








 






 