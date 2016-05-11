require 'rake'
require 'erb'

desc "install the dot files into user's home directory"
task :install do
  puts "======================================================"
  puts "Installing symlinks"
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

  make_backup_undo_dir

  install_fonts if RUBY_PLATFORM.downcase.include?("darwin")

  install_neobundle

  install_plugins

  success_msg("installed")
end

desc "Upgrade Vim plugins"
task :upgrade_plugins do
  upgrade_plugins
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

def make_backup_undo_dir
  unless Dir.exist?(File.join(ENV['HOME'], '.vim', 'backup'))
    puts "======================================================"
    puts "Creating backup dir"
    puts "======================================================"
    system %Q{mkdir $HOME/.vim/backup}
    puts
  end

  unless Dir.exist?(File.join(ENV['HOME'], '.vim', 'undo'))
    puts "======================================================"
    puts "Creating undo dir"
    puts "======================================================"
    system %Q{mkdir $HOME/.vim/undo}
    puts
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
  puts "Installing patched fonts for Vim Powerline"
  puts "======================================================"
  system %{ cp -f $HOME/.vimfiles/fonts/* $HOME/Library/Fonts }
  puts
end

def install_neobundle
  unless File.exist?(File.join(ENV['HOME'], '.vim', 'plugins', 'neobundle.vim'))
    puts "======================================================"
    puts "Installing neobundle.vim"
    puts "======================================================"
    system("git clone https://github.com/Shougo/neobundle.vim ~/.vim/plugins/neobundle.vim")
    puts
  end
end

def install_plugins
  puts "======================================================"
  puts "Installing plugins via neobundle.vim"
  puts "======================================================"
  system("vim +NeoBundleInstall +qa")
  puts
end

def upgrade_plugins
  puts "======================================================"
  puts "Upgrading plugins via neobundle.vim"
  puts "======================================================"
  system("vim +NeoBundleUpdate +qa")
  puts
end
