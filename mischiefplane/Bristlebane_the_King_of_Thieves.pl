sub EVENT_SPAWN {
	quest::setnexthpevent(90);
	quest::settimer("timeup",7200);
}

sub EVENT_COMBAT {
	if($combat_state == 0) {
		$npc->SetHP(685000);
  		quest::setnexthpevent(90);
		quest::modifynpcstat("attack_delay", "12");
  		quest::modifynpcstat("max_hit", "1904");
		quest::modifynpcstat("min_hit", "680");	

	        quest::modifynpcstat("ac", "548");
		quest::modifynpcstat("mr", "144");
		quest::modifynpcstat("fr", "96");
		quest::modifynpcstat("cr", "96");
		quest::modifynpcstat("dr", "96");
		quest::modifynpcstat("pr", "96");
 	}
}

sub EVENT_HP {  # adds does not aggro unless within aggro range
	if($hpevent == 90) {
		quest::setnexthpevent(80);
		quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a mystical word of power and suddenly his skin begins to take on a rock like appearance.");
		quest::modifynpcstat("ac", "1587");
	}
	if ($hpevent == 80) {
		quest::setnexthpevent(70);
		quest::spawn2(126375,0,0,-88,886,178,384); # a_devious_guardian_jokester
		quest::spawn2(126376,0,0,-157,886,178,128); # a_tricky_guardian_jester 
		quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a mystical word of power and is suddenly surrrounded by a magical glowing aura.");
		quest::modifynpcstat("ac", "1087");
		quest::modifynpcstat("mr", "500");
		quest::modifynpcstat("fr", "500");
		quest::modifynpcstat("cr", "500");
		quest::modifynpcstat("dr", "500");
		quest::modifynpcstat("pr", "500");
	}
  	if($hpevent == 70) {
		quest::setnexthpevent(60);
		quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a mystical word of power and suddenly his muscles bulge with incomprehensible strength.");
		quest::modifynpcstat("mr", "200");
		quest::modifynpcstat("fr", "200");
		quest::modifynpcstat("cr", "200");
		quest::modifynpcstat("dr", "200");
		quest::modifynpcstat("pr", "200");	
		quest::modifynpcstat("max_hit", "1950");
		quest::modifynpcstat("min_hit", "715");	
	}
	if($hpevent == 60) {
		quest::setnexthpevent(50);
		quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a mystical word of power and is suddenly surrrounded by a magical glowing aura.");
		quest::modifynpcstat("max_hit", "1800");
		quest::modifynpcstat("min_hit", "660");		
		quest::modifynpcstat("mr", "500");
		quest::modifynpcstat("fr", "500");
		quest::modifynpcstat("cr", "500");
		quest::modifynpcstat("dr", "500");
		quest::modifynpcstat("pr", "500");
	}
	if ($hpevent == 50) {
		quest::setnexthpevent(40);
		quest::spawn2(126375,0,0,-88,886,178,384); # a_devious_guardian_jokester
		quest::spawn2(126378,0,0,-157,886,178,128); # a_charming_guardian_jester
		quest::spawn2(126377,0,0,-127,840,178,0); # a_dazed_guardian_jester
		quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a mystical word of power and suddenly his muscles bulge with incomprehensible strength.");
		quest::modifynpcstat("mr", "144");
		quest::modifynpcstat("fr", "144");
		quest::modifynpcstat("cr", "144");		
		quest::modifynpcstat("pr", "144");
		quest::modifynpcstat("dr", "144");	
		quest::modifynpcstat("max_hit", "1950");
		quest::modifynpcstat("min_hit", "715");	
	}
 	if($hpevent == 40) {
		quest::setnexthpevent(30);
		quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a string of mystical words and is suddenly surrounded by a magical glowing aura and his skin takes on a rock like appearance.");
		quest::modifynpcstat("min_hit", "660");
		quest::modifynpcstat("max_hit", "1800");
		quest::modifynpcstat("ac", "1587");
		quest::modifynpcstat("mr", "500");
		quest::modifynpcstat("fr", "500");
		quest::modifynpcstat("cr", "500");
		quest::modifynpcstat("dr", "500");
		quest::modifynpcstat("pr", "500");
	}
	if($hpevent == 30) {
		quest::setnexthpevent(20);
		quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a string of mystical words and is suddenly surrounded by a magical glowing aura and his attacks become a blur as he launches into a quickened attack routine.");
		quest::modifynpcstat("ac", "1087");
		quest::modifynpcstat("attack_delay", "8");
		quest::modifynpcstat("mr", "500");
		quest::modifynpcstat("pr", "500");
		quest::modifynpcstat("pr", "500");
		quest::modifynpcstat("pr", "500");
		quest::modifynpcstat("pr", "500");	
	}
	if ($hpevent == 20) {
		quest::setnexthpevent(10);
		quest::spawn2(126377,0,0,-88,886,178,384); # a_dazed_guardian_jester
		quest::spawn2(126378,0,0,-157,886,178,128); # a_charming_guardian_jester
		quest::spawn2(126377,0,0,-146,840,178,0); # a_dazed_guardian_jester
		quest::spawn2(126377,0,0,-110,840,178,0); # a_dazed_guardian_jester
		quest::spawn2(126375,0,0,-127,840,178,0); # a_devious_guardian_jokester
		quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a string of mystical words and is suddenly surrounded by a magical glowing aura and his muscles bulge with incomprehensible strength. ");
		quest::modifynpcstat("attack_delay", "12");
		quest::modifynpcstat("max_hit", "1950");
		quest::modifynpcstat("min_hit", "715");	
	}
 	if($hpevent == 10) {
		quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a string of mystical words and suddenly his skin takes on a rock like apppearance and his muscles bulge with incomprehensible strength.");
		quest::modifynpcstat("ac", "1587");
		quest::modifynpcstat("mr", "144");
		quest::modifynpcstat("fr", "144");
		quest::modifynpcstat("cr", "144");
		quest::modifynpcstat("dr", "144");
		quest::modifynpcstat("pr", "144");
	}
}

sub EVENT_TIMER {
	if($timer eq "timeup") {
		quest::depop();
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::stoptimer("engaged");
	quest::signal(126375,10); # NPC: a_devious_guardian_jokester
	quest::signal(126376,10); # NPC: a_tricky_guardian_jester
	quest::signal(126377,10); # NPC: a_dazed_guardian_jester
	quest::signal(126378,10); # NPC: a_charming_guardian_jester

	my $killer = $entity_list->GetClientByID($killer_id);   

    if ($killer && int(rand(100)) == 0) {
        plugin::AddTitleFlag(204);
    }
}

