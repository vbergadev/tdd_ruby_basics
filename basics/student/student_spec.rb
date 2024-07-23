require_relative 'student'
RSpec.describe Student do
  describe "instance methods" do
    subject { Student.new("Victor", "Bergamini") }
    # it "should respond to #first_name" do
    #   expect(student).to respond_to(:first_name)
    # end
    it {respond_to(:first_name)}

    # it "should respond to #last_name" do
    #   expect(student).to respond_to(:last_name)
    # end
    it {respond_to(:last_name)}

    # it "should respond to #full_name" do
    #   expect(student).to respond_to(:full_name)
    # end
    it {respond_to(:full_name)}
  end
  describe "total number of students create" do
    it "should have 0 students" do
      expect(Student.total_count).to eq(0)
    end
    it "should have 2 students" do
      Student.new("Victor", "Bergamini")
      Student.new("John", "Doe")
      expect(Student.total_count).to eq(2)
    end
  end

end