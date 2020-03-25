<?php

use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categories')->insert([
            'name' => 'Tecnologia',
            'description' => 'Conjunto de instrumentos, recursos técnicos o procedimientos empleados en un determinado campo o sector.'
        ]);
        DB::table('categories')->insert([
            'name' => 'Deportes',
            'description' => 'Actividad o ejercicio físico, sujeto a determinadas normas, en que se hace prueba, con o sin competición, de habilidad, destreza o fuerza física.'
        ]);
        DB::table('categories')->insert([
            'name' => 'Hogar',
            'description' => 'Sabemos que tener un hogar es más que tener un techo'
        ]);
        $Category = new App\Category;
        $Category->name = 'Sport';
        $Category->description = "Actividad o ejercicio físico, sujeto a determinadas normas, en que se hace prueba, con o sin competición, de habilidad, destreza o fuerza física.";
        $Category->save();
        
    }
}
