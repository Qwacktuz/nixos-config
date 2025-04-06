{ lib, inputs, ... }: 
{
  programs.starship = {
    enable = true;

    enableBashIntegration = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;

    # settings = pkgs.lib.importTOML ../starship.toml;
    settings = {
      line_break.disabled = true;

      right_format = "$cmd_duration";

      format = ''
        $directory$git_branch$git_status$nix_shell
        $character
        '';
      
      # Catppuccin style
      directory = {
        format = "[ ](bold #89b4fa)[ $path ]($style)";
        style = "bold #b4befe";
      };

      #character = {
      #  success_symbol = "[ ](bold #89b4fa)[ ➜](bold green)";
      #  error_symbol = "[ ](bold #89b4fa)[ ➜](bold red)";
      #  # error_symbol = "[ ](bold #89dceb)[ ✗](bold red)";
      #};
      
      #cmd_duration = {
      #  format = "[󰔛 $duration]($style)";
      #  disabled = false;
      #  style = "bg:none fg:#f9e2af";
      #  show_notifications = false;
      #  min_time_to_notify = 60000;
      #};        

      # Gruvbox style
      #directory = {
      #  style = "bold fg:color_fg0 bg:color_yellow";
      #  format = "[ $path ]($style)";
      #  truncation_length = 3;
      #};

      character = {
        success_symbol = "[ ](bold fg:color_green)[ ➜](bold green)";
        error_symbol = "[ ](bold fg:color_red)[ ➜](bold red)";
        # error_symbol = "[ ](bold #89dceb)[ ✗](bold red)";
      };

      cmd_duration = {
        format = "[ 󰔛 $duration ]($style)";
        disabled = false;
        style = "fg:color_fg0";
        show_notifications = false;
        min_time_to_notify = 60000;
      };

      #time = {
      #  disabled = true;
      #  time_format = "%R";
      #  style = "bg:color_bg1";
      #  format = "[[   $time ](fg:color_fg0 bg:color_bg1)]($style)";
      #};

      #os = {
      #  disabled = false;
      #  style = "bg:color_orange bold fg:color_fg0";
      #  symbols = {
      #    NixOS = " ";
      #  };
      #};


      git_branch = {
        symbol = "";
        #style = "none";
        format = "[[ $symbol $branch ](bold fg:color_fg0)]($style)";
      };

      git_status = {
        style = "bold fg:color_fg0";
        format = "[$all_status$ahead_behind]($style)";
      };

      nix_shell = {
        format = "[ via nix $name ]($style)";
        style = "bg:color_blue bold fg:color_fg0";
      };

      palette = "gruvbox_dark";
      palettes.gruvbox_dark = {
        color_fg0 = "#fbf1c7";
        color_bg1 = "#3c3836";
        color_bg3 = "#665c54";
        color_blue = "#458588";
        color_aqua = "#689d6a";
        color_green = "#98971a";
        color_orange = "#d65d0e";
        color_purple = "#b16286";
        color_red = "#cc241d";
        color_yellow = "#d79921";
      };

    };
  };
}
