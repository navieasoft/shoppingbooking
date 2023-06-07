<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('account_info', function (Blueprint $table) {
            $table->id();
            $table->text('country')->nullable();
            $table->text('company_name')->nullable();
            $table->text('tradeLicence')->nullable();
            $table->text('drivingLicence')->nullable();
            $table->text('email')->nullable();
            $table->text('phone')->nullable();
            $table->text('pass')->nullable();
            $table->text('address')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
};
