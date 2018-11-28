package com.example.laney.lab7;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class ReceieveGOTInfo extends Activity {

    private String houseName;
    private String houseNameURL;
    private String houseDes;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_receieve_gotinfo);
        Intent intent = getIntent();
        houseName = intent.getStringExtra("gotHouse");
        houseNameURL = intent.getStringExtra("gotHouseWeb");
        houseDes = intent.getStringExtra("gotHouseDes");
        Log.i("house Recieved", houseName);
        Log.i("url recieved", houseNameURL);
        Log.i("des recieved", houseDes);

        TextView messageView = findViewById(R.id.textView3);
        messageView.setText("House " + houseName);

        TextView desView = findViewById(R.id.textView4);
        desView.setText(houseDes);

        Button infoButton = findViewById(R.id.button2);
        View.OnClickListener onclick = new View.OnClickListener(){
            public void onClick(View view){
                loadWebSite(view);
            }
        };
        infoButton.setOnClickListener(onclick);
    }

    private void loadWebSite(View view){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(houseNameURL));
        startActivity(intent);
    }
}
