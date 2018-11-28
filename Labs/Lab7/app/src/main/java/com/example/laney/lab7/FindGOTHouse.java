package com.example.laney.lab7;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Spinner;

public class FindGOTHouse extends Activity {
    private GOTHouse chosenGOTHouse = new GOTHouse();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_find_gothouse);
        Button button = findViewById(R.id.button);
        View.OnClickListener onclick = new View.OnClickListener(){
            public void onClick(View view){
                findHouse(view);
            }
        };
        button.setOnClickListener(onclick);
    }
    private void findHouse(View view){
        Spinner houseSpinner = findViewById(R.id.spinner);
        Integer house = houseSpinner.getSelectedItemPosition();
        chosenGOTHouse.setGOTHouse(house);
        String moreHouseInfo = chosenGOTHouse.getGOTHouse();
        String moreHouseInfoURL  = chosenGOTHouse.getGOTHouseURL();
        String moreHouseDes = chosenGOTHouse.getGotHouseDes();
        Log.i("pickedHouse", moreHouseInfo);
        Log.i("url", moreHouseInfoURL);
        Log.i("houseDes", moreHouseDes);

        Intent intent = new Intent (this, ReceieveGOTInfo.class);
        intent.putExtra("gotHouse", moreHouseInfo);
        intent.putExtra("gotHouseWeb", moreHouseInfoURL);
        intent.putExtra("gotHouseDes", moreHouseDes);
        startActivity(intent);

    }
}
