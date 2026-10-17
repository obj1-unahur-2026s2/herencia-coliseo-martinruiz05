class ArmasDeFilo {
  const filo
  const longitud
  method valorDeAtaque(){
    return filo * longitud
  }

}

class ArmasContundentes {
  const peso
  method valorDeAtaque(){
    return peso
  }
}

class Cascos {
  method armadura(gladiador){
    return 10
  }
}

class Escudos {
  method armadura(gladiador){
    return 5 + gladiador.destreza() * 0.1
  }
}

class Gladiadores {
  var vida = 100
  method atacar(peleador)
  method defenderse()
  method poderDeAtaque()
  method recibirDaño(daño){
    vida - (daño - self.defensa())
  }
  method defensa(){

  }
  method vida(){
    return vida
  }

}

class Mirmillones inherits Gladiadores {
  var arma
  var armadura
  var escudo
  var fuerza
  method destreza(){
    return 15
  }
  override method atacar(peleador){
    peleador.recibirDaño(self.poderDeAtaque())
    
    
  }
  override method poderDeAtaque(){
    return arma.valorDeAtaque() + fuerza
  }
  override method defensa(){
    return escudo + armadura + self.destreza()
  }
  method pelea(otro){
    self.atacar(otro)
    otro.atacar(self)
  }
  
}

class Dimachaerus inherits Gladiadores {
  const armas = []
  const fuerza = 10
  var destreza
  method destreza(){
    return destreza
  }
  override method poderDeAtaque(){
    return fuerza + armas.sum({a=>a.valorDeAtaque()})
  }

   override method atacar(peleador){
    peleador.recibirDaño(self.poderDeAtaque())
    destreza = destreza +1
    
  }
  override method defensa(){
    return self.destreza() / 2
  }


}

class Grupos {
  const esMirmidonElCreador 
  const luchadores = []
  const nombreDeGrupo
  var peleasEnLasQueParticipo
  method agregarLuchador(luchador){
    luchadores.add(luchador)

  }
  method quitarLuchador(luchador){
    luchadores.remove(luchador)
  }
  method elegirCampeon(){
    return  luchadores.filter({l=>l.vida() > 0}).max({l=>l.puntosDeAtaque()})
  }
  method elegirNombreDelGrupo(){
    if(esMirmidonElCreador){
      nombreDeGrupo = "mirmillolandia"
    }else{
      
    }
    
  }
}