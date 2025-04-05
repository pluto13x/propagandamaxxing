with oStatsWindow {
	optionValue[0] += iRandomEvents.events[oPopup.event][$ "budget"];
    optionValue[1] += iRandomEvents.events[oPopup.event][$ "wealth"];
	optionValue[2] += iRandomEvents.events[oPopup.event][$ "trust"]
	optionValue[3] += iRandomEvents.events[oPopup.event][$ "frustration"]
	optionValue[4] += iRandomEvents.events[oPopup.event][$ "contentment"]
}

instance_destroy(oPopup);
instance_destroy(oExit);
instance_destroy(oYes);
instance_destroy(oNo);

