<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $fillable = ['cod_produto', 'nome_produto', 'valor_produto', 'estoque', 'fk_cidade'];
}
