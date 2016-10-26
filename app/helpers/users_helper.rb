module UsersHelper

	def blood_pressure
		line_chart [
                { name: "Pulse Rate", data: @pulse_rate },
                {name: "Systolic Blood Pressure", data: @systolic },
                {name: "Diastolic Blood Pressure", data: @diastolic }
              ], {library: {hAxis: {title: "X"}, vAxis: {title: "Y"}}}
	end          

end
