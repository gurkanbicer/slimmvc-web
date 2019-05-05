<?php
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Message\ResponseInterface as Response;
use SlimFacades\View;

    Class homeController {

        private $c;

        public function __construct($container) {
            $this->c = $container;
        }

        public function index(Request $request, Response $response, $args) {
            $router = $request->getAttribute('route');
            $routingName = $router->getName();

            return View::render($response, 'v1/index.tpl', [
                'routingName' => $routingName,
                'slimmvcVersion' => VERSION,
            ]);
        }

        public function support(Request $request, Response $response, $args) {
            return $response->withStatus(302)
                ->withHeader('Location', 'https://github.com/gurkanbicer/slimmvc/issues');
        }

        public function download(Request $request, Response $response, $args) {
            return $response->withStatus(302)
                ->withHeader('Location', 'https://github.com/gurkanbicer/slimmvc/archive/master.zip');
        }

        public function downloadDocs(Request $request, Response $response, $args) {
            return $response->withStatus(302)
                ->withHeader('Location', 'https://github.com/gurkanbicer/slimmvc-docs/archive/master.zip');
        }

    }

/* path: ~app/controllers/homeController.php */