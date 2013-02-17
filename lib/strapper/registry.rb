module Strapper
  class Registry

    @@registered_keywords = {}

    def self.add(keyword_mapping)
      @@registered_keywords.merge!(keyword_mapping)
    end

    def self.keyword?(keyword)
      !!@@registered_keywords[keyword]
    end

    def self.class_for_keyword(keyword)
      @@registered_keywords[keyword]
    end

  end
end