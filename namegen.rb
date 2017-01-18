def row()
  puts("===================================")
end

def prompt()
  print("> ")
end

def menu()
  system "clear"
  row
  puts("[0] Mees")
  puts("[1] Naine")
  row
  prompt;sugu = $stdin.gets.chomp
  case sugu
  when "0"
    system "clear"
    nimi("m")
  when "1"
    system "clear"
    nimi("n")
  else
    menu
  end
end

def nimi(sugu)
  eesnime_fail = File.open("/home/saladus/Arhiiv/Kood/Ruby/Name Generator/#{sugu}_ees.txt")
  eesnime_fail = File.read("/home/saladus/Arhiiv/Kood/Ruby/Name Generator/#{sugu}_ees.txt")
  eesnime_jada = eesnime_fail.split(" ")
  eesnimede_arv = eesnime_jada.count
  i = Random.rand(0..eesnimede_arv)

  eesnimi = eesnime_jada[i]


  perenime_fail = File.open("/home/saladus/Arhiiv/Kood/Ruby/Name Generator/pere.txt")
  perenime_fail = File.read("/home/saladus/Arhiiv/Kood/Ruby/Name Generator/pere.txt")

  perenime_jada = perenime_fail.split(" ")
  perenimede_arv = perenime_jada.count
  o = rand(0..perenimede_arv)

  perenimi = perenime_jada[o]

  system "clear"
  row
  puts("Teie nimi on #{eesnimi} #{perenimi}")
  row
  puts("[0] Lahku")
  puts "[1] Tagasi"
  row
  prompt;vastus = $stdin.gets.chomp

  case vastus
  when "0"
    system "clear"
    Process.exit(0)
  when "1"
    system "clear"
    menu
  else
    nimi(sugu)
  end
end

menu
