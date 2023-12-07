<?php
    class Specifications {
        public string $screen_size;
        public string $screen_technology;
        public string $behind_cam;
        public string $front_cam;
        public string $chipset;
        public string $ram;
        public string $internal_memory;
        public string $pin;
        public string $sim;
        public string $os;
        public string $screen_resolution;
        public string $screen_feature;
    
        public function __construct(
            string $screen_size,
            string $screen_technology,
            string $behind_cam,
            string $front_cam,
            string $chipset,
            string $ram,
            string $internal_memory,
            string $pin,
            string $sim,
            string $os,
            string $screen_resolution,
            string $screen_feature
        ) {
            $this->screen_size = $screen_size;
            $this->screen_technology = $screen_technology;
            $this->behind_cam = $behind_cam;
            $this->front_cam = $front_cam;
            $this->chipset = $chipset;
            $this->ram = $ram;
            $this->internal_memory = $internal_memory;
            $this->pin = $pin;
            $this->sim = $sim;
            $this->os = $os;
            $this->screen_resolution = $screen_resolution;
            $this->screen_feature = $screen_feature;
        }

        public function toArray() {
            return [
                $this->screen_size,
                $this->screen_technology,
                $this->behind_cam,
                $this->front_cam,
                $this->chipset,
                $this->ram,
                $this->internal_memory,
                $this->pin,
                $this->sim,
                $this->os,
                $this->screen_resolution,
                $this->screen_feature
            ];
        }
    }
    
    class Phone {
        public string $name;
        public int $price;
        public int $firm_id;
        public int $discount;
        public string $decription;
        public array $image_links;
        public Specifications $specifis;
    
        public function __construct(
            string $name,
            int $price,
            int $firm_id,
            int $discount,
            string $decription,
            array $image_links,
            Specifications $specifis
        ) {
            $this->name = $name;
            $this->price = $price;
            $this->firm_id = $firm_id;
            $this->discount = $discount;
            $this->decription = $decription;
            $this->image_links = $image_links;
            $this->specifis = $specifis;
        }
    }

    class Phone_preview {
        public int $id;
        public string $thumbnail_image;
        public string $name;
        public int $price;
        public int $discount;
        public float $stars;
        public string $status;
    
        public function __construct(
            int $id, 
            string $thumbnail_image, 
            string $name, 
            int $price, 
            int $discount, 
            float $stars,
            string $status
        ) {
            $this->id = $id;
            $this->thumbnail_image = $thumbnail_image;
            $this->name = $name;
            $this->price = $price;
            $this->discount = $discount;
            $this->stars = $stars;
            $this->status = $status;
        }
    }

    class User_rate_and_comment {
        public int $user_id;
        public $rate;
        public string $comment;

        public function __construct(int $user_id, $rate, string $comment) {
            $this->user_id = $user_id;
            $this->rate = $rate;
            $this->comment = $comment;
        }
    }
?>