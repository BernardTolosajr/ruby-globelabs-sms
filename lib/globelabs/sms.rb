require 'globelabs/sms/version'
require 'globelabs/connection'
require 'multi_json'

module Globelabs
  class SMS
    attr_reader :connection

    def initialize
      @connection = Globelabs::Connection.new
    end

    def send_to(options = {})
      url = "/smsmessaging/v1/outbound/#{options[:sender_address]}/requests?access_token=#{options[:access_token]}"
      @connection.post do |req|
        req.url url
        req.headers['Content-Type'] = 'application/json'
        req.body = MultiJson.dump({
          message: options[:message],
          address: options[:address]
        })
      end
    end
  end
end
