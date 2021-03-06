<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateApartmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('apartments', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('buildingId')->unsigned();
            $table->foreign('buildingId')->references('id')->on('buildings')->onDelete('cascade');;
            $table->string('floor');
            $table->string('apartmentNo');
            $table->string('noRoom');
            $table->string('noHalls');
            $table->string('noBathroom');
            $table->string('noKitchen');
            $table->integer('price');
            $table->tinyInteger('rentPeriod');// يومي، شهري، سنوي
            // $table->tinyInteger('kitchenType');
            $table->text('details');
            //photo

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
        Schema::dropIfExists('apartments');
    }
}
