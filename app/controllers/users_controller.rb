class UsersController < ApplicationController

	def show
    @user = User.find(params[:id])
    histories = @user.histories

		@pulse_rate = histories.pluck(:created_at, :pulse_rate)
    @systolic = histories.pluck(:created_at, :systolic_blood_pressure)
    @diastolic = histories.pluck(:created_at, :diastolic_blood_pressure)

    @blood_sugar_fasting = histories.pluck(:created_at, :blood_sugar_fasting)
    @blood_sugar_after_meal = histories.pluck(:created_at, :blood_sugar_after_meal)

	end

	def blood_pressure
		@pulse_rate = histories.pluck(:created_at, :pulse_rate)
    @systolic = histories.pluck(:created_at, :systolic_blood_pressure)
    @diastolic = histories.pluck(:created_at, :diastolic_blood_pressure)

		render json: [{name: 'Count', data: @pulse_rate}]
	end

end
