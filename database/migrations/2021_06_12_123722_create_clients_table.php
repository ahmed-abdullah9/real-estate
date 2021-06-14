<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clients', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('phone');
            $table->tinyInteger('nationalType');
            $table->integer('nationalId');
            $table->string('employer');
            $table->string('nameAr');
            $table->string('nameEng');
            $table->string('email');
            $table->string('issuer');
            $table->string('placeOfBirth');
            $table->tinyInteger('sex');
            $table->integer('copy');
            $table->tinyInteger('isActive');
            $table->dateTime('birthDate');
            $table->dateTime('expireDate');
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
        Schema::dropIfExists('clients');
    }
}
