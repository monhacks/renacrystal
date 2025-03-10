BattleCommand_Foresight:
; foresight

	ld a, [wAttackMissed]
	and a
	jr nz, .failed

	call CheckHiddenOpponent
	jr nz, .failed

	ld a, BATTLE_VARS_SUBSTATUS1_OPP
	predef GetBattleVarAddr
	bit SUBSTATUS_IDENTIFIED, [hl]
	jr nz, .failed

	set SUBSTATUS_IDENTIFIED, [hl]
	call AnimateCurrentMove
	ld hl, IdentifiedText
	jp StdBattleTextbox

.failed
	jp FailMove
