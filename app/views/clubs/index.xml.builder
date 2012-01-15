xml.instruct!
xml.OrganisationList(
	:xmlns => "http://www.orienteering.org/datastandard/3.0",
	:'xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
	:iofVersion => "3.0",
	:createTime => Time.zone.now.iso8601,
	:creator => "WhyJustRun"
	) do
	# TODO-RWP Event classification list
	# TODO-RWP How to do Event Races?
	@clubs.each { |club|
		xml.Organisation do
			xml.Id club.id
			xml.Name club.name
			xml.ShortName club.acronym
			xml.comment! "Type is hardcoded as Club for now"
			xml.Type "Club" # TODO-RWP hardcoded for now
			#unless club.parent_id.nil? then
			# xml.ParentOrganization club.parent_id
			#end
			xml.comment! "Tree structure ParentOrganization is coming soon"
			xml.Contact(club.url, :type => "WebAddress")
		end
	}
end