function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

  # User
  set_color $fish_color_user
  echo -n (whoami)
  set_color normal

  set_color -o $fish_color_orange
  echo -n '☀ '
  set_color normal

  # Host
  set_color $fish_color_host
  echo -n (hostname -s)
  set_color normal

  ##echo -n ':'

  # PWD
  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  set_color normal

  __terlar_git_prompt
  __fish_hg_prompt
##  echo

  if not test $last_status -eq 0
    set_color $fish_color_error
  end

  set_color $fish_color_sky
  echo -n ' : ➤ '
  set_color normal
end
