require_relative "dpiccolo_palindrome/version"

module DpiccoloPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include DpiccoloPalindrome
end

class Integer
  include DpiccoloPalindrome
end