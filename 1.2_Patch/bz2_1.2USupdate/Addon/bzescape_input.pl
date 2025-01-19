#
# MOVEMENT CONTROLS
#

# STRAFE
@data = (

	#
	# movement page
	#
	'Movement#4',

	# strafe block
	'Strafe#3#0#0#255#115',
	'strafe#1#Strafe (Analog)',
	'strafe_right#0#Strafe Right',
	'strafe_left#0#Strafe Left',

	# throttle block
	'Throttle#3#0#135#255#115',
	'throttle#1#Throttle (Analog)',
	'throttle_up#0#Throttle Forward',
	'throttle_down#0#Throttle Reverse',

	# steer block
	'Steer#3#270#0#255#115',
	'steer#1#Steer (Analog)',
	'steer_right#0#Steer Right',
	'steer_left#0#Steer Left',

	# pitch block
	'Pitch#3#270#135#255#115',
	'pitch#1#Pitch (Analog)',
	'pitch_up#0#Pitch Up',
	'pitch_down#0#Pitch Down',

	#
	# control page
	#
	'Control#2',

	# weapon block
	'Weapon#5#0#0#255#170',
	'weapon_next#0#Next Weapon',
	'weapon_prev#0#Previous Weapon',
	'weapon_fire#0#Fire Weapon',
	'weapon_special#0#Special Weapon',
	'frontal_target#0#Target',

	# control block
	'Control#5#270#0#255#170',
	'jump#0#Jump',
	'deploy#0#Deploy',
	'lights#0#Lights',
	'eject#0#Eject',
	'abandon#0#Abandon',

	#
	# interface page
	#
	'Interface#2',

	# interface block 1
	'Interface1#5#0#0#255#170',
	'cmd_delete#0#Delete Nav',
	'cmd_switch#0#Switch Roles',
	'cmd_multi#0#Multi-Select',
	'center_player#0#Center Player',
	'center_recycler#0#Center Recycler',

	# interface block 2
	'Interface2#4#270#0#255#135',
	'show_objectives#0#Show Objectives',
	'show_information#0#Show Information',
	'radar_mode#0#Toggle Radar',
	'nav_beacon#0#Create Nav',

	#
	# command page
	#
	'Command#4',

	# command block 1
	'Command1#2#0#0#255#65',
	'menu_action#0#Menu Action',
	'mode_select_0#0#Menu Extra',

	# command block 2
	'Command2#1#270#0#255#30',
	'menu_cancel#0#Menu Cancel',

	# command block 3
	'Command3#5#0#85#255#170',
	'mode_select_1#0#Menu 1',
	'mode_select_2#0#Menu 2',
	'mode_select_3#0#Menu 3',
	'mode_select_4#0#Menu 4',
	'mode_select_5#0#Menu 5',

	# command block 4
	'Command4#5#270#85#255#170',
	'mode_select_6#0#Menu 6',
	'mode_select_7#0#Menu 7',
	'mode_select_8#0#Menu 8',
	'mode_select_9#0#Menu 9',
	'mode_select_10#0#Menu 10',

	#
	# camera page
	#
	'Camera#2',

	# camera block 1
	'Camera1#4#0#0#255#135',
	'track_pitch_plus#0#Pitch Up',
	'track_pitch_minus#0#Pitch Down',
	'track_yaw_plus#0#Yaw Right',
	'track_yaw_minus#0#Yaw Left',

	# camera block 2
	'Camera2#3#270#0#255#100',
	'zoom_factor_plus#0#Zoom In',
	'zoom_factor_minus#0#Zoom Out',
	'zoom_factor_reset#0#Zoom Reset'
);


#
# FILE HEADER TEXT
#
$filehead = <<'END OF BLOCK';
// ========================
// BATTLEZONE ESCAPE SCREEN
// (INPUT OPTIONS PAGE)
// ========================

Exec("bzescape_input_default.cfg");

// create page variable
ConfigureVarSys()
{
	CreateInteger("options.input.page", 0);
	SetIntegerRange("options.input.page", 0, 5);
}

