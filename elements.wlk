import wollok.game.*
import hero.*
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
    game.sound("coin.mp3").play()
  }
}

class Heart inherits Collectable{
  override method image() = "heart.png"

  method coleccionar(){
    link.curar()
    game.sound("heal.mp3").play()
  }
}