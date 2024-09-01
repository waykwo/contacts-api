class ContactsController < ApplicationController
  def first_contact
    contact = Contact.find_by(id: 1)
    p contact
    render json: {
      first_name: contact.first_name,
      last_name: contact.last_name,
      email: contact.email,
      phone_number: contact.phone_number
    }
  end

  # def all_contacts
  #   all_contacts = Contact.all
  #   p all_contacts
  #   all_contacts_array = Array.new
  #   all_contacts.each do |contact|
  #     all_contacts_array << contact
  #   end
  #   render json: {contacts: all_contacts_array}
  # end

  def all_contacts
    all_contacts = Contact.all
    p all_contacts
    all_contacts_array = Array.new
    all_contacts.each do |contact|
      all_contacts_array << {
        first_name: contact.first_name,
        last_name: contact.last_name,
        email: contact.email,
        phone_number: contact.phone_number
      }
    end
    render json: {contacts: all_contacts_array}
  end
end
