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
            $table->integer('building_id')->unsigned();
            $table->foreign('building_id')->references('id')->on('buildings')->onDelete('cascade');;
            $table->string('floor');
            $table->string('apartmentNo');
            $table->string('noRoom');
            $table->string('noHalls');
            $table->string('noBathroom');
            $table->string('noKitchen');
            $table->integer('price');
            $table->tinyInteger('rentPeriod');// يومي، شهري، سنوي
            // $table->tinyInteger('kitchenType');
            $table->tinyInteger('is_active');
            $table->tinyInteger('is_special');
            $table->float('commission');
            $table->integer('insurance');
            $table->text('details');
            $table->tinyInteger('is_updated');

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
