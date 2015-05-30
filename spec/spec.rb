require 'spec_helper'
require 'rails_helper'


describe MessagesController, :type => :controller do
  let(:controller) { MessagesController.new }


  context "Has param method", private: true do
    it "should implement message_params" do
      expect(controller).to respond_to(:message_params), "Did you add the private method 'message_params' to the Messages controller?"
    end

    context "message_params()" do
      it "should allow expected parameters" do
        controller.params = { message: { content: "Blah"} }

        expect(controller.message_params).to include(:content), "In the 'message_params' method, make sure to require :message and permit :content"
      end
    end
  end
end
