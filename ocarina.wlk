import wollok.game.*
import hero.*
import elements.*
import ui.*

object ocarina{
  method iniciar(){
    self.configurar()
    self.music()
  }

  method configurar(){
    game.cellSize(64)
    game.width(12)
    game.height(7)

    // add assets in asset folder, for example, for the background
    game.boardGround("forest.jpg")

    //agregamos visuales
    game.addVisualCharacter(link)
    game.addVisual(new Coin(position=game.at(4,6)))
    game.addVisual(new Coin(position=game.at(10,4)))
    game.addVisual(new Heart(position=game.at(3,2)))

    //agregamos UI y los posicionamos
    game.addVisual(vida)
    game.addVisual(puntos)
    vida.posicionar()
    puntos.posicionar()

    //colisiones
    game.onCollideDo(link, {algo => link.recoger(algo)})

    game.start()
  }

  method music(){
    game.sound("LostWoods.mp3").play()
  }
}