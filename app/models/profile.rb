class Profile < ApplicationRecord
    has_many(:educations, dependent: :destroy)
    accepts_nested_attributes_for(:educations , reject_if: :reject_education_create, allow_destroy: true)

    belongs_to :user

    has_many(:experience, dependent: :destroy)
    accepts_nested_attributes_for(:experience, reject_if: :reject_experience_create, allow_destroy: true)

    belongs_to :user

    has_many(:projects, dependent: :destroy)
    accepts_nested_attributes_for(:projects, reject_if: :reject_projects_create, allow_destroy: true)

    belongs_to :user

    def reject_education_create(education)
        education[:degree].blank? or education[:school].blank? or education[:start].blank? or education[:end].blank?
    end
    def reject_education_create(experience)
        experience[:company].blank? or experience[:position].blank? or experience[:joining].blank? or experience[:ending].blank?
    end
    def reject_education_create(projects)
        projects[:title].blank? or projects[:project_url].blank? or education[:tech].blank?
    end
end