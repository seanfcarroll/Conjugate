# -*- coding: utf-8 -*-
require 'rspec'
require 'conjugate'


describe 'Helper Conjugations' do

  describe 'methods testing' do

    it '.conjugate calls Spanish' do
      verb = Conjugate.conjugate({language: 'spanish', verb: 'comprar', tense: :present, pronoun: :yo})
      expect(verb).to eq('compro')

      verb = Conjugate.conjugate({language: 'es', verb: 'comprar', tense: :present, pronoun: :yo})
      expect(verb).to eq('compro')
    end

    it '.conjugate calls french' do
      verb = Conjugate.conjugate({language: 'french', verb: 'jouer', tense: :present, pronoun: :je})
      expect(verb).to eq('joue')

      verb = Conjugate.conjugate({language: 'fr', verb: 'jouer', tense: :present, pronoun: :je})
      expect(verb).to eq('joue')
    end

    it 'fails with other language' do
      expect { Conjugate.conjugate({language: 'japanese'}) }.to raise_error(ArgumentError)
    end
  end
end
