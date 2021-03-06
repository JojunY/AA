slot1 = ui.reference("RAGE", "Other", "Duck peek assist")
slot2 = ui.reference("MISC", "Movement", "Infinite duck")

ui.set_visible(ui.reference("MISC", "Settings", "sv_maxusrcmdprocessticks"), false)

slot3 = ui.new_multiselect("AA", "Fake lag", "Lag comp shifter", "Default", "Hit ground")
slot4 = ui.reference("AA", "Fake lag", "Amount")
slot5 = ui.reference("AA", "Fake lag", "Variance")
slot6 = ui.reference("AA", "Fake lag", "Limit")
slotfix = ui.new_checkbox("AA", "Fake lag", "Fake lag while shooting")
slot7 = ui.reference("AA", "Fake lag", "Fake lag while shooting")
slot8 = ui.reference("MISC", "Settings", "sv_maxusrcmdprocessticks")
slot9 = {
	current_phase = 1,
	prev_choked = 15
}

function slot10(slot0, slot1)
	for slot5 = 1, #slot0 do
		if slot0[slot5] == slot1 then
			return true
		end
	end

	return false
end

slot11 = {
	{
		variance = 0,
		limit = 14,
		amount = "Maximum"
	},
	{
		variance = 0,
		limit = 14,
		amount = "Fluctuate"
	},
	{
		variance = 60,
		limit = 13,
		amount = "Dynamic"
	},
	{
		variance = 0,
		limit = 14,
		amount = "Maximum"
	},
	{
		variance = 60,
		limit = 13,
		amount = "Dynamic"
	},
	{
		variance = 0,
		limit = 14,
		amount = "Fluctuate"
	},
	{
		variance = 60,
		limit = 13,
		amount = "Dynamic"
	},
	{
		variance = 60,
		limit = 14,
		amount = "Maximum"
	},
	{
		variance = 60,
		limit = 13,
		amount = "Dynamic"
	}
}

client.set_event_callback("setup_command", function (slot0)
	slot2, slot3 = entity.get_prop(entity.get_local_player(), "m_vecVelocity")
	slot4 = math.sqrt(slot2^2 + slot3^2)

	if slot0.chokedcommands < cmd.prev_choked then
		cmd.current_phase = cmd.current_phase + 1

		if cmd.current_phase > #uv1 then
			cmd.current_phase = 1
		end
	end

	ui.set(uv2, uv1[cmd.current_phase].amount)
	ui.set(uv3, uv1[cmd.current_phase].variance)
	ui.set(uv4, slot0.in_attack == 0 and uv1[cmd.current_phase].limit or 11)

	cmd.prev_choked = slot0.chokedcommands
end)

function slot12(slot0, slot1, slot2, slot3)
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

function slot13(slot0, slot1)
	slot2, slot3, slot4, slot5 = cmd(globals.realtime() * slot0, 1, 1, 1)

	return slot2 * slot1, slot3 * slot1, slot4 * slot1
end

client.set_event_callback("paint", function (slot0)
	slot1, slot2, slot3 = cmd(0.1, 1)
	slot5 = "Chen"
	slot6, slot7 = renderer.measure_text("+", slot5)

	renderer.rectangle(20, renderer.indicator(slot1, slot2, slot3, 255, slot5) + 35, (slot6 - 2) / ui.get(uv1) * uv2.prev_choked, 3, slot1, slot2, slot3, 255)
end)
