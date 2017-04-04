class Validador
  def initialize  numero
    @numero = numero
  end
  def self.valida numero
    return Validador.new numero
  end

  def bandeira
    cont = 0
    number = @numero.to_s.reverse
    for index in 0..number.length
      if index % 2 == 0
        cont += number[index].to_i
      else
        dobro = (number[index].to_i*2)
        if(dobro > 9)
          cont += 1
          cont += dobro % 10
        else
           cont += dobro
        end
      end
    end

    if cont % 10 != 0
      return "INVALIDO"
    end

    if (@numero[0..1] == '34' || @numero[0..1] == '37') && @numero.length == 15
      return "AMEX"
    elsif @numero[0..3] == '6011' && @numero.length == 16
      return "Discover"
    elsif (@numero[0..1].to_i >= 51 && @numero[0..1].to_i <= 55) && @numero.length == 16
      return "MASTER"
    elsif (@numero[0] == '4') && (@numero.length == 13 || @numero.length == 16)
      return "VISA"
    else
      return "INVALIDO"
    end
  end
end
