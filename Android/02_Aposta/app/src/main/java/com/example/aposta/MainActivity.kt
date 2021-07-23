package com.example.aposta

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    private lateinit var numeros: TextView
    private lateinit var botao: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        this.numeros = findViewById(R.id.tvNumeros)
        this.botao = findViewById(R.id.button)

        this.numeros.text = Megasena().toString()

        // Método 02
        /*
        this.botao.setOnClickListener{
            this.numeros.text = Megasena().toString()
        }
        */

        // Método 03
        //this.botao.setOnClickListener({ novoJogo(it) })

        this.botao.setOnClickListener(TrataClickBotao())
    }

    fun novoJogo(view: View){
        this.numeros.text = Megasena().toString()
    }

    inner class TrataClickBotao: View.OnClickListener{
        override fun onClick(v: View?) {
            this@MainActivity.numeros.text = Megasena().toString()
            //numeros.text = Megasena().toString()
        }
    }
}