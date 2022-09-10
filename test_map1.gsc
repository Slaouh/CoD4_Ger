#include maps\_utility;
#include common_scripts\utility;
#include maps\_anim;
#using_animtree( "generic_human" );

main()
{
    maps\_load::main();

    thread setup_introscreen();
    thread setup_sequence();
}

setup_introscreen()
{
    wait 1;
    lines = [];
    lines[ lines.size ] = &"TEST_MAP1_LINE1";
    lines[ "date" ]     = &"TEST_MAP1_LINE2";
    lines[ lines.size ] = &"TEST_MAP1_LINE3";
    lines[ lines.size ] = &"TEST_MAP1_LINE4";
    lines[ lines.size ] = &"TEST_MAP1_LINE5";
     maps\_introscreen::introscreen_feed_lines( lines );
}

setup_sequence()
{
    trigg_door = getent( "trigg_door" , "targetname" );
    trigg_door sethintstring(&"TEST_MAP1_TRIGG_OPEN_DOOR");
    trigg_door waittill("trigger");
    trigg_door trigger_off();

    door1 = getent( "door1" , "targetname" );
    door1 rotateyaw( 160, 2, 1, 1 );
}
