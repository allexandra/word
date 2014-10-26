word = File.readlines('input.txt').each {|line| line.chomp!}

#sort by length of each element
word = word.sort_by {|x| x.length}

#browse the array from 0..penultimul
for i in 0..word.length-2

  #browse AGAIN starting from the next element until last
  for j in i+1..word.length-1

    #if we found two elements of the same length
    #if the first element is greater than the second
    if word[i].length == word[j].length && word[i] > word[j]

      #switch the elements

      #variable to hold first's element value
      aux = word[i]

      #overwrite the first element with the second
      word[i] = word[j]

      #overwrite the second element with the initial value of the first element
      word[j] = aux
    elsif word[i].length < word[j].length
      #if second element length is greater stop the loop
      break
    end
  end
end

open('output.txt', 'w') do |f|
  f << word
end