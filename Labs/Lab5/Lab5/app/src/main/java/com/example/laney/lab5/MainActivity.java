package com.example.laney.lab5;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.ImageView;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void turkeyNoise(View view) {
        TextView turkeyDayText = findViewById(R.id.message);
        EditText TurkeyEaterName = findViewById(R.id.editText);
        String TurkeyNameVal = TurkeyEaterName.getText().toString();
        turkeyDayText.setText("Happy Thanksgiving " + TurkeyNameVal + ", now run Turkey, RUN!");
        ImageView turkey = findViewById(R.id.imageView);
        turkey.setImageResource(R.drawable.scaredturkey);

    }
}
