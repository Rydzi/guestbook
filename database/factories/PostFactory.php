<?php

namespace Database\Factories;

use App\Models\Post;
use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Post::class;


    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->firstName(),
            'email' => $this->faker->unique()->safeEmail(),
            'phone_number' => $this->faker->regexify('\+4219[014][15789][0-9]{6}'),
            'region_id' => $this->faker->numberBetween(1, 8),
            'message' => $this->faker->paragraph(),
            'ip' => $this->faker->ipv4(),
            'browser' => $this->faker->userAgent(),
            'created_at' => $this->faker->dateTimeBetween('-1 year', 'now')
        ];
    }
}
