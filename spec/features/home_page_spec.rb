# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'the home page', type: :feature do
  before { @path = '/' }

  feature 'The page' do
    before { visit @path }

    scenario 'has "Getho" as HTML title' do
      expect(page).to have_title('Gethdo')
    end

    scenario 'mentions "Gethdo" somewhere' do
      expect(page).to have_text('Gethdo')
    end
  end
end
