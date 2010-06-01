ab_test "Tagline" do
  description "Testing to see if a different tag line increases number of signups."
  
  alternatives "Buy Now!", "Signup for Free!", "Always Free, Signup Now!"
  
  metrics :signup
end
