import jugadoresPersonajes.*

object ballesta{
    var flechas = 10

    method estaCargada(){
        return (flechas > 1)
    }

    method potencia(){
        return 4
    }

    method ataque(){
         flechas = (flechas - 1)
    }
}

object jabalina{

    var estaCargada = true

    method estaCargada(){
        return estaCargada
    }
    
    method potencia(){
        return 30
    }

    method ataque(){

        estaCargada = false
    }
}

object castillo{

    var nivelDefensa = 150

    method altura(){
        return 20
    }

    method atacade(arma){
        
        nivelDefensa = nivelDefensa - arma.potencia()
        
    }

    method valorOtorgado(){
        
        return (nivelDefensa / 5)
    }

    method trabajo(){

         // nivelDefensa = nivelDefensa + 20
        nivelDefensa = 20 + nivelDefensa.min(180)
    }
}

object aurora{ // es una vaca
    
    var estaViva = true

    method altura(){
        return 1
    }

    method estaViva(){
        return estaViva
    }
/*  idea original, correcion hecha por pablo

    method auroraAtacada(arma){
        if(arma.potenciaArma() >= 10){
            estaViva = false
        }
    }
*/

// el estado de aurora cambia por el booleano que retorna la condicion de potencia del arma

    method atacade(arma) {
        estaViva = (arma.potencia() < 10)
}

    method valorOtorgado(){
        return 15
    }

    method trabajo(){
        return 
    }
}

object tipa{ // Es un arbol

    var altura = 8

    method atacade(arma){
        return 
    }
    
    method trabajada(){
        altura = altura + 1

    
    }
    
    method valorOtorgado(){
        return altura * 2
    }

}