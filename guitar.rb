def string(symbol_list)
    string = symbol_list[0] << " ||"
    fret = 1
    while fret < symbol_list.size
        string << "-" << symbol_list[fret] << "-|"
         fret += 1
    end
    while fret < 13
        string << "---|"
        fret += 1
    end
    string << "|"
end

def strings(symbol_lists)
  "e: #{string(symbol_lists[0])}\n" +
  "h: #{string(symbol_lists[1])}\n" +
  "G: #{string(symbol_lists[2])}\n" +
  "D: #{string(symbol_lists[3])}\n" +
  "A: #{string(symbol_lists[4])}\n" +
  "E: #{string(symbol_lists[5])}\n"
end

def chord(chord_name, symbol_lists)
    puts ("")
    puts ("                       #{chord_name}")
    puts ("")
    puts ("        1   2   3   4   5   6   7   8   9   10  11  12")
    puts (strings(symbol_lists))
    puts ("")
    puts ("     1 = Zeigefinger, 2 = Mittelfinger, 3 = Ringfinger,")
    puts ("     4 = Kleiner Finger, T = Daumen,")
    puts ("     o = Saite anschlagen, x = Saite nicht anschlagen")
    puts ("")
end

chord_map = {
  'A-Dur' => [
    ["o"],
    [" ","-","3"],
    [" ","-","2"],
    [" ","-","1"],
    ["o"],
    ["x"]
  ],
  'D-Dur' => [
    [" ","-","2"],
    [" ","-","-","3"],
    [" ","-","1"],
    ["o"],
    ["x"],
    ["x"]
  ],
  'E-Dur' => [
    ["o"],
    ["o"],
    [" ","1"],
    [" ","-","3"],
    [" ","-","2"],
    ["o"]
  ]
}

chord = ARGV[0]
chord(chord, chord_map[chord]) unless chord_map[chord].nil?
