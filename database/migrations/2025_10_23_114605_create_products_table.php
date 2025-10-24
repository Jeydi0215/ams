<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id('item_id');
            $table->string('title');
            $table->text('description')->nullable();
            $table->string('category');
            $table->string('location');
            $table->string('department');
            $table->decimal('cost', 10, 2)->default(0);
            $table->decimal('price', 10, 2)->default(0);
            $table->integer('qty')->default(0);
            $table->string('type')->nullable();
            $table->decimal('useful_life', 8, 2)->nullable();
            $table->decimal('depreciation_rate', 8, 2)->nullable();
            $table->string('requestor')->nullable();
            $table->string('approver')->nullable();
            $table->string('assigned_personnel')->nullable();
            $table->string('asset_group')->nullable();
            $table->string('status')->default('In Use');
            $table->string('media_url')->nullable();
            $table->date('registration_date')->nullable();
            $table->string('registration_id')->nullable();
            $table->string('asset_id')->nullable();
            $table->string('supplier_vendor')->nullable();
            $table->text('rejection_reason')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('products');
    }
};