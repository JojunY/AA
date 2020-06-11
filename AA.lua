slot0 = client.draw_indicator
slot1 = client.set_event_callback
slot2 = math.random
slot3 = ui.get
slot5 = ui.new_hotkey
slot6 = ui.reference
slot7 = ui.set
slot8 = client.screen_size()
slot9 = ui.new_combobox("LUA", "A", "Anti-hit types", "Chen Static", "Chen Jitter", "Manual", "Experimental", "Experimental 2", "Test")
slot10 = ui.new_hotkey("LUA", "A", "Invert key")
slot11, slot12 = slot6("AA", "Anti-aimbot angles", "Yaw")
slot13, slot14 = slot6("AA", "Anti-aimbot angles", "Yaw jitter")
slot15, slot16 = slot6("AA", "Anti-aimbot angles", "Body Yaw")
slot17 = slot6("AA", "Anti-aimbot angles", "Lower body yaw target")
slot18 = slot6("AA", "Anti-aimbot angles", "Fake Yaw Limit")
slot19 = slot6("RAGE", "Other", "Duck Peek Assist")
slot20 = slot5("LUA", "A", "Slowwalk Keybind")
slot21 = slot5("LUA", "A", "Manual LEFT")
slot22 = slot5("LUA", "A", "Manual RIGHT")
slot23 = ui.new_multiselect("LUA", "A", "Indicators", "Arrows", "Text")
slot24 = slot6("AA", "Anti-aimbot angles", "Yaw Base")
slot25 = ui.new_checkbox("LUA", "A", "Clantag")

ui.set(slot11, "180")
ui.set(slot14, 0)

function slot27(slot0, slot1)
	for slot5, slot6 in pairs(slot0) do
		if slot1 == slot6 then
			return true
		end
	end

	return false
end

