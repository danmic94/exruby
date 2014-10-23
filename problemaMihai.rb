
def txt_order
	

	load "wordlist.txt" 
	
	words = File.readlines("/home/dan/Documents/Git/wordlist.txt")
    
    words_array = words.read.split("\n")
	
	words_array = words_array.downcase
	
	if words_array.find(:all) != 0
		
		word_order = words_array.sort{ |a,b| a.word.downcase <=> b.word.downcase}
        
        word_order = words_array.sort{|a,b| a.length <=> b.length}
	
	else
		puts "Error insert a text file that has content!"
	end

	if word_order = words_array.sort{|a,b| a.length == b.length}
	   
	   word_order = words_array.sort{|a,b| a.length.downcase <=> b.length.downcase}
	
	else #sper sa fie in regula :)
        puts "OK!"
	end
        
        puts "This are the words in order " + word_order
end
    
    File.open('/home/dan/Documents/Git/wordorder,txt', 'w') do |f| f.puts "#{word_order}"

                                                        

  




