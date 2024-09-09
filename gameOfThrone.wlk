object daenerys{
    // #{ } los conjuntos no tienen orden en los elementos y no puede haber elementos repetidos.
    // [ ] las listas, en donde los elementos tienen un orden y puede haber elementos repetidos.
    const property artefactos = #{}
    var property capacidad = 2 
    var property historia = [] 
    
    method agregarAHistoria(item) {
        historia.add(item)
    }

    method encontrar(item) {
        const mensaje = "No hay suficiente espacio"
        self.agregarAHistoria(item)
        if(self.artefactos().size() < self.capacidad()) {
            self.artefactos().add(item)
        } else mensaje
    }  

    method volverACasa() {
        castillo.llegar(self)
    }

    method posesiones() {
        return self.artefactos().size() + castillo.artefactos().size()
    }

    method posee(item) = self.artefactos().contains(item) || castillo.artefactos().contains(item)

}

object castillo {
    const property artefactos = #{}

    method agregarArtefactos(items) {
        self.artefactos().addAll(items)
    }

    method llegar(personaje) {
        self.agregarArtefactos(personaje.artefactos())
        personaje.artefactos().clear()
    }

}

// Recordar que las listas solo guardan objetos
object espada {}
object libro {}
object collar {}
object armadura {}
 

 