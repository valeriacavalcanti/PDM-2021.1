package com.example.aposta

import kotlin.random.Random

class Megasena {
    private var lista: MutableSet<Int>

    init {
        this.lista = mutableSetOf()
        this.setNumeros()
    }

    fun setNumeros(){
        while(this.lista.size < 6){
            this.lista.add(Random.nextInt(1,61))
        }
    }

    override fun toString(): String {
        return this.lista.toString()
    }
}