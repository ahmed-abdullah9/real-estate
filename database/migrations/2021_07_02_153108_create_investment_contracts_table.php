<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInvestmentContractsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('investment_contracts', function (Blueprint $table) {
            $table->increments('id');
            $table->string('contract_no');
            $table->string('name');
            $table->timestamp('date_from');
            $table->timestamp('date_to');
            $table->integer('owner_id')->unsigned();
            $table->foreign('owner_id')->references('id')->on('owners')->onDelete('cascade');
            $table->integer('instrument_id')->unsigned();
            $table->foreign('instrument_id')->references('id')->on('instruments')->onDelete('cascade');
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
        Schema::dropIfExists('investment_contracts');
    }
}
