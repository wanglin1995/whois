# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.fr/re/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.fr.rb'

describe Whois::Record::Parser::WhoisNicFr, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.fr/re/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
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
      subject.created_on.should == Time.parse("1995-01-01")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2009-03-12")
    end
  end
  describe "#expires_on" do
    it do
      lambda { subject.expires_on }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == "A1967-FRNIC"
      subject.registrant_contacts[0].name.should          == nil
      subject.registrant_contacts[0].organization.should  == "AFNIC"
      subject.registrant_contacts[0].address.should       == "immeuble international\n2, rue Stephenson\nMontigny-Le-Bretonneux\n78181 Saint Quentin en Yvelines"
      subject.registrant_contacts[0].city.should          == nil
      subject.registrant_contacts[0].zip.should           == nil
      subject.registrant_contacts[0].state.should         == nil
      subject.registrant_contacts[0].country.should       == nil
      subject.registrant_contacts[0].country_code.should  == "FR"
      subject.registrant_contacts[0].phone.should         == nil
      subject.registrant_contacts[0].fax.should           == nil
      subject.registrant_contacts[0].email.should         == nil
      subject.registrant_contacts[0].updated_on.should    == Time.parse("2009-12-02 00:00:00 UTC")
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMIN
      subject.admin_contacts[0].id.should            == "NFC1-FRNIC"
      subject.admin_contacts[0].name.should          == "NIC France Contact"
      subject.admin_contacts[0].organization.should  == "AFNIC"
      subject.admin_contacts[0].address.should       == "immeuble international\n2, rue Stephenson\nMontigny le Bretonneux\n78181 Saint Quentin en Yvelines Cedex"
      subject.admin_contacts[0].city.should          == nil
      subject.admin_contacts[0].zip.should           == nil
      subject.admin_contacts[0].state.should         == nil
      subject.admin_contacts[0].country.should       == nil
      subject.admin_contacts[0].country_code.should  == "FR"
      subject.admin_contacts[0].phone.should         == "+33 1 39 30 83 00"
      subject.admin_contacts[0].fax.should           == nil
      subject.admin_contacts[0].email.should         == "hostmaster@nic.fr"
      subject.admin_contacts[0].updated_on.should    == Time.parse("2005-08-23 00:00:00 UTC")
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == "NFC1-FRNIC"
      subject.technical_contacts[0].name.should          == "NIC France Contact"
      subject.technical_contacts[0].organization.should  == "AFNIC"
      subject.technical_contacts[0].address.should       == "immeuble international\n2, rue Stephenson\nMontigny le Bretonneux\n78181 Saint Quentin en Yvelines Cedex"
      subject.technical_contacts[0].city.should          == nil
      subject.technical_contacts[0].zip.should           == nil
      subject.technical_contacts[0].state.should         == nil
      subject.technical_contacts[0].country.should       == nil
      subject.technical_contacts[0].country_code.should  == "FR"
      subject.technical_contacts[0].phone.should         == "+33 1 39 30 83 00"
      subject.technical_contacts[0].fax.should           == nil
      subject.technical_contacts[0].email.should         == "hostmaster@nic.fr"
      subject.technical_contacts[0].updated_on.should    == Time.parse("2005-08-23 00:00:00 UTC")
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(3).items
    end
  end
end
