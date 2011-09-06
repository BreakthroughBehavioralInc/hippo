module Hippo::TransactionSets
  module HIPAA_837

    class L2420D < Hippo::TransactionSets::Base
      loop_name 'L2420D'    #Supervising Provider Name

      #Supervising Provider Name
      segment Hippo::Segments::NM1,
                :name           => 'Supervising Provider Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5000

      #Supervising Provider Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Supervising Provider Secondary Identification',
                :minimum        => 0,
                :maximum        => 20,
                :position       => 5250

    end
  end
end