
# Задан одномерный массив А(12), содержащий целочисленные элементы.
# Найти количество групп повторных вхождений элементов в данном массиве.
# Например, в массиве А = [1, 2, 2, 3] – 1 группа (2, 2).


def findCountOfIdentGroups
  $A  = [1,1,1,2,4,2,2,5,2,3,3]
  $i = 0
  $j = 0
  $mass =[]

  $count = 0
  $result = 0
  $size = $A.length
  while $i < $A.length
    $j = 0
    while $j < $A.length
      if $A[$i] == $A[$j] && $i != $j && $A[$i]>0
        $count+=1
        $A[$j] = -1
      end
      $j+=1
    end
    if $count > 0
      $result+=1
      $count = 0

    end
    $i+=1
  end

  puts $result
end

findCountOfIdentGroups