package com.example.intent

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.EditText

class FormActivity : AppCompatActivity() {
    private lateinit var etMensagem: EditText
    private lateinit var btOk: Button
    private lateinit var btCancelar: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_form)

        this.etMensagem = findViewById(R.id.etFormMensagem)

        this.btOk = findViewById(R.id.btFormOk)
        this.btOk.setOnClickListener(OnClick())

        this.btCancelar = findViewById(R.id.btFormCancelar)
        this.btCancelar.setOnClickListener{
            finish()
        }
    }

    inner class OnClick: View.OnClickListener{
        override fun onClick(v: View?) {
            val mensagem = this@FormActivity.etMensagem.text.toString()
            val intent = Intent().apply {
                putExtra("MENSAGEM_VOLTA", mensagem)
            }
            setResult(RESULT_OK, intent)
            finish()
        }
    }
}