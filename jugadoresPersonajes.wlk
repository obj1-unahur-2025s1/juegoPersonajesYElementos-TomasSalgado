import objetos.*

object luisa {
    var personajeActivo = floki

    method aparece(elemento){
        personajeActivo.encontrar(elemento)
    }

    method cambiarPersonaje(unPersonaje){
        personajeActivo = unPersonaje
    }
}


object floki {
    var arma = jabalina
    
    method encontrar(elemento) {
        if(arma.estaCargada()){
        elemento.atacade(arma)
        arma.ataque()
    }

    }



    method cambiarArma(unArma){
        arma = unArma
    }
}


object mario { 
    var valorRecolectado = 0
    var ultimoElementoVisto = 0
    
    method encontrar(elemento) {
        valorRecolectado = valorRecolectado + elemento.valorOtorgado()
        elemento.trabajo()
        ultimoElementoVisto = elemento
    }

    method esFeliz(){
        return (valorRecolectado > 49) || (ultimoElementoVisto.altura() > 9)
    }
}

