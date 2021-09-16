module Make

  require 'fileutils'
  require 'io/console'

  def make script_name
    puts "Making a shell script named #{script_name}"
    puts "putting it in #{SS_PATH}"
    path = File.join(SS_PATH, SCRIPTS_DIR)
    FileUtils.mkdir_p(path) unless File.exists?(path)
    file_path = File.join(path, script_name)
    if File.exists?(file_path)
      puts "The custom script #{script_name} already exists"
      puts "Do you want to [O]verwrite the script, [C]ancel, [E]dit the existing script?"
      response = STDIN.getch.chomp
      case response&.downcase
      when 'c'
        exit
      when 'e'
        system('vim', file_path)
        exit
      end
    end
    File.open(file_path, "w+") { |f| f.write("#! /usr/bin/env ruby\n\n") }
    system('chmod', '+x', file_path)
    puts "Your file has been created."
    puts "Creating a symlink so you can call it directly..."
    to = File.join("#{SYM_PATH}", script_name)
    puts system("ln -sf #{file_path}, #{to}")
    puts "We will now open an editor to create your script..."
    puts "Press any key to continue..."
    STDIN.getch.chomp
    reload_shell
    system('vim', file_path)
  end

end