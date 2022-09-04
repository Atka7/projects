package nber.zsoze.nberenergydrink.ui.home;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import nber.zsoze.nberenergydrink.R;


public class HomeFragment extends Fragment {

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {

        View view = inflater.inflate(R.layout.fragment_home, container, false);

        return view;
    }

    public void onViewCreated(View view, Bundle savedInstaceState) {
        super.onViewCreated(view, savedInstaceState);
        String[] nameList = {"NBER ENERGY DRINK", "NBER ENERGY DRINK pulóver", "NBER ENERGY DRINK hűtő", "NBER ENERGY DRINK hűtő"};
        String[] soundList = {"“Csapd ki Te is, ha vagány vagy!”", "A pulóverhez 2db ajándék NBER energiaitalt is kapsz.", "Üvegajtós hűtővitrin ventilációs hűtéssel,", "Üvegajtós hűtővitrin ventilációs hűtéssel,"};
        int[] kepek = {R.drawable.item1, R.drawable.item2, R.drawable.item3, R.drawable.item3};

        ListView listView = view.findViewById(R.id.ListView);

        ArrayAdapter<String> listViewAdapter = new ArrayAdapter<String>(getActivity(), android.R.layout.simple_list_item_1, nameList);
        listView.setAdapter(listViewAdapter);

        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                if (i == 0) {
                    web("https://leet.hu/termek/zsozeatya-nber-energy-drink/");
                }
                if (i == 1) {
                    web("https://leet.hu/termek/zsozeatya-nber-energy-drink-pulover/");
                }
                if (i == 2) {
                    web("https://leet.hu/termek/zsozeatya-nber-energy-drink-huto/");
                }
            }
        });
    }

    static class listViewAdapter extends ArrayAdapter<String> {

        Context context;
        String[] rnameList;
        String[] rsoundList;
        int[] rkepek;

        listViewAdapter(Context context, String[] name, String[] sound, int[] kep) {
            super(context, R.layout.row_items, R.id.ListView_Text1, name);
            this.context = context;
            this.rnameList = name;
            this.rsoundList = sound;
            this.rkepek = kep;
        }

        @NonNull
        @Override
        public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
            LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            @SuppressLint("ViewHolder") View row = layoutInflater.inflate(R.layout.row_items, parent, false);
            ImageView kepek = row.findViewById(R.id.ListView_Image);
            TextView name = row.findViewById(R.id.ListView_Text1);
            TextView sound = row.findViewById(R.id.ListView_Text2);

            kepek.setImageResource(rkepek[position]);
            name.setText(rnameList[position]);
            sound.setText(rsoundList[position]);

            return row;
        }
    }

    public void web(String url) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        startActivity(intent);
    }
}
