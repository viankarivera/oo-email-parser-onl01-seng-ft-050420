# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :emails

def initialize(email_address_parser)
  @email_address_parser = email_address_parser
end

def parse
    @email_address_parser.split.collect do |address|
      address.split(",")
    end
    .flatten.uniq
  end
end
