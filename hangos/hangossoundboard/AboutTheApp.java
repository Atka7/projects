package soundboard.hangos.hangossoundboard;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.widget.TextView;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.MobileAds;

public class AboutTheApp extends AppCompatActivity {

    androidx.appcompat.widget.Toolbar toolbar;

    private AdView ad;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_about_the_app);

        MobileAds.initialize(this,"ca-app-pub-5709100346637196~9057088281");

        ad = (AdView) findViewById(R.id.ad_view_abouttheapp);

        AdRequest adRequest = new AdRequest.Builder().build();
        ad.loadAd(adRequest);

        toolbar = (androidx.appcompat.widget.Toolbar) findViewById(R.id.toolbar_about_app);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        TextView t1 = (TextView) findViewById(R.id.atka_dc);
        t1.setMovementMethod(LinkMovementMethod.getInstance());
        TextView t2 = (TextView) findViewById(R.id.atka_insta);
        t2.setMovementMethod(LinkMovementMethod.getInstance());
        TextView t3 = (TextView) findViewById(R.id.atka_twitch);
        t3.setMovementMethod(LinkMovementMethod.getInstance());
    }
}
