package com.example.layout

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Button

class MainActivity : AppCompatActivity() {
    private lateinit var btOk: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.layout_linear)

        this.btOk = findViewById(R.id.btOk)

        this.btOk.setOnClickListener{
            Log.i("APP_LAYOUT", "Mensagem - informação")
            Log.w("APP_LAYOUT", "Mensagem - aviso")
            Log.e("APP_LAYOUT", "Mensagem - erro")
        }
    }
}