client.set_event_callback("paint", function (slot0)
	if not ui.get(uv0) then
		return
	end

	slot1, slot2 = client.screen_size()
	slot3 = slot1 / 2
	slot4 = slot2 / 2
	slot5 = slot3 - 60
	slot6 = slot3 + 60
	slot7 = "⮘"
	slot8 = "⮚"

	if ui.get(uv1) then
		if uv2(ui.get(uv3), "Text") then
			client.draw_indicator(slot0, 147, 122, 219, 255, "fake-R")
		end

		if uv2(ui.get(uv3), "Arrows") then
			renderer.text(slot5, slot4, 30, 30, 30, 220, "c+", 0, slot7)
			renderer.text(slot6, slot4, 65, 105, 225, 220, "c+", 0, slot8)
		end
	else
		if uv2(ui.get(uv3), "Text") then
			client.draw_indicator(slot0, 147, 122, 219, 255, "fake-L")
		end

		if uv2(ui.get(uv3), "Arrows") then
			renderer.text(slot5, slot4, 65, 105, 225, 220, "c+", 0, slot7)
			renderer.text(slot6, slot4, 30, 30, 30, 220, "c+", 0, slot8)
		end
	end
end)
ui.set_callback(ui.new_checkbox("LUA", "A", "Activate Eagle-Antiaim"), function (slot0)
	client.set_event_callback("paint", function (slot0)
		if ui.get(uv0) then
			if ui.get(uv1) == "Chen Static" then
				if ui.get(uv2) then
					ui.set(uv3, "180")
					ui.set(uv4, 5)
					ui.set(uv5, "static")
					ui.set(uv6, "off")
					ui.set(uv7, 90)
					ui.set(uv8, "eye yaw")
					ui.set(uv7, 60)
					ui.set_visible(uv7, false)
					ui.set_visible(uv5, false)
					ui.set_visible(uv6, false)
					ui.set_visible(uv4, false)
					ui.set_visible(uv9, false)
				else
					ui.set(uv3, "180")
					ui.set(uv4, -5)
					ui.set(uv5, "static")
					ui.set(uv6, "off")
					ui.set(uv7, -90)
					ui.set_visible(uv7, false)
					ui.set_visible(uv5, false)
					ui.set_visible(uv6, false)
					ui.set_visible(uv4, false)
					ui.set_visible(uv9, false)
				end
			end

			if ui.get(uv1) == "fake Jitter" then
				if ui.get(uv2) then
					ui.set(uv4, 5)
					ui.set(uv3, "180")
					ui.set(uv6, "off")
					ui.set(uv5, "Jitter")
					ui.set(uv7, 34)
					ui.set_visible(uv7, false)
					ui.set_visible(uv5, false)
					ui.set_visible(uv6, false)
					ui.set_visible(uv4, false)
					ui.set_visible(uv9, false)
				else
					ui.set(uv4, -5)
					ui.set(uv3, "180")
					ui.set(uv6, "off")
					ui.set(uv5, "Jitter")
					ui.set(uv7, -24)
					ui.set_visible(uv7, false)
					ui.set_visible(uv5, false)
					ui.set_visible(uv6, false)
					ui.set_visible(uv4, false)
					ui.set_visible(uv9, false)
				end
			end

			if ui.get(uv1) == "Manual" then
				if ui.get(uv2) then
					ui.set(uv4, 70)
					ui.set(uv3, "180")
					ui.set(uv5, "Static")
					ui.set(uv6, "off")
					ui.set(uv7, -90)
					ui.set_visible(uv7, false)
					ui.set_visible(uv5, false)
					ui.set_visible(uv6, false)
					ui.set_visible(uv4, false)
					ui.set_visible(uv9, false)
				else
					ui.set(uv4, -85)
					ui.set(uv3, "180")
					ui.set(uv5, "Static")
					ui.set(uv6, "off")
					ui.set(uv7, -90)
					ui.set_visible(uv7, false)
					ui.set_visible(uv5, false)
					ui.set_visible(uv6, false)
					ui.set_visible(uv4, false)
					ui.set_visible(uv9, false)
				end
			end

			if ui.get(uv1) == "Experimental" then
				if ui.get(uv2) == true then
					ui.set(uv4, 17)
					ui.set(uv3, "180")
					ui.set(uv10, 32)
					ui.set(uv5, "Static")
					ui.set(uv6, "Random")
					ui.set(uv7, 90)
					ui.set_visible(uv7, false)
					ui.set_visible(uv5, false)
					ui.set_visible(uv6, false)
					ui.set_visible(uv4, false)
					ui.set_visible(uv9, false)
				else
					ui.set(uv4, -24)
					ui.set(uv3, "180")
					ui.set(uv10, -43)
					ui.set(uv5, "Static")
					ui.set(uv6, "Random")
					ui.set(uv7, -90)
					ui.set_visible(uv7, false)
					ui.set_visible(uv5, false)
					ui.set_visible(uv6, false)
					ui.set_visible(uv4, false)
					ui.set_visible(uv9, false)
				end
			end

			if ui.get(uv1) == "Experimental 2" then
				if ui.get(uv2) then
					hvh = client.random_int(10, 20)

					ui.set(uv4, 10)
					ui.set(uv3, "180")
					ui.set(uv6, "Offset")
					ui.set(uv10, hvh)
					ui.set(uv5, "Static")
					ui.set(uv7, 60)
					ui.set(uv8, "Opposite")
					ui.set(uv7, 60)
					ui.set_visible(uv7, false)
					ui.set_visible(uv5, false)
					ui.set_visible(uv6, false)
					ui.set_visible(uv4, false)
					ui.set_visible(uv9, false)
				else
					hvh2 = client.random_int(-35, -20)

					ui.set(uv4, -15)
					ui.set(uv3, "180")
					ui.set(uv6, "Offset")
					ui.set(uv10, hvh2)
					ui.set(uv5, "Static")
					ui.set(uv7, -60)
					ui.set(uv8, "Opposite")
					ui.set(uv7, -60)
					ui.set_visible(uv7, false)
					ui.set_visible(uv5, false)
					ui.set_visible(uv6, false)
					ui.set_visible(uv4, false)
					ui.set_visible(uv9, false)
				end
			end

			if ui.get(uv1) == "Test" then
				if ui.get(uv2) then
					hvh3 = client.random_int(10, 20)

					ui.set(uv3, "180")
					ui.set(uv4, 15)
					ui.set(uv6, "Center")
					ui.set(uv10, hvh3)
					ui.set(uv5, "Static")
					ui.set(uv7, 60)
					ui.set(uv8, "Opposite")
					ui.set(uv9, 60)
					ui.set_visible(uv7, false)
					ui.set_visible(uv5, false)
					ui.set_visible(uv6, false)
					ui.set_visible(uv9, false)
				else
					hvh4 = client.random_int(0, 0)

					ui.set(uv3, "180")
					ui.set(uv4, -17)
					ui.set(uv6, "Center")
					ui.set(uv10, hvh4)
					ui.set(uv5, "Static")
					ui.set(uv7, -60)
					ui.set(uv8, "eye yaw")
					ui.set(uv9, 60)
					ui.set_visible(uv7, false)
					ui.set_visible(uv5, false)
					ui.set_visible(uv6, false)
					ui.set_visible(uv4, false)
					ui.set_visible(uv9, false)
				end
			end

			if ui.get(uv11) then
				ui.set(uv4, 5)
				ui.set(uv3, "180")
				ui.set(uv6, "off")
				ui.set(uv5, "Jitter")
				ui.set(uv7, 95)
				ui.set(uv8, "eye yaw")
				ui.set(uv9, 60)
			end

			if ui.get(uv12) then
				ui.set(uv4, 5)
				ui.set(uv3, "180")
				ui.set(uv6, "off")
				ui.set(uv5, "Jitter")
				ui.set(uv7, 65)
				ui.set(uv8, "eye yaw")
				ui.set(uv9, 60)
			end

			if ui.get(uv13) then
				ui.set(uv4, 90)
				ui.set(uv3, "180")
				ui.set(uv6, "off")
				ui.set(uv5, "Jitter")
				ui.set(uv7, 65)
				ui.set(uv8, "eye yaw")
				ui.set(uv9, 60)
			end

			if ui.get(uv14) then
				ui.set(uv4, -90)
				ui.set(uv3, "180")
				ui.set(uv6, "off")
				ui.set(uv5, "Jitter")
				ui.set(uv7, 65)
				ui.set(uv8, "eye yaw")
				ui.set(uv9, 60)
			end

			if not ui.get(uv0) then
				return
			end
		end
	end)

	if not ui.get(uv0) then
		ui.set(uv5, 0)
		ui.set(uv4, "180")
		ui.set(uv7, "Off")
		ui.set(uv6, "Off")
		ui.set(uv10, 0)
		ui.set(uv13, false)
	end
end)
client.set_event_callback("shutdown", function ()
	ui.set(uv0, 0)
	ui.set(uv1, 0)
	ui.set(uv2, 0)
end)

