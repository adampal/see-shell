module Reload

  def reload_shell
    system('/bin/zsh -c source', '~/.oh-my-zsh/oh-my-zsh.sh')
  end

end