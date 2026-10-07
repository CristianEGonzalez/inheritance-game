import wollok.game.*
import hero.*

object vida{
  var property position = game.origin()
  var property image = "vacio.png"
  method text() = link.vida().toString()

  method posicionar(){position = game.at(0,game.height()-1)}
}

object puntos{
  var property position = game.origin()
  var property image = "vacio.png"
  method text() = link.puntos().toString()

  method posicionar(){position = game.at(game.width()-1,game.height()-1)}
}