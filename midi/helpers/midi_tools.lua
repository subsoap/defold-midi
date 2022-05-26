local M = {}

M.NOTE_NAMES = {"C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"}

M.octave_modifier = 1
-- 1 matches 60 / middle C to C4
-- 2 matches 60 / middle C to C3 and so on

function M.number_to_name(note_number, include_octave)
	local name  = M.NOTE_NAMES[note_number % 12 + 1]
	if include_octave then 
		name = name .. math.floor(note_number / 12 - M.octave_modifier)
	end
	return name
end

return M