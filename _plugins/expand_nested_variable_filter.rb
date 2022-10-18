module Jekyll
  module ExpandNestedVariableFilter
    def flatify(input)
      Liquid::Template.parse(input).render(@context)
    end
  end
end

# This was taken from: http://acegik.net/blog/ruby/jekyll/plugins/howto-nest-liquid-template-variables-inside-yaml-front-matter-block.html
Liquid::Template.register_filter(Jekyll::ExpandNestedVariableFilter)
