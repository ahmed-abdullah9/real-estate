<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBuildingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('buildings', function (Blueprint $table) {
            $table->increments('id');
            $table->string('buildingName');
            $table->integer('buildingNo');
            $table->tinyInteger('populationType');
            $table->integer('enteranceNo');
            $table->integer('apartmentNo');
            $table->tinyInteger('isActive');
            // buildingType={Residential, Commercial, Residential Commercial, Furnished} As a table

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
        Schema::dropIfExists('buildings');
    }
}
