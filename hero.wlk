import wollok.game.*

object link{
  var property position = game.center()
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