# frozen_string_literal: true

Reline::Face.config(:completion_dialog) do |conf|
  conf.define(:default, foreground: "#c8d3f5", background: "#222436")
  conf.define(:enhanced, foreground: "#c8d3f5", background: "#2d3f76")
  conf.define(:scrollbar, foreground: "#1e2030", background: "#82aaff")
end
