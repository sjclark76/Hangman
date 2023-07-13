class Options

  def initialize
    @options = %w[--help --exit --reset]
  end

  def printHelp
    self.options.each { |option| puts option }
  end


  private
  attr_reader :options
end
