/**
* No Gravity perk.
* Copyright (C) 2018 Filip Tomaszewski
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/


public void NoGravity_Call(int client, Perk perk, bool apply){
	if(apply) NoGravity_ApplyPerk(client);
	else SetEntityGravity(client, GetFloatCache(client));
}

void NoGravity_ApplyPerk(int client){
	SetFloatCache(client, GetEntityGravity(client));
	SetEntityGravity(client, 0.0001);
}
