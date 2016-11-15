# encoding: utf-8
require "logstash/outputs/base"
require "logstash/namespace"

# An kafkacsv output that does nothing.
class LogStash::Outputs::Kafkacsv < LogStash::Outputs::Base
  config_name "kafkacsv"
 
  default :codec, "line"

  public
  def register
  end # def register

 def multi_receive_encoded(encoded)
    encoded.each do |event,data|
      $stdout.write(data)
    end
  end

end # class LogStash::Outputs::Kafkacsv
