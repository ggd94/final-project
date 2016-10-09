class User
  attr_accessor :name, :email #nuove variabili alle quali sono associati metodi setter e getter

  def initialize(attributes = {})  #primo metodo che viene attivato
    @name  = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end