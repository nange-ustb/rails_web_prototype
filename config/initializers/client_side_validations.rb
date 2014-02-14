# -*- encoding : utf-8 -*-
#ClientSideValidations Initializer

# Uncomment to disable uniqueness validator, possible security issue
# ClientSideValidations::Config.disabled_validators = [:uniqueness]

# Uncomment to validate number format with current I18n locale
# ClientSideValidations::Config.number_format_with_locale = true

# Uncomment the following block if you want each input field to have the validation messages attached.
#
# Note: client_side_validation requires the error to be encapsulated within
# <label for="#{instance.send(:tag_id)}" class="message"></label>
#
# ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
#   unless html_tag =~ /^<label/
#     %{<div class="field_with_errors">#{html_tag}<label for="#{instance.send(:tag_id)}" class="message">#{instance.error_message.first}</label></div>}.html_safe
#   else
#     %{<div class="field_with_errors">#{html_tag}</div>}.html_safe
#   end
# end

module ClientSideValidations::ActionView::Helpers
  module FormHelper
    private

    #rewrite this method for string sym diff
    def construct_validators
      @validators.inject({}) do |validator_hash, object_opts|
        option_hash = object_opts[1].inject({}) do |option_hash, attr|
          option_hash.merge!(attr[0] => attr[1][:options])
        end

        if object_opts[0].respond_to?(:client_side_validation_hash)
          validation_hash = object_opts[0].client_side_validation_hash(option_hash)
        else
          validation_hash = {}
        end

        option_hash.each_key do |attr|
          if validation_hash[attr.to_sym]
            validator_hash.merge!(object_opts[1][attr][:name] => validation_hash[attr.to_sym])
          end
        end

        validator_hash
      end
    end
  end
end

