 require 'rails_helper'

describe Vote do

include TestFactories

  describe "validations" do
    describe "value validation" do
     it "only allows -1 or 1 as a valid value" do
        vote_up = Vote.new(value: 1)
        vote_down = Vote.new(value: -1)
        vote_nil = Vote.new(value: 0)
        expect(vote_up.valid?).to eq(true)
        expect(vote_down.valid?).to eq(true)
        expect(vote_nil.valid?).to eq(false)
       end
     end
   end
 

  describe 'after_save' do
    it "calls `Post#update_rank` after save" do
      post = associated_post
      vote = Vote.new(value: 1, post: post)
      expect(post).to receive(:update_rank)
      vote.save
    end
  end
end