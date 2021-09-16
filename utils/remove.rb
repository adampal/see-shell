module Remove

  def rm script_name
    # move the script to the deleted folder
    from = File.join(SS_PATH, SCRIPTS_DIR, script_name)
    to = File.join(SS_PATH, DEL_SCRIPTS_DIR)
    system('mv', from, to) if File.exists?(from)
    # remove the symlink
    sym_path = File.join(SYM_PATH, script_name)
    system('rm', sym_path) if File.exists?(sym_path)
    # reload the shell
    reload_shell
  end

end