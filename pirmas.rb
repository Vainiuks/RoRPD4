require 'test/unit' #Test framework'as
# frozen_string_literal: true

# Sioje programoje apskaiciuojamas staciakampio plotas/perimetras ir istrizaine

  # Metodas/Funkcija i kuria paduodame staciakampio ilgi bei auksti su kuriuo galime apskaiciuoti staciakampio plota
  # bei pacioje funkcijoje atspausdinamas atsakymas
  def area_size(height, lenght)
    printf "Staciakampio plotas: #{height * lenght} \n"
    return height*lenght
  end

  # Metodas/Funkcija i kuria paduodame staciakampio ilgi bei auksti su kuriuo galime apskaiciuoti staciakampio perimetra
  # bei pacioje funkcijoje atspausdinamas atsakymas
  def perimeter(height, lenght)
    printf "Staciakampio perimetras: #{2 * (height * lenght)} \n"   
    return 2 * (height*lenght)
  end

  # Metodas i kuri paduodame staciakampio ilgi bei auksti su kuriuo galime apskaiciuoti staciakampio istrizaine
  # bei pacioje funkcijoje atspausdinamas atsakymas
  def diagonal(height, lenght)
    printf "Staciakampio istrizaine: #{Math.sqrt((height * height) + (lenght * lenght))} \n"
    return Math.sqrt((height * height) + (lenght * lenght))
  end

integer_height = 5
integer_lenght = 4
printf "Staciakampio aukstis: #{integer_height} \n"
printf "Staciakmpio ilgis: #{integer_lenght} \n \n"


# Sukuriamas klases Program objektas - class1


# Su sukurtu klases objektu - class1 galime pasiekti toje klaseje esancias funkcijas/metodus ir jas iskviesti paduodami
# i jas parametrus
# Iskviesdami Area_Size metoda paduodama i ji programiskai parasytus kintamuosiuos, staciakampio ilgi bei auksti -
# kaip ir i Perimeter ar Diagonal metodus

# Area_Size metodas apskaiciuoja staciakampio plota bei isveda atsakyma ekrane
area_size(integer_height, integer_lenght)
# Perimeter metodas apskaiciuoja staciakampio perimetra ir atsakyma isveda ekrane
perimeter(integer_height, integer_lenght)
# Diagonal metodas apskaiciuoja staciakampio istrizaine ir atsakyma isveda ekrane
diagonal(integer_height, integer_lenght)


#Testuojami metodai su Test::Unit framework'u
class PirmasTest < Test::Unit::TestCase

  #Testuojamas metodas area_size, expected result - 20
  # actual result = 20, test passed
  def test_area_size
    assert_equal(20, area_size(4,5)) 
  end

  def test_perimeter
    assert_equal(40, perimeter(4,5)) 
  end

   def test_diagonal
    assert_equal(6.4031242374328485, diagonal(4,5)) 
  end
  
end

