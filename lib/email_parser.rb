# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :parse

  def initialize(emails)
    emails_array = emails.split(/\s|'|,/)
    duplicate_emails = emails_array.delete_if {|email| email == ''}
    @parse = duplicate_emails.uniq
  end
end
