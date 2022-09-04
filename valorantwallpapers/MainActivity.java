package game.valorant.valorantwallpapers;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;

import com.firebase.ui.database.FirebaseRecyclerAdapter;
import com.firebase.ui.database.FirebaseRecyclerOptions;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.squareup.picasso.Callback;
import com.squareup.picasso.NetworkPolicy;
import com.squareup.picasso.Picasso;

import game.valorant.valorantwallpapers.CategoryViewHolder.CategoryViewHolder;
import game.valorant.valorantwallpapers.Utils.Utils;
import game.valorant.valorantwallpapers.model.CategoryItem;
import game.valorant.valorantwallpapers.social.About;

public class MainActivity extends AppCompatActivity {

    RecyclerView recyclerView;
    DatabaseReference categoryBackgroundReference;
    FirebaseRecyclerOptions<CategoryItem> options;

    FirebaseRecyclerAdapter<CategoryItem, CategoryViewHolder> adapter;

    androidx.appcompat.widget.Toolbar toolbar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        toolbar = (androidx.appcompat.widget.Toolbar) findViewById(R.id.toolbar_main);
        setSupportActionBar(toolbar);

        recyclerView = (RecyclerView)findViewById(R.id.recyclerview);
        recyclerView.setHasFixedSize(true);
        toolbar.inflateMenu(R.menu.menu_main);

        categoryBackgroundReference = FirebaseDatabase.getInstance().getReference().child("CategoryBackground");

        options = new FirebaseRecyclerOptions.Builder<CategoryItem>()
                .setQuery(categoryBackgroundReference, CategoryItem.class).build();

        adapter = new FirebaseRecyclerAdapter<CategoryItem, CategoryViewHolder>(options) {
            @Override
            protected void onBindViewHolder(final CategoryViewHolder holder, final int position, final CategoryItem model) {

                Picasso.get().load(model.getImageLink())
                        .networkPolicy(NetworkPolicy.OFFLINE)
                        .into(holder.imageView, new Callback() {
                    @Override
                    public void onSuccess() {

                    }

                    @Override
                    public void onError(Exception e) {
                        Picasso.get().load(model.getImageLink())
                                .error(R.drawable.ic_terrain_black_24dp)
                                .into(holder.imageView);
                    }
                });

                holder.textView.setText(model.getName());
                holder.textView2.setText(model.getNumber());

                holder.imageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        Utils.CAREGORY_ID = adapter.getRef(position).getKey();
                        Utils.CATEGORY_SELECTED = model.getName();

                        Intent intent = new Intent(MainActivity.this, ListWallpaperActivity.class);
                        startActivity(intent);
                    }
                });

            }

            @NonNull
            @Override
            public CategoryViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {

                View v = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_category_item, parent, false);

                return new CategoryViewHolder(v);
            }
        };

        GridLayoutManager gridLayoutManager = new GridLayoutManager(getApplicationContext(),2);
        recyclerView.setLayoutManager(gridLayoutManager);
        adapter.startListening();
        recyclerView.setAdapter(adapter);
    }

    @Override
    protected void onStart() {
        super.onStart();
        if(adapter != null)
        {
            adapter.startListening();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if(adapter != null)
        {
            adapter.startListening();
        }
    }

    @Override
    protected void onStop() {
        if(adapter != null)
        {
            adapter.stopListening();
        }
        super.onStop();
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
        if(menuItem.getItemId() == R.id.atka_social){
            Intent intent = new Intent(MainActivity.this, MySocials.class);
            startActivity(intent);
            return false;
        }
        else if(menuItem.getItemId()== R.id.about){
            Intent intent = new Intent(MainActivity.this, About.class);
            startActivity(intent);
            return false;
        }
        else if(menuItem.getItemId()== R.id.discord){
            clicked_btndc("https://discord.gg/W2MA6WN");
            return false;
        }
        else if(menuItem.getItemId()== R.id.rate){
            clicked_btnrate("https://play.google.com/store/apps/details?id=game.valorant.valorantwallpapers");
            return false;
        }
        else if(menuItem.getItemId()== R.id.support){
            Intent intent = new Intent(MainActivity.this, Support.class);
            startActivity(intent);
            return false;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public void clicked_btnrate(String url){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        startActivity(intent);
    }

    public void clicked_btndc(String url){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        startActivity(intent);
    }
}