function slot28(slot0, slot1, slot2, slot3)
	slot4, slot5, slot6 = nil
	slot7 = math.floor(slot0 * 6)
	slot8 = slot0 * 6 - slot7
	slot10 = slot2 * (1 - slot8 * slot1)

	if slot7 % 6 == 0 then
		slot6 = slot2 * (1 - slot1)
		slot5 = slot2 * (1 - (1 - slot8) * slot1)
		slot4 = slot2
	elseif slot7 == 1 then
		slot6 = slot9
		slot5 = slot2
		slot4 = slot10
	elseif slot7 == 2 then
		slot6 = slot11
		slot5 = slot2
		slot4 = slot9
	elseif slot7 == 3 then
		slot6 = slot2
		slot5 = slot10
		slot4 = slot9
	elseif slot7 == 4 then
		slot6 = slot2
		slot5 = slot9
		slot4 = slot11
	elseif slot7 == 5 then
		slot6 = slot10
		slot5 = slot9
		slot4 = slot2
	end

	return slot4 * 255, slot5 * 255, slot6 * 255, slot3 * 255
end

function slot29(slot0, slot1)
	slot2, slot3, slot4, slot5 = uv0(globals.realtime() * slot0, 1, 1, 1)

	return slot2 * slot1, slot3 * slot1, slot4 * slot1
end

client.set_event_callback("paint", function (slot0)
	slot1, slot2, slot3 = uv0(0.1, 1)

	client.draw_indicator(slot0, slot1, slot2, slot3, 255, "fake")
end)
