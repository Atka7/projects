package nber.zsoze.nberenergydrink.ui.drinks;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;


import nber.zsoze.nberenergydrink.Main3Activity;
import nber.zsoze.nberenergydrink.R;
import nber.zsoze.nberenergydrink.drinks.Drink1;

public class DrinkFragment extends Fragment {

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.activity_drink_fragment, container, false);

        ImageView drink1 = view.findViewById(R.id.drink1);
        drink1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(), Drink1.class);
                startActivity(intent);
            }
        });

        return view;

    }


}
