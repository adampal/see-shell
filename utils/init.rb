



module Init
  def init
    puts "############"
    puts "Initializing See Shell"
  end
end

# require 'io/console'

# puts "Welcome to See Shell!"
# puts ""
# puts "This action will pull down the latest version of see-shell and initialize all your custom scripts."
# puts "Do you want to continue? (yY)"
# response = STDIN.getch.chomp

# if response.downcase != "y"
#   puts "Script cancelled"
#   exit
# end

# # Should be a separate action???
# puts "Pulling the latest versions of scripts from GitHub..."
# `git pull origin main`

# # Run the delete action to remove all shell scripts

# Dir.children("scripts").each do |filename|
#   puts "Creating symlink for #{filename}"
#   from = File.join(Dir.pwd, "scripts", filename)
#   to = "/usr/local/bin/#{filename}"
#   puts "Running command 'ln -sf #{from} #{to}'"
#   `ln -sf #{from} #{to}`
# end

# # Run the initialize action to add all shell scripts

# puts "You now need to run `source $HOME/.oh-my-zsh/oh-my-zsh.sh` to pick up all the changes"


