package ru.iu3.myclient;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.Hex;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'native-lib' library on application startup.
    static {
        System.loadLibrary("native-lib");
        System.loadLibrary("mbedcrypto");
        initRng();
    }
    /**
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        byte[] rnd = randomBytes(16);

        // Example of a call to a native method
        TextView tv = findViewById(R.id.sample_text);
        tv.setText(stringFromJNI());
    } */

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button btn = findViewById(R.id.btnClickMe);
        btn.setOnClickListener((View v) -> { onButtonClick(v);});

        int res = initRng();
        Log.i("fclient", "Init Rng = " + res);
        byte[] v = randomBytes(10);

    }

    /**
     * A native method that is implemented by the 'native-lib' native library,
     * which is packaged with this application.
     */

    public static byte[] StringToHex(String s) {
        try {
            return Hex.decodeHex(s.toCharArray());
        }
        catch (DecoderException ex) {

        }
        return new byte[0];
    }

    protected void onButtonClick(View v) {
        //A
        //Toast.makeText(this, stringFromJNI(), Toast.LENGTH_SHORT).show();
        //B
        //byte[] key = StringToHex("0123456789ABCDEF0123456789ABCDE0");
        //byte[] enc = encrypt(key,StringToHex("000000000000000102"));
        //byte[] dec = decrypt(key,enc);
        //String s = new String(Hex.encodeHex(dec)).toUpperCase();
        //Toast.makeText(this,s,Toast.LENGTH_SHORT).show();
        //C
        Intent it = new Intent(this, ru.iu3.myclient.PinpadActivity.class);
        startActivityForResult(it,0);
    }

    public native String stringFromJNI();
    public static native int initRng();
    public static native byte[] randomBytes(int no);
    public static native byte[] encrypt(byte[] key, byte[] data);
    public static native byte[] decrypt(byte[] key, byte[] data);
}