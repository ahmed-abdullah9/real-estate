<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCollectionVouchersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('collection_vouchers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('voucher_no');
            $table->string('client_name');
            $table->tinyInteger('source');
            $table->text('description');
            $table->dateTime('received_date');
            $table->Integer('amount');
            $table->integer('lease_contract_id')->unsigned();
            $table->foreign('lease_contract_id')->references('id')->on('lease_contracts')->onDelete('cascade');
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
        Schema::dropIfExists('collection_vouchers');
    }
}
