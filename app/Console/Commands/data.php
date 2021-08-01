<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Post;
use App\Models\Region;
use Illuminate\Support\Facades\Cache;

class data extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'data';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Create guestbook/region data or truncate guestbook data';


    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }


    /**
     * Add $count posts into guestbook
     */
    private function createGuestbook($count = 10)
    {
        Post::factory()->count($count)->create();
    }


    /**
     * Delete all posts from guestbook
     */
    private function deleteGuestbook()
    {
        Post::truncate();

        //delete cached data
        Cache::forget('posts');
    }


    /**
     * Re-create regions
     */
    private function createRegions()
    {
        Region::truncate();
        $regions = [
            array('region' => 'Bratislavský'),
            array('Trnavský'),
            array('Trenčiansky'),
            array('Nitriansky'),
            array('Žilinský'),
            array('Banskobystrický'),
            array('Prešovský'),
            array('Košický')
        ];
        Region::insert($regions);
    }


    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {

        $action = $this->choice(
            'Do you want fill all necessary data [all] OR add posts into Guestbook [Guestbook] OR create Regions [Regions] OR flush Guestbook [dGuestbook] ',
            ['Guestbook', 'Regions', 'dGuestbook', 'all'],
            'all'
        );

        switch ($action) {
            case 'Guestbook':
                $count = max($this->ask('How many? '), 10);
                $this->createGuestbook($count);
                $this->info($count . ' posts created');
                break;
            case 'Regions':
                $this->createRegions();
                $this->info('Regions created');
                break;
            case 'dGuestbook':
                if ($this->confirm('Do you wish to continue and delete posts data?')) {
                    $this->deleteGuestbook();
                    $this->info('Data deleted');
                } else {
                    $this->info('Data not deleted');
                }
                break;
            case 'all':
                if ($this->confirm('Do you wish also delete posts data?')) {
                    $this->deleteGuestbook();
                    $this->info('Data deleted');
                }
                $this->createGuestbook();
                $this->createRegions();
                $this->info('Data created');
                break;
            default:
                # code...
                break;
        }
        return 0;
    }
}
