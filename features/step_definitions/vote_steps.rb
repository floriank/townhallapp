Given /^that series has a submission "([^"]*)" with (\d+) votes/ do |submission_name, votes|
  submission = Factory.create(:submission, :name => submission_name, :series => @series)
  votes.to_i.times do
    Factory.create(:vote, :submission => submission)
  end
end