//
// CREATE INPUT CONFIGURATION PAGE
//
CreateControl("EscapeInput", "STATIC")
{
	Geom("HCENTRE", "VCENTRE");
	Position(0, -145);
	Size(465, 5);
	BorderSize(10);
	BevelSize(5);
	TabSize(150, 10);
	Style("OUTLINE");
	Title("Input Options");
	TitleFont("MEDIUM");

	CreateControl("Default", "BUTTON")
	{
		ColorGroup("LISTBOX");
		Position(0, 0);
		Size(65, 5);
		BorderSize(5);
		BevelSize(3);
		Style("ROLLOVER", "RADIO");
		Font("SMALL");
		Text("Default");
		UseVar("options.input.page");
		Value(0);

		NotifyParent("Button::Select", "Default");
	}

	CreateControl("Movement", "BUTTON")
	{
		ColorGroup("LISTBOX");
		Position(80, 0);
		Size(65, 5);
		BorderSize(5);
		BevelSize(3);
		Style("ROLLOVER", "RADIO");
		Font("SMALL");
		Text("Movement");
		UseVar("options.input.page");
		Value(1);

		NotifyParent("Button::Select", "Movement");
	}

	CreateControl("Control", "BUTTON")
	{
		ColorGroup("LISTBOX");
		Position(160, 0);
		Size(65, 5);
		BorderSize(5);
		BevelSize(3);
		Style("ROLLOVER", "RADIO");
		Font("SMALL");
		Text("Control");
		UseVar("options.input.page");
		Value(2);

		NotifyParent("Button::Select", "Control");
	}

	CreateControl("Interface", "BUTTON")
	{
		ColorGroup("LISTBOX");
		Position(240, 0);
		Size(65, 5);
		BorderSize(5);
		BevelSize(3);
		Style("ROLLOVER", "RADIO");
		Font("SMALL");
		Text("Interface");
		UseVar("options.input.page");
		Value(3);

		NotifyParent("Button::Select", "Interface");
	}

	CreateControl("Command", "BUTTON")
	{
		ColorGroup("LISTBOX");
		Position(320, 0);
		Size(65, 5);
		BorderSize(5);
		BevelSize(3);
		Style("ROLLOVER", "RADIO");
		Font("SMALL");
		Text("Command");
		UseVar("options.input.page");
		Value(4);

		NotifyParent("Button::Select", "Command");
	}

	CreateControl("Camera", "BUTTON")
	{
		ColorGroup("LISTBOX");
		Position(400, 0);
		Size(65, 5);
		BorderSize(5);
		BevelSize(3);
		Style("ROLLOVER", "RADIO");
		Font("SMALL");
		Text("Camera");
		UseVar("options.input.page");
		Value(5);

		NotifyParent("Button::Select", "Camera");
	}

	OnEvent("Control::Activate")
	{
		Cmd("options.input.page 0");

		FadeIn("|InputDefault");
	}

	OnEvent("Control::Deactivate")
	{
		FadeOut("|InputDefault");
		FadeOut("|InputMovement");
		FadeOut("|InputControl");
		FadeOut("|InputInterface");
		FadeOut("|InputCommand");
		FadeOut("|InputCamera");
	}

	OnEvent("Default")
	{
		FadeOut("|InputMovement");
		FadeOut("|InputControl");
		FadeOut("|InputInterface");
		FadeOut("|InputCommand");
		FadeOut("|InputCamera");

		FadeIn("|InputDefault");
	}

	OnEvent("Movement")
	{
		FadeOut("|InputDefault");
		FadeOut("|InputControl");
		FadeOut("|InputInterface");
		FadeOut("|InputCommand");
		FadeOut("|InputCamera");

		FadeIn("|InputMovement");
	}

	OnEvent("Control")
	{
		FadeOut("|InputDefault");
		FadeOut("|InputMovement");
		FadeOut("|InputInterface");
		FadeOut("|InputCommand");
		FadeOut("|InputCamera");

		FadeIn("|InputControl");
	}

	OnEvent("Interface")
	{
		FadeOut("|InputDefault");
		FadeOut("|InputMovement");
		FadeOut("|InputControl");
		FadeOut("|InputCommand");
		FadeOut("|InputCamera");

		FadeIn("|InputInterface");
	}

	OnEvent("Command")
	{
		FadeOut("|InputDefault");
		FadeOut("|InputMovement");
		FadeOut("|InputControl");
		FadeOut("|InputInterface");
		FadeOut("|InputCamera");

		FadeIn("|InputCommand");
	}

	OnEvent("Camera")
	{
		FadeOut("|InputDefault");
		FadeOut("|InputMovement");
		FadeOut("|InputControl");
		FadeOut("|InputInterface");
		FadeOut("|InputCommand");

		FadeIn("|InputCamera");
	}
}
END OF BLOCK
$filehead =~ s/\n/\\n/g;
$filehead =~ s/\"/\\\"/g;


