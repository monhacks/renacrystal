BattleCommand_Snore:
; snore
	ld a, BATTLE_VARS_STATUS
	predef GetBattleVar
	and SLP
	ret nz
	call ResetDamage
	ld a, $1
	ld [wAttackMissed], a
	call FailMove
	jp EndMoveEffect
