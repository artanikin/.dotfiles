function fish_user_key_bindings
  fish_vi_key_bindings

  # bind -M insert -m default jk backward-char force-repaint

  bind -M insert \cp history-search-backward
  bind -M insert \cn history-search-forward

  for mode in insert default visual
      bind -M $mode \cf forward-char
  end
end

fzf_key_bindings
