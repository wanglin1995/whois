# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.smallregistry.net/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.smallregistry.net.rb'

describe Whois::Record::Parser::WhoisSmallregistryNet, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.smallregistry.net/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      subject.disclaimer.should == "Welcome to the SMALLREGISTRY WHOIS Server. Datas are available in order to supply you with information purpose only, PROMOPIXEL is not responsible for its accuracy. Copy of whole or part of the data without permission from PROMOPIXEL is strictly forbidden. The sole owner of a domain is the entity described in the relevant \"registrant:\" record. Domain or subdomain ownership disputes should be settled by contacting SMALLREGISTRY registry: https://www.smallregistry.net, or PROMOPIXEL: http://www.promopixel.com\nBienvenue sur le serveur WHOIS de SMALLREGISTRY. Les données fournies sont disponibles à titre informatif uniquement, PROMOPIXEL ne garantit pas leurs exactitudes. La copie de tout ou partie de la base de données est interdite sans l'autorisation expresse de PROMOPIXEL. Le seul propriétaire d'un domaine ou d'un sous-domaine est l'entité décrite dans l’enregistrement \"registrant:\" correspondant. Un différent sur la propriété d'un nom de domaine ou de sous-domaine peut être réglé en contactant le registre SMALLREGISTRY: https://www.smallregistry.net, ou PROMOPIXEL: http://www.promopixel.com"
    end
  end
  describe "#domain" do
    it do
      subject.domain.should == "dr-foo-bar-baz.chirurgiens-dentistes.fr"
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
      subject.created_on.should == Time.parse("2011-01-13 15:45:18 +01:00")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2013-01-13 15:45:18 +01:00")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2012-01-13 16:00:09 +01:00")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == nil
      subject.registrar.name.should         == "GOOGLE"
      subject.registrar.organization.should == "GOOGLE"
      subject.registrar.url.should          == "http://www.google.com"
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).item
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == "FBB1-SMALL"
      subject.registrant_contacts[0].name.should          == "FOO BAR BAZ"
      subject.registrant_contacts[0].organization.should  == "FOO BAR BAZ INC"
      subject.registrant_contacts[0].address.should       == "116 RUE DE LA PAIX\n75001 PARIS\nFRANCE"
      subject.registrant_contacts[0].phone.should         == "+33.123456651"
      subject.registrant_contacts[0].fax.should           == "+33.123456660"
      subject.registrant_contacts[0].updated_on.should    == Time.parse("2011-01-13 15:45:18 +01:00")
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).item
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      subject.admin_contacts[0].id.should            == "QR1-SMALL"
      subject.admin_contacts[0].name.should          == nil
      subject.admin_contacts[0].organization.should  == "QWE RTY"
      subject.admin_contacts[0].address.should       == "13 RUE DE LA PAIX\n75003 PARIS\nFRANCE"
      subject.admin_contacts[0].phone.should         == "+33.144887967"
      subject.admin_contacts[0].updated_on.should    == Time.parse("2010-08-02 14:48:21 +02:00")
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).item
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == "GOOG-SMALL"
      subject.technical_contacts[0].name.should          == nil
      subject.technical_contacts[0].organization.should  == "GOOGLE DNS MASTER"
      subject.technical_contacts[0].address.should       == "GOOGLE\n22, RUE DE LA PAIX\n75008 PARIS\nFRANCE"
      subject.technical_contacts[0].phone.should         == "+33.821845353"
      subject.technical_contacts[0].fax.should           == "+33.821845354"
      subject.technical_contacts[0].updated_on.should    == Time.parse("2011-05-18 09:35:37 +02:00")
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
