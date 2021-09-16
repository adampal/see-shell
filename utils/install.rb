module Install

  def install_ss
    # Create the script and deleted folders if they don't exist
    script_path = File.join(SS_PATH, SCRIPTS_DIR)
    deleted_path = File.join(SS_PATH, DEL_SCRIPTS_DIR)
    puts FileUtils.mkdir_p(script_path) unless File.exists?(script_path)
    puts FileUtils.mkdir_p(deleted_path) unless File.exists?(deleted_path)


    puts "The symlink was created. Reloading the shell to pick it up"

    puts reload_shell


  end
end