data = File.open('procesos.data').readlines.map(&:chomp)
data.map! {|x| x.to_i}

filter_number = ARGV[0].to_i 
output = data.select {|x| x > filter_number}


File.write('procesos_filtrados.data',output.join("\n"))