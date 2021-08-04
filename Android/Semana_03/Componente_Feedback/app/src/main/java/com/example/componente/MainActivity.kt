package com.example.componente

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.util.Log
import android.view.View
import android.widget.*
import com.google.android.material.chip.Chip
import com.google.android.material.chip.ChipGroup
import com.google.android.material.floatingactionbutton.FloatingActionButton

class MainActivity : AppCompatActivity() {
    private lateinit var cbUm: CheckBox
    private lateinit var cbDois: CheckBox
    private lateinit var cbTres: CheckBox
    private lateinit var cbQuatro: CheckBox
    private lateinit var etTexto: EditText
    private lateinit var pbQtde: ProgressBar
    private lateinit var sbValor: SeekBar
    private lateinit var tvValor: TextView
    private lateinit var rgSN: RadioGroup
    private lateinit var rbSim: RadioButton
    private lateinit var rbNao: RadioButton
    private lateinit var fabAddChip: FloatingActionButton
    private lateinit var cgIFPB: ChipGroup
    private lateinit var svPalavra: SearchView
    private lateinit var tbStatus: ToggleButton

    companion object{
        private var quantidade = 0
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        this.checkBox()
        this.editText()
        this.progressBar()
        this.seekBar()
        this.textView()
        this.radioGroup()
        this.floatingActionButton()
        this.chip()
        this.searchView()
        this.toggleButton()
    }

    fun checkBox(){
        this.cbUm = findViewById(R.id.cbUm)
        this.cbDois = findViewById(R.id.cbDois)
        this.cbTres = findViewById(R.id.cbTres)
        this.cbQuatro = findViewById(R.id.cbQuatro)

        this.cbUm.setOnClickListener(CheckBoxListener())
        this.cbDois.setOnClickListener(CheckBoxListener())
        this.cbTres.setOnClickListener(CheckBoxListener())
        this.cbQuatro.setOnClickListener(CheckBoxListener())
    }

    fun editText(){
        this.etTexto = findViewById(R.id.etTexto)
        this.etTexto.addTextChangedListener(EditTextListener())
    }

    fun progressBar(){
        this.pbQtde = findViewById(R.id.pbQuantidadeTexto)
    }

    fun seekBar(){
        this.sbValor = findViewById(R.id.sbValor)
        this.sbValor.setOnSeekBarChangeListener(SeekBarListener())
    }

    fun textView(){
        this.tvValor = findViewById(R.id.tvValor)
    }

    fun radioGroup(){
        this.rgSN = findViewById(R.id.rgSimNao)
        this.rbSim = findViewById(R.id.rbSim)
        this.rbNao = findViewById(R.id.rbNao)

        this.rgSN.setOnCheckedChangeListener(RadioGroupListener())
    }

    fun floatingActionButton(){
        this.fabAddChip = findViewById(R.id.fabAddChip)
        this.fabAddChip.setOnClickListener(FloatingActionButtonListener())
    }

    fun chip(){
        this.cgIFPB = findViewById(R.id.cgIFPB)
    }

    fun searchView(){
        this.svPalavra = findViewById(R.id.svPalavra)
        this.svPalavra.setOnQueryTextListener(SearchViewListener())
    }

    fun toggleButton(){
        this.tbStatus = findViewById(R.id.tbStatus)
    }

    // LISTENERS

    inner class CheckBoxListener: View.OnClickListener{
        override fun onClick(v: View?) {
            val cb = v as CheckBox
            if (cb.isChecked)
                Toast.makeText(this@MainActivity, cb.text, Toast.LENGTH_SHORT).show()
        }
    }

    inner class EditTextListener: TextWatcher{
        override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {}

        override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {
            this@MainActivity.pbQtde.progress = this@MainActivity.etTexto.text.length
        }

        override fun afterTextChanged(s: Editable?) {}
    }

    inner class SeekBarListener: SeekBar.OnSeekBarChangeListener{
        override fun onProgressChanged(seekBar: SeekBar?, progress: Int, fromUser: Boolean) {
            this@MainActivity.tvValor.text = progress.toString()
        }

        override fun onStartTrackingTouch(seekBar: SeekBar?) {}
        override fun onStopTrackingTouch(seekBar: SeekBar?) {}
    }

    inner class RadioGroupListener: RadioGroup.OnCheckedChangeListener{
        override fun onCheckedChanged(group: RadioGroup?, checkedId: Int) {
            if (group?.checkedRadioButtonId == this@MainActivity.rbSim.id){
                Toast.makeText(this@MainActivity, "SIM", Toast.LENGTH_SHORT).show()
            }else{
                Toast.makeText(this@MainActivity, "NÃO", Toast.LENGTH_SHORT).show()
            }
        }
    }

    inner class FloatingActionButtonListener: View.OnClickListener{
        override fun onClick(v: View?) {
            val chip = Chip(this@MainActivity)
            MainActivity.quantidade += 1
            chip.text = "IFPB ${MainActivity.quantidade}"
            chip.setOnLongClickListener {
                this@MainActivity.cgIFPB.removeView(chip)
                true
            }
            this@MainActivity.cgIFPB.addView(chip)
        }
    }

    inner class SearchViewListener: SearchView.OnQueryTextListener{
        override fun onQueryTextSubmit(query: String?): Boolean {
            Log.i("APP_COMPONENTE", "Procurar por: ${query}")
            return true
        }

        override fun onQueryTextChange(newText: String?): Boolean {
            Log.i("APP_COMPONENTE", "Digitando: ${newText}")
            return true
        }
    }
}