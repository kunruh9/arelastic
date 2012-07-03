module Arelastic
  module Searches
    class Query
      attr_accessor :expr
      def initialize(expr)
        raise "#{expr.inspect} must be an Arelastic::Query" unless expr.is_a?(Arelastic::Query)
        @expr = expr
      end

      def to_elastic
        {"query" => expr}
      end
    end
  end
end