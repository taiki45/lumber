# -*- coding: utf-8 -*-

require 'MeCab'

mecab = MeCab::Tagger.new "-Ochasen"
puts mecab.parse "今日は晴れだ"
