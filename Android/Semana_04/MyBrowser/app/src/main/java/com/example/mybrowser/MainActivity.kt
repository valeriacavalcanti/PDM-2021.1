package com.example.mybrowser

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.Button
import android.widget.EditText

class MainActivity : AppCompatActivity() {
    private lateinit var etURL: EditText
    private lateinit var btIr: Button
    private lateinit var wvURL: WebView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        this.etURL = findViewById(R.id.etURL)
        this.btIr = findViewById(R.id.btIr)
        this.wvURL = findViewById(R.id.wvURL)

        this.btIr.setOnClickListener(OnClick())

        this.wvURL.webViewClient = WebViewClient()
        this.wvURL.settings.javaScriptEnabled = true

        if (intent.data != null){
            this.wvURL.loadUrl(intent.data.toString())
            Log.i("APP_MYBROWSER", intent.data.toString())
        }
    }

    inner class OnClick: View.OnClickListener{
        override fun onClick(v: View?) {
            val url = this@MainActivity.etURL.text.toString()
            this@MainActivity.wvURL.loadUrl(url)
        }
    }
}