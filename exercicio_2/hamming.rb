# Calcular a distancia de Hamming entre dois segmentos de DNA
#
# Durante a cópia de um ácido nucléico, pode haver uma mutação.
# A quantidade de nucleotídeos diferentes entre dois segmentos
# de DNA representa a distância de Hamming.
#
# Exemplo:
# GAGCCTAC
# GATCCGAC
#   ^  ^   duas mutações, distância de Hamming é 2
#
# A classe Hamming possui uma interface chamada #calcula que
# recebe duas strings, que são os segmentos a serem comparados
# Esse método (interface) deve retornar a distância de Hamming
# entre dois segmentos de DNA.

class Hamming
  def calcula(segmento_1, segmento_2)
    if segmento_1.length != segmento_2.length
      raise ArgumentError
    end
    contador = 0
    for index in 0...segmento_1.length
        letra1 = segmento_1[index]
        letra2 = segmento_2[index]
        if letra1 != letra2
          contador += 1
        end
    end
    return contador
  end
end
