# encoding: utf-8
require 'action_view'

module ActionView::Helpers::TextHelper
  def ty(text, options = {})
    TypographyHelper::Core.new(text.to_s.html_safe, options).typography
  end
  def ty_simple(text, html_options={})
    simple_format ty(text), html_options
  end
end
