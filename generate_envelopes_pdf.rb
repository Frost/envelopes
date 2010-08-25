#!/usr/bin/env ruby

require 'rubygems'
require 'fastercsv'
require 'envelope_address.rb'

addresses_texts = []

File.open("envelopes.tex", "w") do |file|
  file.write(File.read("envelope_header.tex"))
  
  file.write("\\begin{document}\n")
  
  FasterCSV.foreach("addresses.csv") do |address|
    file.write("~\n\\vspace{7 cm}\\Large\n\\setlength\\parindent{12 cm}\n\n")
    file.write(address.join("\n\n"))
    file.write("\\newpage\n")
  end
  
  file.write("\\end{document}\n")
end
