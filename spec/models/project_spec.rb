require 'rails_helper'

describe Project do
  it "considers project without task to be done" do
    project = Project.new
    expect(project.done?).to be_truthy
  end
end