#include <a_samp>
#include <checkpoints>

new cp;
new cp1;

main()
{
	print("\n----------------------------------");
	print(" Checkpoints include by Vuk");
	print("----------------------------------\n");
}

public OnGameModeInit()
{
	SetGameModeText("Blank Script");
	AddPlayerClass(0, 0.0,0.0,0.0,0.0, 0, 0, 0, 0, 0, 0);
	cp = CreateCheckpoint(35.8472,9.7052,3.1172,2.0,NORMAL_CHECKPOINT);
	cp1 = CreateCheckpoint(56.0824,2.3980,1.7369,2.0,RACE_CHECKPOINT,35.8472,9.7052,3.1172,0);
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
    ShowPlayerCheckPoint(playerid,cp);
    ShowPlayerCheckPoint(playerid,cp1);
	return 1;
}

public OnPlayerEnterToCheckPoint(playerid,checkpointid,type)
{
	if(type == NORMAL_CHECKPOINT && checkpointid == cp)
	{
	    SendClientMessage(playerid,-1,"OnPlayerEnterToCheckPoint normal");
	}
	else if(type == RACE_CHECKPOINT && checkpointid == cp1)
	{
	    SendClientMessage(playerid,-1,"OnPlayerEnterToCheckPoint race");
	    DisableCheckPoint(playerid,RACE_CHECKPOINT);
	}
	return 1;
}

public OnPlayerExitFromCheckPoint(playerid,checkpointid)
{
	if(checkpointid == cp)
	{
	    SendClientMessage(playerid,-1,"OnPlayerExitFromCheckPoint normal");
	    DisableCheckPoint(playerid,NORMAL_CHECKPOINT);
	}
	else if(checkpointid == cp1)
	{
	    SendClientMessage(playerid,-1,"OnPlayerExitFromCheckPoint race");
	}
	return 1;
}

