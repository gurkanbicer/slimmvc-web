<?php

    Class guideModel {

        private $c;
        private $parsedown;

        public function __construct($container) {
            $this->c = $container;
            $this->parsedown = new Parsedown();
        }

        public function getGuides() {
            $guidesPath = DIR_STATIC . "/guides.json";

            if (!file_exists($guidesPath))
                $guidesRef = '[]';
            else
                $guidesRef = file_get_contents($guidesPath);

            return json_decode($guidesRef, true);
        }

        public function getGuide($params = []) {
            try {
                if (!isset($params['name']))
                    throw new Exception('Name parameter isn\'t defined.');

                $guideInfoPath = DIR_GUIDE . "/" . $params['category'] . "/" . $params['name'] . ".json";
                $guidePath = DIR_GUIDE . "/" . $params['category'] . "/" . $params['name'] . ".md";

                if (!file_exists($guideInfoPath) || !file_exists($guidePath))
                    throw new Exception('Guide not found.');

                $guideInfoRef = file_get_contents($guideInfoPath);
                $guideRef = file_get_contents($guidePath);

                return [
                    'info' => json_decode($guideInfoRef, true),
                    'body' => $this->parsedown->text($guideRef),
                ];

            } catch (Exception $e) {
                return false;
            }
        }

    }

/* path: ~app/models/guideModel.php */