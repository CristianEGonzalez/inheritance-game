class Collectable{
  var property position

  method image() //metodo abstracto

  method desaparecer(){
    game.removeVisual(self)
  }
}

class Coin inherits Collectable{

  override method image() = "coin.png"

  method coleccionar(){
    link.recogerMoneda()
  }
}

class Heart inherits Collectable{
  override method image() = "heart.png"

  method coleccionar(){
    link.curar()
  }
}

object link{
  var property position = game.at(11,0)
  var property image = "link.png"
  var property puntos = 0
  var property vida = 100

  method recoger(algo){
    algo.coleccionar()
    algo.desaparecer()
  }

  method recogerMoneda(){
    puntos += 10
  }

  method curar(){
    vida += 25
  }
}

object vida{
  var property position = game.at(0,6)
  var property image = "vacio.png"
  method text() = link.vida().toString()
}

object puntos{
  var property position = game.at(11,6)
  var property image = "vacio.png"
  method text() = link.puntos().toString()
}