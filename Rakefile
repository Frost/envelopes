task :default => [:envelopes_pdf]

desc "Clean up working directory by removing temporary files and such"
task :clean do
  puts "Cleaning up"
  %x|rm -f *.{aux,log,synctex.gz}|
  %x|rm -f envelopes.{tex,pdf}|
end

desc "Generate a pdf in C5 format with addresses from addresses.csv"
task :envelopes_pdf do
  puts "ruby ./generate_envelopes_pdf.rb"
  %x|ruby ./generate_envelopes_pdf.rb|
  puts "xelatex envelopes"
  %x|xelatex envelopes|
end
