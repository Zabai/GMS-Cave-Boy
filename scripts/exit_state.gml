/// exit_state()

if(image_alpha > 0) image_alpha -= .25;
else {
    if(room != room_last) room_goto_next();
    else {
        // Calculate Score
        score = obj_playerStats.shappires;
        
        // Open highscores
        ini_open("settings.ini");
        obj_playerStats.highscore = ini_read_real("Score", "Highscore", 0);
        
        // New Highscore
        if(score > obj_playerStats.highscore) {
            obj_playerStats.highscore = score;
            ini_write_real("Score", "Highscore", obj_playerStats.highscore);
        }
        
        // Close ini
        ini_close();
        
        room_goto(rm_highscore);
    }
}
