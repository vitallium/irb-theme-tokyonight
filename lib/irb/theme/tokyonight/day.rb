# frozen_string_literal: true

Reline::Face.config(:completion_dialog) do |conf|
  conf.define(:default, foreground: "#3760bf", background: "#e1e2e7")
  conf.define(:enhanced, foreground: "#3760bf", background: "#b7c1e3")
  conf.define(:scrollbar, foreground: "#e9e9ec", background: "#2e7de9")
end
