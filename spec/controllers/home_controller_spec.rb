# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    it 'gets home/index with application layout' do
      get :index

      assert_response :success
      expect(response).to render_template 'home/index'
      expect(response).to render_template layout: 'layouts/application'
    end

    describe 'locales' do
      before(:each) do
        I18n.locale = I18n.default_locale
      end

      it 'uses the EN locale with an EN locale parameter' do
        get :index, params: { locale: 'en' }

        expect(I18n.locale).to eq(:en)
      end

      it 'uses the DE locale with an DE locale parameter' do
        get :index, params: { locale: 'de' }

        expect(I18n.locale).to eq(:de)
      end

      it 'uses the default locale without a locale parameter' do
        get :index

        expect(I18n.locale).to eq(I18n.default_locale)
      end

      it 'uses the default locale with an invalid locale parameter' do
        get :index, params: { locale: 'tlh' }

        expect(I18n.locale).to eq(I18n.default_locale)
      end

      it 'adds flash notice with an invalid locale parameter' do
        get :index, params: { locale: 'tlh' }

        expect(flash.now[:notice]).to eq('tlh translation not available')
      end
    end
  end
end
