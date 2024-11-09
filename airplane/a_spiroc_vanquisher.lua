function event_signal(e)
	entity_list = eq.get_entity_list();

	if(e.signal == 255) then
		local mobtypeID =  entity_list:GetMobByNpcTypeID(71012);
		local follow_mob = mobtypeID:GetID();
		eq.follow(follow_mob);
	elseif(e.signal == 254) then
		eq.stop_follow();
		eq.Repop();
	end
end