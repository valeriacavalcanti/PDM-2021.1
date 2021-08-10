package com.example.foto

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.ImageView
import androidx.activity.result.contract.ActivityResultContracts

class MainActivity : AppCompatActivity() {
    private lateinit var btFoto: Button
    private lateinit var ivFoto: ImageView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        this.btFoto = findViewById(R.id.btFoto)
        this.ivFoto = findViewById(R.id.ivFoto)

        val cameraResult = registerForActivityResult(ActivityResultContracts.TakePicturePreview()){
            this.ivFoto.setImageBitmap(it)
        }

        this.btFoto.setOnClickListener{
            cameraResult.launch(null)
        }
    }

}