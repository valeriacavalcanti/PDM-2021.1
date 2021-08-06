package com.example.openbrowser

import android.content.Intent
import android.net.Uri
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.Toast

class MainActivity : AppCompatActivity() {
    private lateinit var btNavegador: Button
    private lateinit var btMyBrowser: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        this.btNavegador = findViewById(R.id.btNavegador)
        this.btNavegador.setOnClickListener{ html() }

        this.btMyBrowser = findViewById(R.id.btMyBrowser)
        this.btMyBrowser.setOnClickListener{ myBrowser() }
    }

    fun html(){
        val uri = Uri.parse("http://www.ifpb.edu.br")
        val intent = Intent(Intent.ACTION_VIEW, uri)

        if (intent.resolveActivity(packageManager) != null){
            startActivity(intent)
        }else{
            Toast.makeText(this, "erro", Toast.LENGTH_SHORT).show()
        }
    }

    fun myBrowser(){
        val uri = Uri.parse("http://www.google.com")
        val intent = Intent("ABRIR_MY_BROWSER", uri)

        if (intent.resolveActivity(packageManager) != null){
            startActivity(intent)
        }else{
            Toast.makeText(this, "erro", Toast.LENGTH_SHORT).show()
        }
    }
}