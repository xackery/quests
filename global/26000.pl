sub EVENT_SPAWN {
  quest::settimer(1, 1200);
  quest::emote("rises from the corpse and stares around, as if waiting...");

  $npc->MoveTo($npc->GetX(), $npc->GetY(), $npc->FindGroundZ($npc->GetX(), $npc->GetY()));

  $npc->SetRace(quest::ChooseRandom(587, 588, 605));
  if ($npc->GetRace() == 587 || $npc->GetRace == 588) {
    $npc->SetGender(quest::ChooseRandom(0, 1));
  } else {
    $npc->SetGender(2);
  }
}

sub EVENT_SAY {
    my $flag_stage = $npc->GetEntityVariable("Stage-Name");
    my $flag_name  = $npc->GetEntityVariable("Flag-Name");

    if ($text =~ /hail/i) {
        if (plugin::IsSeasonal($client) || plugin::MultiClassingEnabled()) {
            if (!plugin::ValidProgInstance($zoneid, $instanceid, $instanceversion)) {      
                plugin::YellowText("You may only advance your progression within an instance.");          
                return;
            }
        }  
        plugin::set_subflag($client, $flag_stage, $flag_name);
    }
}

sub EVENT_TIMER {
    quest::emote("vanishes.");
    quest::depop();
}