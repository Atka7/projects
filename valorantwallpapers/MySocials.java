package game.valorant.valorantwallpapers;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;

public class MySocials extends AppCompatActivity {

    androidx.appcompat.widget.Toolbar toolbar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_my_social);

        toolbar = (androidx.appcompat.widget.Toolbar) findViewById(R.id.toolbar_social);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        findViewById(R.id.atka_dc).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clicked_btntwitch("https://discord.gg/W2MA6WN");
            }
        });

        findViewById(R.id.atka_insta).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clicked_btntwitch("https://www.instagram.com/atkaaaaaaa/");
            }
        });

        findViewById(R.id.atka_twitch).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clicked_btntwitch("https://www.twitch.tv/atkaaaa");
            }
        });
    }

    public void clicked_btntwitch(String url){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        startActivity(intent);
    }
}
