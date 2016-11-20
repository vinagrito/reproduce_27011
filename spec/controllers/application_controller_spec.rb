require "rails_helper"

RSpec.describe ApplicationController, type: :controller do
  it "doesn't render anything when user is valid"  do
    controller.authenticate_user
    expect(controller.performed?).to eq(false)
  end
end
