require 'spec_helper'

describe Globelabs::SMS do
  let(:subject) { Globelabs::SMS.new }
  let(:message) { 'hello' }
  let(:address) { '091511111111' }
  let(:sender_address) { '0123' }
  let(:access_token) { 'xmel8werwljwer' }
  let(:options) {
    {
      message: message,
      address: address,
      sender_address: sender_address,
      access_token: access_token
    }
  }
  let(:body) {
    {
      message: message,
      address: address
    }
  }

  before do
    stub_post("/smsmessaging/v1/outbound/#{sender_address}/requests?access_token=#{access_token}").
      with(body: body,
      headers: { content_type: 'application/json' }).
      to_return(status: 200, body: "", headers: {})
  end

  describe '#initialize' do
    it 'setup a connection' do
      expect(subject.connection).to be_instance_of Globelabs::Connection
    end
  end

  describe '#send_to' do
    it 'will send sms' do
      subject.send_to options
      path = "/smsmessaging/v1/outbound/#{sender_address}/requests?access_token=#{access_token}"
      expect(a_post(path).with(body: body)).to have_been_made
    end
  end
end
