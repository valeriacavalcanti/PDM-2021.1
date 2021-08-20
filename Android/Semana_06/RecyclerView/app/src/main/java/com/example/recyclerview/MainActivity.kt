package com.example.recyclerview

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Toast
import androidx.recyclerview.widget.ItemTouchHelper
import androidx.recyclerview.widget.RecyclerView
import com.google.android.material.floatingactionbutton.FloatingActionButton

class MainActivity : AppCompatActivity() {
    private lateinit var lista: MutableList<Pessoa>
    private lateinit var rvPessoas: RecyclerView
    private lateinit var fabAdd: FloatingActionButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        this.lista = mutableListOf()

        this.rvPessoas = findViewById(R.id.rvPessoas)
        this.fabAdd = findViewById(R.id.fabAdd)

        this.rvPessoas.adapter = PessoaAdapter(this.lista)
        (this.rvPessoas.adapter as PessoaAdapter).listener = OnItemClickListener()

        ItemTouchHelper(OnSwipe()).attachToRecyclerView(this.rvPessoas)

        this.fabAdd.setOnClickListener{
            this.novasPessoas()
            (this.rvPessoas.adapter as PessoaAdapter).notifyDataSetChanged()
            // ****
        }

        this.fabAdd.setOnLongClickListener{
            this.limpar()
            (this.rvPessoas.adapter as PessoaAdapter).notifyDataSetChanged()
            return@setOnLongClickListener true
        }
    }

    fun novasPessoas(){
        for (i in 1..10){
            this.lista.add(Pessoa("Pessoa $i"))
        }
    }

    fun limpar(){
        this.lista.clear()
    }

    inner class OnItemClickListener: OnItemClickRecycleView{
        override fun onItemClick(position: Int) {
            val pessoa = this@MainActivity.lista.get(position)
            Toast.makeText(this@MainActivity, pessoa.nome, Toast.LENGTH_SHORT).show()
        }
    }

    inner class OnSwipe: ItemTouchHelper.SimpleCallback(
        ItemTouchHelper.UP or ItemTouchHelper.DOWN,
        ItemTouchHelper.START or ItemTouchHelper.END){

        override fun onMove(
            recyclerView: RecyclerView,
            viewHolder: RecyclerView.ViewHolder,
            target: RecyclerView.ViewHolder,
        ): Boolean {
            (this@MainActivity.rvPessoas.adapter as PessoaAdapter).swap(viewHolder.adapterPosition, target.adapterPosition)
            return true
        }

        override fun onSwiped(viewHolder: RecyclerView.ViewHolder, direction: Int) {
            (this@MainActivity.rvPessoas.adapter as PessoaAdapter).del(viewHolder.adapterPosition)
        }
    }
}