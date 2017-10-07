# Frozen-string-literal: true
# Copyright: 2012 - 2017 - MIT License
# Encoding: utf-8

module Jekyll
  module Assets
    module Plugins
      class CSSDefaults < Liquid::Default
        tags :css
        defaults({
          type: "text/css"
        })

        # --
        # set_integrity sets integrity, and origin.
        # @note override with {% css crossorigin="" %}
        # @return [nil]
        # --
        def set_integrity
          @args[:integrity] = @asset.integrity
          @args[:crossorigin] = "anonymous" \
            unless @args[:crossorigin]
        end
      end
    end
  end
end