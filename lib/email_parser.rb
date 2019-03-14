class EmailParser
  def initialize(csv)
    @csv = csv
  end
  def parse
    list = @csv.split(" ")
    list.map {|email| email.gsub(",", "")}
    .uniq
  end
end
