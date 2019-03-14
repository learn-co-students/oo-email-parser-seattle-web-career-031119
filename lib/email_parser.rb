# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


# #emails = "john@doe.com, person@somewhere.org"
# parser = EmailParser.new(emails)
#
# parser.parse
# # => ["john@doe.com", "person@somewhere.org"]

require 'pry'
class EmailParser

  attr_accessor :emails

  def initialize(csv_file)
    @emails = csv_file
  end

  def parse
    email_array = @emails.split(/[", ", " "]/)
    email_array.delete("")
    email_array.uniq

  end


end
