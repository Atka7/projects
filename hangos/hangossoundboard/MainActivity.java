package soundboard.hangos.hangossoundboard;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.renderscript.Sampler;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.MobileAds;

public class MainActivity extends AppCompatActivity {

    androidx.appcompat.widget.Toolbar toolbar;

    Button playLaci, playC, playOthers, playKozos;

    int number = 0;

    public int soundSelection;
    MediaPlayer mp;

    private AdView ad;
    private InterstitialAd Iad;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        MobileAds.initialize(this,"ca-app-pub-5709100346637196~9057088281");

        ad = (AdView) findViewById(R.id.ad_view_main);

        AdRequest adRequest = new AdRequest.Builder().build();
        ad.loadAd(adRequest);

        Iad = new InterstitialAd(this);
        Iad.setAdUnitId("ca-app-pub-5709100346637196/8647693048");
        AdRequest adRequest2 = new AdRequest.Builder().build();
        Iad.loadAd(adRequest2);

        //----------------------------------------Laci--------------------------------------------

        toolbar = (androidx.appcompat.widget.Toolbar) findViewById(R.id.toolbar_main);
        setSupportActionBar(toolbar);

       // final TextView szint = (TextView) findViewById(R.id.szint);
       // final TextView onpush = (TextView) findViewById(R.id.number_push);

        final Spinner laciSpinner = (Spinner) findViewById(R.id.spinner_laci);
        ArrayAdapter<String> laciAdapter= new ArrayAdapter<String>(MainActivity.this,
                android.R.layout.simple_list_item_1, getResources().getStringArray(R.array.name_laci));
        laciAdapter.setDropDownViewResource(android.R.layout.simple_dropdown_item_1line);
        laciSpinner.setAdapter(laciAdapter);

        playLaci = (Button) findViewById(R.id.do_laci);

                laciSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                    @Override
                    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                        switch (position){
                            case 0:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.alkohol);
                                        mp.start();
                                    }
                                });
                                break;
                            case 1:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.alvas);
                                        mp.start();
                                    }
                                });
                                break;
                            case 2:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.becsuletes);
                                        mp.start();
                                    }
                                });
                                break;
                            case 3:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.beepitett);
                                        mp.start();
                                    }
                                });
                                break;
                            case 4:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.bezartsag);
                                        mp.start();
                                    }
                                });
                                break;
                            case 5:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.box);
                                        mp.start();
                                    }
                                });
                                break;
                            case 6:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.busz);
                                        mp.start();
                                    }
                                });
                                break;
                            case 7:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.csoro);
                                        mp.start();
                                    }
                                });
                                break;
                            case 8:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.csunya);
                                        mp.start();
                                    }
                                });
                                break;
                            case 9:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.daru);
                                        mp.start();
                                    }
                                });
                                break;
                            case 10:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.de);
                                        mp.start();
                                    }
                                });
                                break;
                            case 11:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.egyedul);
                                        mp.start();
                                    }
                                });
                                break;
                            case 12:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.eso);
                                        mp.start();
                                    }
                                });
                                break;
                            case 13:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.ezaz);
                                        mp.start();
                                    }
                                });
                                break;
                            case 14:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.fazok);
                                        mp.start();
                                    }
                                });
                                break;
                            case 15:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.faztunk);
                                        mp.start();
                                    }
                                });
                                break;
                            case 16:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.feher);
                                        mp.start();
                                    }
                                });
                                break;
                            case 17:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.finom);
                                        mp.start();
                                    }
                                });
                                break;
                            case 18:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.fodrasz);
                                        mp.start();
                                    }
                                });
                                break;
                            case 19:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.gazdag);
                                        mp.start();
                                    }
                                });
                                break;
                            case 20:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.gregi_igen);
                                        mp.start();
                                    }
                                });
                                break;
                            case 21:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.hangos);
                                        mp.start();
                                    }
                                });
                                break;
                            case 22:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.haz);
                                        mp.start();
                                    }
                                });
                                break;
                            case 23:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.hideg);
                                        mp.start();
                                    }
                                });
                                break;
                            case 24:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.hires);
                                        mp.start();
                                    }
                                });
                                break;
                            case 25:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.hires_2);
                                        mp.start();
                                    }
                                });
                                break;
                            case 26:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.husvet);
                                        mp.start();
                                    }
                                });
                                break;
                            case 27:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.izmos);
                                        mp.start();
                                    }
                                });
                                break;
                            case 28:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.izmos_2);
                                        mp.start();
                                    }
                                });
                                break;
                            case 29:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.izom);
                                        mp.start();
                                    }
                                });
                                break;
                            case 30:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.karacsony);
                                        mp.start();
                                    }
                                });
                                break;
                            case 31:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.kesudio);
                                        mp.start();
                                    }
                                });
                                break;
                            case 32:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.kisgyerek);
                                        mp.start();
                                    }
                                });
                                break;
                            case 33:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.korgos);
                                        mp.start();
                                    }
                                });
                                break;
                            case 34:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.korona);
                                        mp.start();
                                    }
                                });
                                break;
                            case 35:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.kosar);
                                        mp.start();
                                    }
                                });
                                break;
                            case 36:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.kubu);
                                        mp.start();
                                    }
                                });
                                break;
                            case 37:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.maki);
                                        mp.start();
                                    }
                                });
                                break;
                            case 38:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.manuel);
                                        mp.start();
                                    }
                                });
                                break;
                            case 39:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.maradjanak);
                                        mp.start();
                                    }
                                });
                                break;
                            case 40:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.napora);
                                        mp.start();
                                    }
                                });
                                break;
                            case 41:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.negyes);
                                        mp.start();
                                    }
                                });
                                break;
                            case 42:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.neumann);
                                        mp.start();
                                    }
                                });
                                break;
                            case 43:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.nincs);
                                        mp.start();
                                    }
                                });
                                break;
                            case 44:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.oszman);
                                        mp.start();
                                    }
                                });
                                break;
                            case 45:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.promo);
                                        mp.start();
                                    }
                                });
                                break;
                            case 46:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.reakcio);
                                        mp.start();
                                    }
                                });
                                break;
                            case 47:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.roland);
                                        mp.start();
                                    }
                                });
                                break;
                            case 48:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.roli);
                                        mp.start();
                                    }
                                });
                                break;
                            case 49:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.sajtos);
                                        mp.start();
                                    }
                                });
                                break;
                            case 50:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.siros);
                                        mp.start();
                                    }
                                });
                                break;
                            case 51:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.special_train);
                                        mp.start();
                                    }
                                });
                                break;
                            case 52:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.strepsils);
                                        mp.start();
                                    }
                                });
                                break;
                            case 53:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.suttogos);
                                        mp.start();
                                    }
                                });
                                break;
                            case 54:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.szellem);
                                        mp.start();
                                    }
                                });
                                break;
                            case 55:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.szingli);
                                        mp.start();
                                    }
                                });
                                break;
                            case 56:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.tej);
                                        mp.start();
                                    }
                                });
                                break;
                            case 57:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.urhajos);
                                        mp.start();
                                    }
                                });
                                break;
                            case 58:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.virtualis);
                                        mp.start();
                                    }
                                });
                                break;
                            case 59:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.vizes);
                                        mp.start();
                                    }
                                });
                                break;
                            case 60:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.wc);
                                        mp.start();
                                    }
                                });
                                break;
                            case 61:
                                playLaci.setOnClickListener(new View.OnClickListener() {
                                    @Override
                                    public void onClick(View v) {
                                        mp = MediaPlayer.create(MainActivity.this, R.raw.zajos);
                                        mp.start();
                                    }
                                });
                                break;
                        }
                    }

                    @Override
                    public void onNothingSelected(AdapterView<?> parent) {

                    }
                });

        //-------------------------------------C----------------------------------------------------

        Spinner cSpinner = (Spinner) findViewById(R.id.spinner_c);
        ArrayAdapter<String> cAdapter= new ArrayAdapter<String>(MainActivity.this,
                android.R.layout.simple_list_item_1, getResources().getStringArray(R.array.name_c));
        cAdapter.setDropDownViewResource(android.R.layout.simple_dropdown_item_1line);
        cSpinner.setAdapter(cAdapter);

        playC = (Button) findViewById(R.id.do_c);

        cSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                switch (position){
                    case 0:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_3_kilo_rizsa);
                                mp.start();
                            }
                        });
                        break;
                    case 1:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_alkoholista);
                                mp.start();
                            }
                        });
                        break;
                    case 2:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_budos_van);
                                mp.start();
                            }
                        });
                        break;
                    case 3:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_ce);
                                mp.start();
                            }
                        });
                        break;
                    case 4:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_eminem);
                                mp.start();
                            }
                        });
                        break;
                    case 5:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_en_is);
                                mp.start();
                            }
                        });
                        break;
                    case 6:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_felallithato);
                                mp.start();
                            }
                        });
                        break;
                    case 7:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_fodlako);
                                mp.start();
                            }
                        });
                        break;
                    case 8:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_halloween);
                                mp.start();
                            }
                        });
                        break;
                    case 9:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_hazug);
                                mp.start();
                            }
                        });
                        break;
                    case 10:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_hivj_fel);
                                mp.start();
                            }
                        });
                        break;
                    case 11:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_ikea);
                                mp.start();
                            }
                        });
                        break;
                    case 12:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_iranytu);
                                mp.start();
                            }
                        });
                        break;
                    case 13:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_itthon);
                                mp.start();
                            }
                        });
                        break;
                    case 14:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_kifli);
                                mp.start();
                            }
                        });
                        break;
                    case 15:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_kiraly);
                                mp.start();
                            }
                        });
                        break;
                    case 16:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_kussolos);
                                mp.start();
                            }
                        });
                        break;
                    case 17:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_laszlo);
                                mp.start();
                            }
                        });
                        break;
                    case 18:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_lebegos);
                                mp.start();
                            }
                        });
                        break;
                    case 19:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_nekem_nem);
                                mp.start();
                            }
                        });
                        break;
                    case 20:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_nem);
                                mp.start();
                            }
                        });
                        break;
                    case 21:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_oktatas);
                                mp.start();
                            }
                        });
                        break;
                    case 22:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_otthon);
                                mp.start();
                            }
                        });
                        break;
                    case 23:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_rubophen);
                                mp.start();
                            }
                        });
                        break;
                    case 24:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_szakacs);
                                mp.start();
                            }
                        });
                        break;
                    case 25:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_szar);
                                mp.start();
                            }
                        });
                        break;
                    case 26:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_szaraz);
                                mp.start();
                            }
                        });
                        break;
                    case 27:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_szellos);
                                mp.start();
                            }
                        });
                        break;
                    case 28:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_szivoszal);
                                mp.start();
                            }
                        });
                        break;
                    case 29:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_troli);
                                mp.start();
                            }
                        });
                        break;
                    case 30:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_video);
                                mp.start();
                            }
                        });
                        break;
                    case 31:
                        playC.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.c_zuros);
                                mp.start();
                            }
                        });
                        break;

                }
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });

        //----------------------------------Others--------------------------------------------------

        Spinner othersSpinner = (Spinner) findViewById(R.id.spinner_others);
        ArrayAdapter<String> othersAdapter= new ArrayAdapter<String>(MainActivity.this,
                android.R.layout.simple_list_item_1, getResources().getStringArray(R.array.name_others));
        othersAdapter.setDropDownViewResource(android.R.layout.simple_dropdown_item_1line);
        othersSpinner.setAdapter(othersAdapter);

        playOthers = (Button) findViewById(R.id.do_others);

        othersSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                switch (position){
                    case 0:
                        playOthers.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.o_csrevisz_szkatt);
                                mp.start();
                            }
                        });
                        break;
                    case 1:
                        playOthers.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.o_hangos);
                                mp.start();
                            }
                        });
                        break;
                    case 2:
                        playOthers.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.o_haz);
                                mp.start();
                            }
                        });
                        break;
                    case 3:
                        playOthers.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.o_hazug);
                                mp.start();
                            }
                        });
                        break;
                    case 4:
                        playOthers.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.o_kiraly);
                                mp.start();
                            }
                        });
                        break;
                    case 5:
                        playOthers.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.o_laz);
                                mp.start();
                            }
                        });
                        break;
                    case 6:
                        playOthers.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.o_magas);
                                mp.start();
                            }
                        });
                        break;
                    case 7:
                        playOthers.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.o_pityogos);
                                mp.start();
                            }
                        });
                        break;
                    case 8:
                        playOthers.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.o_snoop_dogg);
                                mp.start();
                            }
                        });
                        break;
                    case 9:
                        playOthers.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.o_sonder_zug);
                                mp.start();
                            }
                        });
                        break;
                    case 10:
                        playOthers.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.o_sporolos);
                                mp.start();
                            }
                        });
                        break;
                    case 11:
                        playOthers.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.o_vagany);
                                mp.start();
                            }
                        });
                        break;
                    case 12:
                        playOthers.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.o_virus);
                                mp.start();
                            }
                        });
                        break;
                    case 13:
                        playOthers.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.o_wc);
                                mp.start();
                            }
                        });
                        break;

                }
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });

        //---------------------------------Kozos----------------------------------------------------

        Spinner kozosSpinner = (Spinner) findViewById(R.id.spinner_kozos);
        ArrayAdapter<String> kozosAdapter= new ArrayAdapter<String>(MainActivity.this,
                android.R.layout.simple_list_item_1, getResources().getStringArray(R.array.name_kozos));
        kozosAdapter.setDropDownViewResource(android.R.layout.simple_dropdown_item_1line);
        kozosSpinner.setAdapter(kozosAdapter);

        playKozos = (Button) findViewById(R.id.do_kozos);

        kozosSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                switch (position){
                    case 0:
                        playKozos.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.k_alacsony);
                                mp.start();
                            }
                        });
                        break;
                    case 1:
                        playKozos.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.k_kalapacs);
                                mp.start();
                            }
                        });
                        break;
                    case 2:
                        playKozos.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                mp = MediaPlayer.create(MainActivity.this, R.raw.k_meggazdagabb_mi_a_fasz);
                                mp.start();
                            }
                        });
                        break;

                }
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });


        //------------------------------------------------------------------------------------------

    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem)
    {
        if(menuItem.getItemId() == R.id.about){
            Intent intent = new Intent(MainActivity.this, About.class);
            startActivity(intent);
            return false;
        }
        else if(menuItem.getItemId()== R.id.discord){
            clicked_btndc("https://discord.gg/udRktbb");
            return false;
        }
        else if(menuItem.getItemId()== R.id.rate){
            clicked_btnrate("https://play.google.com/store/apps/details?id=soundboard.hangos.hangossoundboard");
            return false;
        }
        else if(menuItem.getItemId()== R.id.about_app){
            Intent intent = new Intent(MainActivity.this, AboutTheApp.class);
            startActivity(intent);
            return false;
        }
        else if(menuItem.getItemId()== R.id.update){
            clicked_btnrate("https://discord.gg/W2MA6WN");
            return false;
        }
        else if(menuItem.getItemId()== R.id.noads){
            clicked_btnrate("https://play.google.com/store/apps/details?id=hangos.soundboard.hangossoundboardnoads");
            return false;
        }
        else if(menuItem.getItemId()== R.id.ads_view){

            if(Iad.isLoaded())
                Iad.show();
            else
                Toast.makeText(this,"A reklám még nem töltött be.", Toast.LENGTH_SHORT).show();

            return false;
        }

        return super.onOptionsItemSelected(menuItem);
    }

    public void clicked_btndc(String url){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        startActivity(intent);
    }

    public void clicked_btnrate(String url){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        startActivity(intent);
    }

}
