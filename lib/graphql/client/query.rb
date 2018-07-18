# frozen_string_literal: true
module GraphQL
  class Client
    class Query
      # Public: AST document of the query that was executed.
      #
      # Returns instance of GraphQL::Language::Nodes::Document.
      attr_reader :document

      # Public: Name of the operation that was executed.
      attr_reader :operation_name

      # Public: Hash with stringed keys of variables used to execute the query.
      attr_reader :variables

      # Public: Context that was used to execute this query.
      attr_reader :context

      # Internal: Initialize base class.
      def initialize(document:, operation_name:, variables:, context:)
        @document = document
        @operation_name = operation_name
        @variables = variables
        @context = context
      end
    end
  end
end
