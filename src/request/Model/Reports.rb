class Reports
    attr_accessor :reportGroup
	attr_accessor :affiliate
	attr_accessor :campaign
	attr_accessor :merchantGroupingID

    def to_hash()
        hash = {}
        hash[:ReportGroup] = (reportGroup.respond_to?(:to_hash) ? reportGroup.to_hash : reportGroup) if @reportGroup
		hash[:Affiliate] = (affiliate.respond_to?(:to_hash) ? affiliate.to_hash : affiliate) if @affiliate
		hash[:Campaign] = (campaign.respond_to?(:to_hash) ? campaign.to_hash : campaign) if @campaign
		hash[:MerchantGroupingID] = (merchantGroupingID.respond_to?(:to_hash) ? merchantGroupingID.to_hash : merchantGroupingID) if @merchantGroupingID
        hash
    end

	
end