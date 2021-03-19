package ru.iu3.myclient;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import ru.iu3.myclient.MainActivity;
import ru.iu3.myclient.R;

public class PinpadActivity extends Activity {
    TextView tvPin;
    String pin = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pinpad);

        tvPin = findViewById(R.id.txtPin);

        ShuffleKeys();

        findViewById(R.id.btnOK).setOnClickListener((View) -> {
            Intent it = new Intent();
            it.putExtra("pin", pin);
            setResult(RESULT_OK, it);
            Toast.makeText(this, pin, Toast.LENGTH_SHORT).show();
            finish();

        });
        findViewById(R.id.btnKey1).setOnClickListener((View v) -> {
            keyClick(v);
        });
        findViewById(R.id.btnKey2).setOnClickListener((View v) -> {
            keyClick(v);
        });
        findViewById(R.id.btnKey3).setOnClickListener((View v) -> {
            keyClick(v);
        });
        findViewById(R.id.btnKey4).setOnClickListener((View v) -> {
            keyClick(v);
        });
        findViewById(R.id.btnKey5).setOnClickListener((View v) -> {
            keyClick(v);
        });
        findViewById(R.id.btnKey6).setOnClickListener((View v) -> {
            keyClick(v);
        });
        findViewById(R.id.btnKey7).setOnClickListener((View v) -> {
            keyClick(v);
        });
        findViewById(R.id.btnKey8).setOnClickListener((View v) -> {
            keyClick(v);
        });
        findViewById(R.id.btnKey9).setOnClickListener((View v) -> {
            keyClick(v);
        });
        findViewById(R.id.btnKey0).setOnClickListener((View v) -> {
            keyClick(v);
        });
    }
    protected void keyClick(View v){
        String key = ((TextView)v).getText().toString();
        int sz = pin.length();
        if (sz < 4){
            pin += key;
            tvPin.setText("****".substring(3 - sz));
        }
    }

    final int MAX_KEYS = 10;

    protected void ShuffleKeys() {
        Button keys[] = new Button[]{
                findViewById(R.id.btnKey0),
                findViewById(R.id.btnKey1),
                findViewById(R.id.btnKey2),
                findViewById(R.id.btnKey3),
                findViewById(R.id.btnKey4),
                findViewById(R.id.btnKey5),
                findViewById(R.id.btnKey6),
                findViewById(R.id.btnKey7),
                findViewById(R.id.btnKey8),
                findViewById(R.id.btnKey9),
        };

        byte[] rnd = MainActivity.randomBytes(MAX_KEYS);
        for (int i = 0; i < MAX_KEYS; i++) {
            int idx = (rnd[i] & 0xFF) % 10;
            CharSequence txt = keys[idx].getText();
            keys[idx].setText(keys[i].getText());
            keys[i].setText(txt);
        }
    }
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 0) {
            if (resultCode == RESULT_OK || data != null) {
                String pin = data.getStringExtra("pin");
                Toast.makeText(this, pin, Toast.LENGTH_SHORT).show();
            }
        }
    }
}