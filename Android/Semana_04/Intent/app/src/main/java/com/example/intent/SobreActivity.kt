package com.example.intent

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Button
import android.widget.TextView
import android.widget.Toast

class SobreActivity : AppCompatActivity() {
    private lateinit var tvMensagem: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_sobre)

        this.tvMensagem = findViewById(R.id.tvSobreMensagem)
        this.tvMensagem.setOnClickListener{
            finish()
        }

        Log.i("APP_LAYOUT", "Sobre - OnCreate")
    }

    override fun onStart() {
        super.onStart()

        Log.i("APP_LAYOUT", "Sobre - OnStart")
    }

    override fun onResume() {
        super.onResume()

        Log.i("APP_LAYOUT", "Sobre - OnResume")

        if (intent.hasExtra("NOME")){
            val nome = intent.getStringExtra("NOME")
            Toast.makeText(this, nome, Toast.LENGTH_SHORT).show()
        }
    }

    override fun onPause() {
        super.onPause()

        Log.i("APP_LAYOUT", "Sobre - OnPause")
    }

    override fun onStop() {
        super.onStop()

        Log.i("APP_LAYOUT", "Sobre - OnStop")
    }

    override fun onRestart() {
        super.onRestart()

        Log.i("APP_LAYOUT", "Sobre - OnRestart")
    }

    override fun onDestroy() {
        super.onDestroy()

        Log.i("APP_LAYOUT", "Sobre - OnDestroy")
    }
}