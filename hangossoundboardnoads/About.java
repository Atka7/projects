package hangos.soundboard.hangossoundboardnoads;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

import hangos.soundboard.hangossoundboardnoads.R;

public class About extends AppCompatActivity {

    androidx.appcompat.widget.Toolbar toolbar;

    ImageView laciTwitch, laciInsta, laciTiktok, laciYoutube, laciDiscord;
    ImageView cInsta, cTiktok, cYoutube;
    ImageView endyInsta, endyTiktok, endyYoutube;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_about);

        toolbar = (androidx.appcompat.widget.Toolbar) findViewById(R.id.toolbar_about);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        //-------------------------------------------LACI------------------------

        findViewById(R.id.ab_laci_twitch).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clicked_btn("https://twitch.tv/jeffan");
            }
        });
        findViewById(R.id.ab_laci_instagram).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clicked_btn("https://instagram.com/jeffanit_");
            }
        });
        findViewById(R.id.ab_laci_tiktok).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clicked_btn("https://tiktok.com/@jeffanit_");
            }
        });
        findViewById(R.id.ab_laci_yt).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clicked_btn("https://youtube.com/bodislaszlo");
            }
        });
        findViewById(R.id.ab_laci_dc).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clicked_btn("https://discord.gg/udRktbb");
            }
        });

        //-------------------------------------------C------------------------

        findViewById(R.id.ab_c_insta).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clicked_btn("https://instagram.com/dozsa.roland");
            }
        });
        findViewById(R.id.ab_c_tiktok).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clicked_btn("https://tiktok.com/@dozsa.roland");
            }
        });
        findViewById(R.id.ab_c_yt).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clicked_btn("https://youtube.com/trogerlegy");
            }
        });

        //-------------------------------------------Endy------------------------

        findViewById(R.id.ab_endy_insta).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clicked_btn("https://youtube.com/trogerlegy");
            }
        });
        findViewById(R.id.ab_endy_tiktok).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clicked_btn("https://youtube.com/trogerlegy");
            }
        });
        findViewById(R.id.ab_endy_yt).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clicked_btn("https://youtube.com/trogerlegy");
            }
        });

    }

    public void clicked_btn(String url){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        startActivity(intent);
    }
}
