# CheckPoints-include

--------------------------------------------------------------------------------

						CheckPoint include
		   	      				  by Vuk
						||English version||
            
--------------------------------------------------------------------------------

Check point types: NORMAL_CHECKPOINT, RACE_CHECKPOINT

--------------------------------------------------------------------------------

Functions:

CreateCheckpoint(Float:x,Float:y,Float:z,Float:size,type,Float:nextx=0.0, Float:nexty=0.0, Float:nextz=0.0,racetype=0); - create checkpoint
CheckpointExist(id); - return true if checkpoint exist
ShowPlayerCheckPoint(playerid,id); - showing checkpoint to player
DisableCheckPoint(playerid,type); - hiding players checkpoint
GetPlayerCheckPointID(playerid); - returning player checkpoints id

--------------------------------------------------------------------------------

Callbacks:

OnPlayerEnterToCheckPoint(playerid,checkpointid,type)
OnPlayerExitFromCheckPoint(playerid,checkpointid)

--------------------------------------------------------------------------------
