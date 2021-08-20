package com.example.recyclerview

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.ItemTouchHelper
import androidx.recyclerview.widget.RecyclerView
import java.util.*

class PessoaAdapter (val lista: MutableList<Pessoa>): RecyclerView.Adapter<PessoaAdapter.PessoaViewHolder>() {
    var listener: OnItemClickRecycleView? = null

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): PessoaViewHolder {
        var view = LayoutInflater.from(parent.context).inflate(R.layout.recycleview_item, parent, false)
        return PessoaViewHolder(view)
    }

    override fun onBindViewHolder(holder: PessoaViewHolder, position: Int) {
        val pessoa = this.lista.get(position)
        holder.tvID.text = pessoa.id.toString()
        holder.tvNome.text = pessoa.nome
    }

    override fun getItemCount(): Int = this.lista.size

    fun del(position: Int){
        this.lista.removeAt(position)
        notifyItemRemoved(position)
    }

    fun swap(from: Int, to: Int){
        Collections.swap(this.lista, from, to)
        notifyItemMoved(from, to)
    }

    inner class PessoaViewHolder (itemView: View): RecyclerView.ViewHolder(itemView) {
        var tvID: TextView
        var tvNome: TextView

        init {
            this.tvID = itemView.findViewById(R.id.tvItemID)
            this.tvNome = itemView.findViewById(R.id.tvItemNome)

            itemView.setOnClickListener{
                this@PessoaAdapter.listener?.onItemClick(this.adapterPosition)
            }

            itemView.setOnLongClickListener{
                // ??
                return@setOnLongClickListener true
            }
        }
    }
}