# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'the home page', type: :feature do
  let(:path) { '/' }

  describe 'The page' do
    before { visit path }

    it 'has "Getho" as HTML title' do
      expect(page).to have_title('Gethdo')
    end

    it 'mentions "Gethdo" somewhere' do
      expect(page).to have_text('Gethdo')
    end
  end
end