#
# PAGE HEADER
#
$pagehead = <<'END OF BLOCK';

CreateControl("Input${pagename}", "STATIC")
{
	Geom("HCENTRE", "VCENTRE");
	Style("OUTLINE");
	Pos(0, 20);
	Size(525, 250);
	BorderSize(10);
	BevelSize(5);
	TabSize(150, 10);
	Title("${pagename}");
	TitleFont("MEDIUM");
END OF BLOCK
$pagehead =~ s/\n/\\n/g;
$pagehead =~ s/\"/\\\"/g;


#
# BLOCK HEADER
#
$blockhead = <<'END OF BLOCK';

	CreateControl("${blockname}", "STATIC")
	{
		Style("TRANSPARENT");
		Position(${blockx}, ${blocky});
		Size(${blockw}, ${blockh});
END OF BLOCK
$blockhead =~ s/\n/\\n/g;
$blockhead =~ s/\"/\\\"/g;


#
# ANALOG BLOCK BODY
#
$blockanalog = <<'END OF BLOCK';

		CreateControl("${controltext}", "STATIC")
		{
			Style("TRANSPARENT");
			Position(0, ${controly});
			Size(255, 45);

			CreateControl("Title", "STATIC")
			{
				Position(0, 0);
				Size(255, 10);
				JustifyText("LEFT");
				Text("${controltext}");
				Font("MEDIUM");
				Style("TRANSPARENT");
			}

			CreateControl("Slider", "SLIDER")
			{
				ColorGroup("LISTBOX");
				Position(3, 18);
				Size(199, 4);
				BorderSize(3);
				BevelSize(3);
				Style("ROLLOVER");
				Cursor("Highlight");
				UseVar("inputbind.${controlid}.scale");
			}

			CreateControl("Level", "STATIC")
			{
				Position(205, 15);
				Size(50, 10);
				Style("TRANSPARENT");
				Font("SMALL");
				JustifyText("RIGHT");
				Text("%d0%%");
				UseVar("inputbind.${controlid}.scale");
			}

			CreateControl("Clear", "BUTTON")
			{
				ColorGroup("LISTBOX");
				Position(5, 35);
				Size(40, 5);
				BorderSize(5);
				BevelSize(3);
				Text("Clear");
				Font("SMALL");
				Style("ROLLOVER");
				NotifyParent("Button::Press", "Clear");
			}

			CreateControl("Bind", "BUTTON")
			{
				ColorGroup("LISTBOX");
				Position(60, 35);
				Size(40, 5);
				BorderSize(5);
				BevelSize(3);
				Text("Bind");
				Font("SMALL");
				Style("ROLLOVER");
				NotifyParent("Button::Press", "Bind");
			}

			CreateControl("Reverse1", "BUTTON")
			{
				ColorGroup("LISTBOX");
				Position(115, 35);
				Size(5, 5);
				BorderSize(5);
				BevelSize(3);
				Style("ROLLOVER");
				NotifyParent("Button::Press", "Reverse1");

				CreateControl("Sign", "STATIC")
				{
					Size(5, 5);
					Style("TRANSPARENT");
					Font("TINY");
					UseVar("inputbind.${controlid}.sign1");
				}
			}

			CreateControl("Value1", "STATIC")
			{
				ColorGroup("BACKGROUND");
				Position(130, 35);
				Size(45, 5);
				BorderSize(5);
				BevelSize(3);
				Font("TINY");
				JustifyText("LEFT");
				UseVar("inputbind.${controlid}.value1");
			}

			CreateControl("Reverse2", "BUTTON")
			{
				ColorGroup("LISTBOX");
				Position(190, 35);
				Size(5, 5);
				BorderSize(5);
				BevelSize(3);
				Style("ROLLOVER");
				NotifyParent("Button::Press", "Reverse2");

				CreateControl("Sign", "STATIC")
				{
					Size(5, 5);
					Style("TRANSPARENT");
					Font("TINY");
					UseVar("inputbind.${controlid}.sign2");
				}
			}

			CreateControl("Value2", "STATIC")
			{
				ColorGroup("BACKGROUND");
				Position(205, 35);
				Size(45, 5);
				BorderSize(5);
				BevelSize(3);
				Font("TINY");
				JustifyText("LEFT");
				UseVar("inputbind.${controlid}.value2");
			}

			OnEvent("Bind")
			{
				Cmd("inputbind.${controlid}.bind");
			}

			OnEvent("Clear")
			{
				Cmd("inputbind.${controlid}.clear");
			}

			OnEvent("Reverse1")
			{
				Cmd("inputbind.${controlid}.reverse1");
			}

			OnEvent("Reverse2")
			{
				Cmd("inputbind.${controlid}.reverse2");
			}
		}
END OF BLOCK
$blockanalog =~ s/\n/\\n/g;
$blockanalog =~ s/\"/\\\"/g;


#
# DISCRETE BLOCK BODY
#
$blockdiscrete = <<'END OF BLOCK';

		CreateControl("${controltext}", "STATIC")
		{
			Style("TRANSPARENT");
			Position(0, ${controly});
			Size(255, 30);

			CreateControl("Title", "STATIC")
			{
				Position(0, 0);
				Size(255, 10);
				JustifyText("LEFT");
				Text("${controltext}");
				Font("MEDIUM");
				Style("TRANSPARENT");
			}

			CreateControl("Clear", "BUTTON")
			{
				ColorGroup("LISTBOX");
				Position(5, 20);
				Size(40, 5);
				BorderSize(5);
				BevelSize(3);
				Text("Clear");
				Font("SMALL");
				Style("ROLLOVER");
				NotifyParent("Button::Press", "Clear");
			}

			CreateControl("Bind", "BUTTON")
			{
				ColorGroup("LISTBOX");
				Position(60, 20);
				Size(40, 5);
				BorderSize(5);
				BevelSize(3);
				Text("Bind");
				Font("SMALL");
				Style("ROLLOVER");
				NotifyParent("Button::Press", "Bind");
			}

			CreateControl("Value1", "STATIC")
			{
				ColorGroup("BACKGROUND");
				Position(115, 20);
				Size(60, 5);
				BorderSize(5);
				BevelSize(3);
				Font("TINY");
				JustifyText("LEFT");
				UseVar("inputbind.${controlid}.value1");
			}

			CreateControl("Value2", "STATIC")
			{
				ColorGroup("BACKGROUND");
				Position(190, 20);
				Size(60, 5);
				BorderSize(5);
				BevelSize(3);
				Font("TINY");
				JustifyText("LEFT");
				UseVar("inputbind.${controlid}.value2");
			}

			OnEvent("Bind")
			{
				Cmd("inputbind.${controlid}.bind");
			}

			OnEvent("Clear")
			{
				Cmd("inputbind.${controlid}.clear");
			}
		}
END OF BLOCK
$blockdiscrete =~ s/\n/\\n/g;
$blockdiscrete =~ s/\"/\\\"/g;


#
# BLOCK FOOTER
#
$blockfoot = <<'END OF BLOCK';

		OnEvent("Control::Activate")
		{
			Cmd("shell.background option_input2.tga");
		}
	}
END OF BLOCK
$blockfoot =~ s/\n/\\n/g;
$blockfoot =~ s/\"/\\\"/g;


#
# PAGE FOOTER
#
$pagefoot = <<'END OF BLOCK';
}
END OF BLOCK
$pagefoot =~ s/\n/\\n/g;
$pagefoot =~ s/\"/\\\"/g;


