<?php
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Message\ResponseInterface as Response;
use SlimFacades\Container;
use SlimFacades\Model;
use SlimFacades\View;
use SlimFacades\Helper;

    Class userGuideController {

        private $c;

        public function __construct($container) {
            $this->c = $container;
            Model::load('guide');
            Helper::load('parsedown');
        }

        public function index(Request $request, Response $response, $args) {
            $router = $request->getAttribute('route');
            $routingName = $router->getName();

            $guides = Container::get('guideModel')->getGuides();

            return View::render($response, 'v1/userGuideIndex.tpl', [
                'guides' => $guides,
                'routingName' => $routingName,
                'slimmvcVersion' => VERSION,
            ]);
        }

        public function single(Request $request, Response $response, $args) {
            $router = $request->getAttribute('route');
            $routingName = $router->getName();

            $guides = Container::get('guideModel')->getGuides();
            $guide = Container::get('guideModel')->getGuide([
                'category' => $args['category'],
                'name' => $args['name']
            ]);

            if ($guide === false) {
                $notFoundHandler = Container::get('notFoundHandler');
                return $notFoundHandler($request, $response);
            }

            $guide['body'] = hTagFormatter($guide['body'], 'mt-0 mb-3 px-0');
            $guide['body'] = pTagFormatter($guide['body'], 'my-3 px-0');
            $guide['body'] = preTagFormatter($guide['body'], 'my-4 bg-light border shadow-sm');

            return View::render($response, 'v1/userGuideSingle.tpl', [
                'guides' => $guides,
                'guideInfo' => $guide['info'],
                'guide' => $guide['body'],
                'routingName' => $routingName,
                'slimmvcVersion' => VERSION,
            ]);
        }

    }

/* path: ~app/controllers/userGuideController.php */