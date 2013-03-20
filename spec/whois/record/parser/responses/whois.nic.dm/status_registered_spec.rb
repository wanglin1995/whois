# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.dm/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.dm.rb'

describe Whois::Record::Parser::WhoisNicDm, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.dm/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      subject.disclaimer.should == "This data is provided by DM REGISTRY for information purposes only in accordance with the DM REGISTRY TLD Privacy Policy. It is intended to assist persons to obtain information about or related to domain name registration records. DM REGISTRY does not guarantee its accuracy. By submitting this query, you agree to abide as follows:\nYou agree to use this data only for lawful purposes and that under no circumstances will you permit this data to 1) allow, enable, or otherwise support the transmission of mass unsolicited, commercial advertising or solicitations via e-mail, telephone or fax (spam); nor 2) enable high volume, automated, electronic processes to the systems of DM REGISTRY or Registrars, except as reasonably required to register new domain names or modify existing registrations; nor 3) will you generate a database of registered domain names and registrant data.\nThese terms may be changed without prior notice. By submitting this query, you agree to abide by this policy."
    end
  end
  describe "#domain" do
    it do
      subject.domain.should == "google.dm"
    end
  end
  describe "#domain_id" do
    it do
      lambda { subject.domain_id }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      subject.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      subject.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      subject.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      subject.created_on.should be_a(Time)
      subject.created_on.should == Time.parse("2004-08-23 23:00:00")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2012-07-25 19:49:18")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2013-08-23 23:00:00")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == nil
      subject.registrar.name.should         == "MarkMonitor Inc."
      subject.registrar.organization.should == nil
      subject.registrar.url.should          == "www.markmonitor.com"
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == "P-CQG21"
      subject.registrant_contacts[0].name.should          == "Company Google Inc."
      subject.registrant_contacts[0].organization.should  == nil
      subject.registrant_contacts[0].address.should       == "1600 Amphitheatre Parkway"
      subject.registrant_contacts[0].city.should          == "Mountain View"
      subject.registrant_contacts[0].zip.should           == "94043"
      subject.registrant_contacts[0].state.should         == nil
      subject.registrant_contacts[0].country_code.should  == "US"
      subject.registrant_contacts[0].phone.should         == nil
      subject.registrant_contacts[0].fax.should           == nil
      subject.registrant_contacts[0].email.should         == nil
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      subject.admin_contacts[0].id.should            == "P-DNA22"
      subject.admin_contacts[0].name.should          == "DNS Admin"
      subject.admin_contacts[0].organization.should  == "Google Inc."
      subject.admin_contacts[0].address.should       == "1600 Amphitheatre"
      subject.admin_contacts[0].city.should          == "Mountain View"
      subject.admin_contacts[0].zip.should           == "94043"
      subject.admin_contacts[0].state.should         == nil
      subject.admin_contacts[0].country_code.should  == "US"
      subject.admin_contacts[0].phone.should         == nil
      subject.admin_contacts[0].fax.should           == nil
      subject.admin_contacts[0].email.should         == nil
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == "P-DXA21"
      subject.technical_contacts[0].name.should          == "DNS Admin"
      subject.technical_contacts[0].organization.should  == "Google Inc."
      subject.technical_contacts[0].address.should       == "1600 Amphitheatre"
      subject.technical_contacts[0].city.should          == "Mountain View"
      subject.technical_contacts[0].zip.should           == "94043"
      subject.technical_contacts[0].state.should         == nil
      subject.technical_contacts[0].country_code.should  == "US"
      subject.technical_contacts[0].phone.should         == nil
      subject.technical_contacts[0].fax.should           == nil
      subject.technical_contacts[0].email.should         == nil
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(4).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns1.google.com"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns2.google.com"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "ns3.google.com"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "ns4.google.com"
    end
  end
end
