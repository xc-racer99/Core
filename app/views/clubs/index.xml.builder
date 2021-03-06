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
  @clubs.each do |club|
    xml.Organisation do
      render partial: 'clubs/organisation_inner', locals: { builder: xml, club: club }
    end
  end
end
