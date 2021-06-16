<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOwnerBanksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('owner_banks', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('ownerId')->unsigned();
            $table->foreign('ownerId')->references('id')->on('owners')->onDelete('cascade');
            $table->string('name');
            $table->string('iban');
            $table->integer('bankId')->unsigned();
            $table->foreign('bankId')->references('id')->on('banks')->onDelete('cascade');;
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('owner_banks');
    }
}
