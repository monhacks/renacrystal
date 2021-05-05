BattleCommand_FocusEnergy:
; focusenergy

	ld a, BATTLE_VARS_SUBSTATUS4
	predef GetBattleVarAddr
	bit SUBSTATUS_FOCUS_ENERGY, [hl]
	jr nz, .already_pumped
	set SUBSTATUS_FOCUS_ENERGY, [hl]
	call AnimateCurrentMove
	ld hl, GettingPumpedText
	jp StdBattleTextbox

.already_pumped
	call AnimateFailedMove
	jp PrintButItFailed
