{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    shellInit = ''
      export SSH_AUTH_SOCK=~/.1password/agent.sock
    '';
  };
}
