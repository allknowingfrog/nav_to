module NavTo
  module Helper
    def nav_to(nav, tab, path, options={})
      options[:class] = '' unless options.key?(:class)
      options[:class] << ' nav-item nav-link'
      active_tabs = instance_variable_get("@#{NavTo.hash_name}") || {}
      options[:class] << ' active' if active_tabs[nav] == tab
      options[:class].strip!
      label = options.key?(:label) ? options[:label] : tab.to_s.titleize
      link_to label, path, options
    end
  end
end
