# Copied verbatim from ActiveSupport gem on 2015-10-31.
# [activesupport/lib/active_support/core_ext/object/blank.rb]

# require 'rbext/ext/object/blank?'
class Object
  # An object is blank if it's false, empty, or a whitespace string.
  # For example, +false+, '', '   ', +nil+, [], and {} are all blank.
  #
  # This simplifies
  #
  #   !address || address.empty?
  #
  # to
  #
  #   address.blank?
  #
  # @return [true, false]
  unless self.respond_to?(:blank?)
    
    def blank?
      respond_to?(:empty?) ? !!empty? : !self
    end
    
  end
  
  # An object is present if it's not blank.
  #
  # @return [true, false]
  unless self.respond_to?(:present?)
  
    def present?
      !blank?
    end
    
  end
  
  # Returns the receiver if it's present otherwise returns +nil+.
  # <tt>object.presence</tt> is equivalent to
  #
  #    object.present? ? object : nil
  #
  # For example, something like
  #
  #   state   = params[:state]   if params[:state].present?
  #   country = params[:country] if params[:country].present?
  #   region  = state || country || 'US'
  #
  # becomes
  #
  #   region = params[:state].presence || params[:country].presence || 'US'
  #
  # @return [Object]
  unless self.respond_to?(:presence)
    
    def presence
      self if present?
    end
    
  end
end

class NilClass
  # +nil+ is blank:
  #
  #   nil.blank? # => true
  #
  # @return [true]
  unless self.respond_to?(:blank?)
    def blank?
      true
    end
  end
end

class FalseClass
  # +false+ is blank:
  #
  #   false.blank? # => true
  #
  # @return [true]
  unless self.respond_to?(:blank?)
    def blank?
      true
    end
  end
end

class TrueClass
  # +true+ is not blank:
  #
  #   true.blank? # => false
  #
  # @return [false]
  unless self.respond_to?(:blank?)
    
    def blank?
      false
    end
    
  end
end

class Array
  # An array is blank if it's empty:
  #
  #   [].blank?      # => true
  #   [1,2,3].blank? # => false
  #
  # @return [true, false]
  alias_method :blank?, :empty?
end

class Hash
  # A hash is blank if it's empty:
  #
  #   {}.blank?                # => true
  #   { key: 'value' }.blank?  # => false
  #
  # @return [true, false]
  alias_method :blank?, :empty?
end

class String
  BLANK_RE = /\A[[:space:]]*\z/

  # A string is blank if it's empty or contains whitespaces only:
  #
  #   ''.blank?       # => true
  #   '   '.blank?    # => true
  #   "\t\n\r".blank? # => true
  #   ' blah '.blank? # => false
  #
  # Unicode whitespace is supported:
  #
  #   "\u00a0".blank? # => true
  #
  # @return [true, false]
  unless self.respond_to?(:blank?)
    
    def blank?
      BLANK_RE === self
    end
    
  end
  
end

class Numeric #:nodoc:
  # No number is blank:
  #
  #   1.blank? # => false
  #   0.blank? # => false
  #
  # @return [false]
  unless self.respond_to?(:blank?)
    
    def blank?
      false
    end
    
  end
end

class Time #:nodoc:
  # No Time is blank:
  #
  #   Time.now.blank? # => false
  #
  # @return [false]
  unless self.respond_to?(:blank?)
    
    def blank?
      false
    end
    
  end
end
