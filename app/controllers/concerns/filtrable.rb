module Scopable
  module Controller
    extend ActiveSupport::Concern

    
    included do
      controller_name.classify.constantize.attribute_names.each do |a|
        has_scope a.to_sym, ->(value) { where(Hash[a, value]) }, only: :show
      end
    end
  end