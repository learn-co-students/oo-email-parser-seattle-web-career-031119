# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser

  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    dummy_array = emails.split(/[', ', ' ']/)
    dummy_array.delete("")
    dummy_array.uniq
  end

end
