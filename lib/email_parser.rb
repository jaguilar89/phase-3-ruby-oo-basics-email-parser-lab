# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_reader :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        regex = /[,\s]+/ #split by any character that's a "," or a whitespace, the + indicates that it should look for one *or more* occurrences
        @email_addresses.split(regex).uniq
    end
end