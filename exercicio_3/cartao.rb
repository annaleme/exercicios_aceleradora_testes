class Cartao
  attr_reader :bandeira

  def initialize bandeira, numero
    @bandeira = bandeira
    @numero = numero
  end

  def numero_mascarado
    mascarado = @numero[0..3]
    (@numero.length - 4).times do |x|
      mascarado += "*"
    end
    return mascarado
  end
end
