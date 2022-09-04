package game.valorant.valorantwallpapers.CategoryViewHolder;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import game.valorant.valorantwallpapers.R;

public class CategoryViewHolder extends RecyclerView.ViewHolder {

    public ImageView imageView;
    public TextView textView;
    public TextView textView2;

    public  CategoryViewHolder(View itemView) {
        super(itemView);
        imageView = (ImageView)itemView.findViewById(R.id.imageView);
        textView = (TextView)itemView.findViewById(R.id.textView);
        textView2 = (TextView)itemView.findViewById(R.id.textView2);
    }



}
