# frozen_string_literal: true

Reline::Face.config(:completion_dialog) do |conf|
  conf.define(:default, foreground: "#c0caf5", background: "#24283b")
  conf.define(:enhanced, foreground: "#c0caf5", background: "#2e3c64")
  conf.define(:scrollbar, foreground: "#1f2335", background: "#7aa2f7")
end
