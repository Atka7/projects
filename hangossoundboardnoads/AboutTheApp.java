package hangos.soundboard.hangossoundboardnoads;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

public class AboutTheApp extends AppCompatActivity {

    androidx.appcompat.widget.Toolbar toolbar;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_about_the_app);

        toolbar = (androidx.appcompat.widget.Toolbar) findViewById(R.id.toolbar_about_app);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }
}
