# -*- encoding : utf-8 -*-
class Convenio < ActiveRecord::Base
	validates_presence_of :nome, :message => "é necessário."
end
