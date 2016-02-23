class ScheduledTask
    attr_accessor :scheduledTaskID
	attr_accessor :runCycles
	attr_accessor :runStartDate
	attr_accessor :amount
	attr_accessor :createDiscount
	attr_accessor :createAddOn
	attr_accessor :subscriptionID
	attr_accessor :name
	attr_accessor :description
	attr_accessor :runFrequency
	attr_accessor :trialRunCycles
	attr_accessor :trialRunFrequency
	attr_accessor :active
	attr_accessor :billingDate
	attr_accessor :updateDiscount
	attr_accessor :deleteDiscount
	attr_accessor :updateAddOn
	attr_accessor :deleteAddOn

    def to_hash()
        hash = {}
        hash[:ScheduledTaskID] = (scheduledTaskID.respond_to?(:to_hash) ? scheduledTaskID.to_hash : scheduledTaskID) if @scheduledTaskID
		hash[:RunCycles] = (runCycles.respond_to?(:to_hash) ? runCycles.to_hash : runCycles) if @runCycles
		hash[:RunStartDate] = (runStartDate.respond_to?(:to_hash) ? runStartDate.to_hash : runStartDate) if @runStartDate
		hash[:Amount] = (amount.respond_to?(:to_hash) ? amount.to_hash : amount) if @amount
		hash[:CreateDiscount] = (createDiscount.respond_to?(:to_hash) ? createDiscount.to_hash : createDiscount) if @createDiscount
		hash[:CreateAddOn] = (createAddOn.respond_to?(:to_hash) ? createAddOn.to_hash : createAddOn) if @createAddOn
		hash[:SubscriptionID] = (subscriptionID.respond_to?(:to_hash) ? subscriptionID.to_hash : subscriptionID) if @subscriptionID
		hash[:Name] = (name.respond_to?(:to_hash) ? name.to_hash : name) if @name
		hash[:Description] = (description.respond_to?(:to_hash) ? description.to_hash : description) if @description
		hash[:RunFrequency] = (runFrequency.respond_to?(:to_hash) ? runFrequency.to_hash : runFrequency) if @runFrequency
		hash[:TrialRunCycles] = (trialRunCycles.respond_to?(:to_hash) ? trialRunCycles.to_hash : trialRunCycles) if @trialRunCycles
		hash[:TrialRunFrequency] = (trialRunFrequency.respond_to?(:to_hash) ? trialRunFrequency.to_hash : trialRunFrequency) if @trialRunFrequency
		hash[:Active] = (active.respond_to?(:to_hash) ? active.to_hash : active) if @active
		hash[:BillingDate] = (billingDate.respond_to?(:to_hash) ? billingDate.to_hash : billingDate) if @billingDate
		hash[:UpdateDiscount] = (updateDiscount.respond_to?(:to_hash) ? updateDiscount.to_hash : updateDiscount) if @updateDiscount
		hash[:DeleteDiscount] = (deleteDiscount.respond_to?(:to_hash) ? deleteDiscount.to_hash : deleteDiscount) if @deleteDiscount
		hash[:UpdateAddOn] = (updateAddOn.respond_to?(:to_hash) ? updateAddOn.to_hash : updateAddOn) if @updateAddOn
		hash[:DeleteAddOn] = (deleteAddOn.respond_to?(:to_hash) ? deleteAddOn.to_hash : deleteAddOn) if @deleteAddOn
        hash
    end

	
end