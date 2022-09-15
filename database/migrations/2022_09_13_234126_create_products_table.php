<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->float('cod_produto')->unique();
            $table->string('nome_produto');
            $table->float('valor_produto');
            $table->float('estoque');
            $table->bigInteger('fk_cidade');
            $table->timestamps();
        });
        /* Depois realizar a criação da chave estrangeira via MySQL Workbench

        ALTER TABLE products
            ADD FOREIGN KEY (fk_cidade) REFERENCES cities (id);
            */
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
