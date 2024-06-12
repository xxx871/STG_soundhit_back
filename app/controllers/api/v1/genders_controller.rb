module Api
  module V1
    class GendersController < ApplicationController
      def index
        genders = Gender.all
        render json: genders
      end

      def notes_range
        gender_id = params[:id]
        Rails.logger.info("Fetching notes range for gender_id: #{gender_id}")
        
        low_note_record = GenderLowNote.find_by(gender_id: gender_id)
        high_note_record = GenderHighNote.find_by(gender_id: gender_id)

        if low_note_record.nil?
          Rails.logger.error("Low note not found for gender_id: #{gender_id}")
          render json: { error: 'Low note not found for given gender' }, status: :not_found
          return
        end

        if high_note_record.nil?
          Rails.logger.error("High note not found for gender_id: #{gender_id}")
          render json: { error: 'High note not found for given gender' }, status: :not_found
          return
        end

        low_note = low_note_record.note
        high_note = high_note_record.note

        Rails.logger.info("Low note frequency: #{low_note.frequency}, High note frequency: #{high_note.frequency}")

        notes = Note.where(frequency: low_note.frequency..high_note.frequency)
        render json: notes
      end
    end
  end
end
