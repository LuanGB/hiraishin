class Hiraishin
  
  attr_reader :current_shortcuts

  def self.add_shortcut_to_cinnamon(name, command, *keys)
    `gsettings set org.cinnamon.desktop.keybindings custom-list "[#{current_shortcuts.join(', ')}, 'custom#{last_shortcode_number}']"`
    `gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom#{last_shortcode_number}/ name "#{name}"`
    `gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom#{last_shortcode_number}/ command "#{command}"`
    `gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom#{last_shortcode_number}/ binding "['<Primary>#{format_keys(keys)}']"`
    
    p "Shortcut #{format_keys(keys)} ('#{name}') created for #{command}"

    true
  end

  private

  class << self
    def format_keys(keys)
      [keys[0..-2].map{ |key| "<#{key}>" }.join, keys[-1].downcase].join
    end

    def current_shortcuts
      @current_shortcuts ||= `gsettings get org.cinnamon.desktop.keybindings custom-list`.chomp[1..-2]&.split(', ')
    end

    def last_shortcode_number
      last_keybinding = current_shortcuts.sort.last
      (last_keybinding[-2].to_i + 1).to_s
    end
  end
end
