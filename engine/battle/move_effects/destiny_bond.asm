BattleCommand_DestinyBond:
; destinybond

	ld a, BATTLE_VARS_SUBSTATUS5
	predef GetBattleVarAddr
	set SUBSTATUS_DESTINY_BOND, [hl]
	call AnimateCurrentMove
	ld hl, DestinyBondEffectText
	jp StdBattleTextbox
