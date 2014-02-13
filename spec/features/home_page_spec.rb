require 'spec_helper'

feature 'the home page' do
  scenario 'has "Getho" as HTML title' do
    visit '/'
    expect(page).to have_title('Gethdo')
  end

  scenario 'mentions "Gethdo" somewhere' do
    visit '/'
    expect(page).to have_text('Gethdo')
  end
end
