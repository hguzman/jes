class HomeController < ApplicationController
  def landing
    render layout: false
  end
  def index
    @mainTitle = "Bienvenidos al administrador de hojas de vida"
    @mainDesc = "Esta aplicación te permite postularte para obtener un empleo en alguna de nustras categorias."
  end

  def minor
  end
end