#
# FILE FOOTER
#
$filefoot = <<'END OF BLOCK';
END OF BLOCK
$filefoot =~ s/\n/\\n/g;
$filefoot =~ s/\"/\\\"/g;


#
# PRINT OUTPUT
#

# print file header
eval "print \"$filehead\"";

while ($#data > 0)
{
	# get page data
	($pagename, $pageblocks) = split('#', shift(@data));

	# print page header
	eval "print \"$pagehead\"";

	# for each page block...
	foreach $b (1 .. $pageblocks)
	{
		# get block data
		($blockname, $blockitems, $blockx, $blocky, $blockw, $blockh) = split('#', shift(@data));

		# print block header
		eval "print \"$blockhead\"";

		# clear control y position
		$controly = 0;

		# for each block item...
		foreach $i (1 .. $blockitems)
		{
			# get item data
			($controlid, $controltype, $controltext) = split('#', shift(@data));

			# if the control is analog...
			if ($controltype)
			{
				#print discrete block item
				eval "print \"$blockanalog\"";

				# advance control y position
				$controly += 50;
			}
			else
			{
				#print discrete block item
				eval "print \"$blockdiscrete\"";

				# advance control y position
				$controly += 35;
			}
		}

		# print block footer
		eval "print \"$blockfoot\"";
	}

	# print page footer
	eval "print\"$pagefoot\"";
}

# print file footer
eval "print\"$filefoot\"";
