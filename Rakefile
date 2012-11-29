require 'rake'
require 'erb'

desc "install the dot files into user's home directory"
task :install do
  puts "======================================================"
  puts "Installing symlinks."
  puts "======================================================"

  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README.md LICENSE fonts].include? file

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

  install_fonts if RUBY_PLATFORM.downcase.include?("darwin")

  install_neobundle

  install_command_t

  success_msg("installed")
end

desc "(Re)compiles Command-T using system Ruby"
task :compile_command_t do
  compile_command_t
end

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

def success_msg(action)
  puts "======================================================"
  puts "Success!"
  puts "======================================================"
  puts
  puts ".vimfiles have been #{action}. Please restart any open Vim sessions."
end

def install_fonts
  puts "======================================================"
  puts "Installing patched fonts for Vim Powerline."
  puts "======================================================"
  system %{ cp -f $HOME/.vimfiles/fonts/* $HOME/Library/Fonts }
  puts
end

def install_neobundle
  unless File.exist?(File.join(ENV['HOME'], '.vim', 'bundle', 'neobundle.vim'))
    puts "======================================================"
    puts "Installing neobundle.vim"
    puts "======================================================"
    system("git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
    puts
  end
end

def install_command_t
  unless File.exist?(File.join(ENV['HOME'], '.vim', 'bundle', 'Command-T'))
    puts "======================================================"
    puts "Installing Command-T"
    puts "======================================================"
    system("git clone https://github.com/wincent/Command-T ~/.vim/bundle/Command-T")
    puts
    compile_command_t
  end
end

def compile_command_t
  puts "======================================================"
  puts "Compiling Command-T"
  puts "======================================================"
  FileUtils.cd(File.join(ENV['HOME'], '.vim', 'bundle', 'Command-T'))
  system("bash -l -c 'source $HOME/.rvm/scripts/rvm; rvm use system; make clean; rake make' ")
  puts
end
