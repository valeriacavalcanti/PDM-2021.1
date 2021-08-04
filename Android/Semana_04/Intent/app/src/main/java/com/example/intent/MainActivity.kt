package com.example.intent

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.Button
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts

class MainActivity : AppCompatActivity() {
    private lateinit var btSobre: Button
    private lateinit var btForm: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        this.btSobre = findViewById(R.id.btMainSobre)
        this.btSobre.setOnClickListener(OnClick())

        this.btForm = findViewById(R.id.btMainFormulario)
        this.setResultFormulario()

        Log.i("APP_LAYOUT", "Main - OnCreate")
    }

    fun setResultFormulario(){
        val resultFormulario = registerForActivityResult(ActivityResultContracts.StartActivityForResult()){ result ->
            if (result.resultCode == RESULT_OK){
                val mensagem = result.data?.getStringExtra("MENSAGEM_VOLTA")
                Toast.makeText(this, mensagem, Toast.LENGTH_SHORT).show()
            }else{
                Toast.makeText(this, "CANCELOU", Toast.LENGTH_SHORT).show()
            }
        }

        this.btForm.setOnClickListener{
            val intent = Intent(this, FormActivity::class.java)
            resultFormulario.launch(intent)
        }
    }

    override fun onStart() {
        super.onStart()

        Log.i("APP_LAYOUT", "Main - OnStart")
    }

    override fun onResume() {
        super.onResume()

        Log.i("APP_LAYOUT", "Main - OnResume")
    }

    override fun onPause() {
        super.onPause()

        Log.i("APP_LAYOUT", "Main - OnPause")
    }

    override fun onStop() {
        super.onStop()

        Log.i("APP_LAYOUT", "Main - OnStop")
    }

    override fun onRestart() {
        super.onRestart()

        Log.i("APP_LAYOUT", "Main - OnRestart")
    }

    override fun onDestroy() {
        super.onDestroy()

        Log.i("APP_LAYOUT", "Main - OnDestroy")
    }

    inner class OnClick: View.OnClickListener{
        override fun onClick(v: View?) {
            val intent = Intent(this@MainActivity, SobreActivity::class.java)
            intent.putExtra("NOME", "Valéria")
            startActivity(intent)
        }
    }
}