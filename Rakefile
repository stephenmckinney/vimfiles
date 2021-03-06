require 'rake'
require 'erb'

desc "install the dot files into user's home directory"
task :install do
  puts "======================================================"
  puts "Installing symlinks"
  puts "======================================================"

  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README.md LICENSE].include? file

    if File.exist?(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"))
      if File.identical? file, File.join(ENV['HOME'], ".#{file.sub('.erb', '')}")
        puts "identical ~/.#{file.sub('.erb', '')}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file.sub('.erb', '')}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file.sub('.erb', '')}"
        end
      end
    else
      link_file(file)
    end
  end
  puts


  make_dir('undo')
  make_dir('backup')

  puts "======================================================"
  puts "vim-plug will auto-install on launch"
  puts "======================================================"

  success_msg("installed")
end

# ======================================================
# File helpers
# ======================================================
def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file.sub('.erb', '')}"}
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub('.erb', '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end

def make_dir(name)
  unless Dir.exist?(File.join(ENV['HOME'], '.vim', name))
    puts "======================================================"
    puts "Creating #{name} dir"
    puts "======================================================"
    system %Q{mkdir $HOME/.vim/#{name}}
    puts
  end
end

# ======================================================
# Message helpers
# ======================================================
def success_msg(action)
  puts "======================================================"
  puts "Success!"
  puts "======================================================"
  puts
  puts ".vimfiles have been #{action}. Please restart any open Vim sessions."
end
