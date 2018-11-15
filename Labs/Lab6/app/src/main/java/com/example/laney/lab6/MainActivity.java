package com.example.laney.lab6;

import android.app.Activity;
import android.content.Context;
import android.graphics.Movie;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void findMovie(View view) {
        ToggleButton toggle = findViewById(R.id.toggleButton);
        boolean location = toggle.isChecked();
        String bestMovie;

        Spinner timeline = findViewById(R.id.spinner);
        String timelineRange = String.valueOf(timeline.getSelectedItem());


        RadioGroup numberMovies = findViewById(R.id.radioGroup2);
        int numberMovies_id = numberMovies.getCheckedRadioButtonId();

        EditText movieBuddy = findViewById(R.id.editText);
        String movieBuddyName = movieBuddy.getText().toString();

        if(location){//fantasy
            switch (timelineRange){
                case "past 10 years":
                    if(numberMovies_id==R.id.radioButton3){
                        bestMovie="a Disney Movie";//5 or more
                    }else {
                        bestMovie = "The Hobbit";//1 or 3
                    }
                    break;
                case "past 20 years":
                    if(numberMovies_id==R.id.radioButton3){
                        bestMovie="Harry Potter";//5+
                    }else {
                        bestMovie = "Lord of the Rings";//1 or 3
                    }
                    break;
                case "past 30 years":
                    if(numberMovies_id==R.id.radioButton1){
                        bestMovie="The Princess Bride";
                    }else{
                        bestMovie="a Disney Movie";
                    }

                    break;
                default:
                    bestMovie="a Disney Movie";
            }
        }
        else{//sciFi
            switch (timelineRange){
                case "past 10 years":
                    if(numberMovies_id==R.id.radioButton1){
                        bestMovie="Interstellar";
                    }else{
                        bestMovie="a Marvel Movie";
                    }

                    break;
                case "past 20 years":
                    if(numberMovies_id==R.id.radioButton1){
                        bestMovie="The Matrix";
                    }else{
                        bestMovie="a Marvel Movie";
                    }

                    break;
                case "past 30 years":
                    if(numberMovies_id==R.id.radioButton1){
                        bestMovie = "E.T.";
                    }else {
                        bestMovie = "Star Wars";
                    }
                    break;
                default:
                    bestMovie="a Marvel Movie";
            }
//match statement source: https://stackoverflow.com/questions/6290531/check-if-edittext-is-empty
        }if(movieBuddyName.matches("")){
            Context context=getApplicationContext();
            CharSequence text = "Don't watch alone! Type a name of a movie buddy";
            int duration = Toast.LENGTH_SHORT;
            Toast toast = Toast.makeText(context, text, duration);
            toast.show();

        }else {
            TextView movieChosen = findViewById(R.id.moiveTextView);
            movieChosen.setText("You should watch " + bestMovie + " with " + movieBuddyName + "!");
        }


    }
}
