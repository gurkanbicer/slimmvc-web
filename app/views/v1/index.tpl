{include file="v1/header.tpl"}
    <!-- #content -->
    <div id="content" class="container pt-5 pb-5">
      <!-- #about -->
      <div id="about" class="row mt-5 mb-5">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
          <h1 class="text-center">SlimMVC</h1>
          <p class="lead text-center mt-1 mb-5">Extended version of Slim Framework for who likes the MVC.</p>
          <p class="text-muted">It provides an <strong>MVC</strong> structure for SlimPHP (<a href="https://www.slimframework.com" target="_blank">Slim Framework</a>). Also, you can find useful <strong>helpers</strong>, <strong>libraries</strong> and <strong>some of the improved features</strong> inside of package.</p>
          <pre class="mt-4 mb-4 bg-light border rounded-lg shadow-sm"><code class="language-php">
              &lt;?php
/**
 * SlimMVC
 * It provides an MVC structure for SlimPHP (Slim Framework).
 *
 * Basically, all of the frameworks are provides a fast development environment. But, SlimPHP (Slim Framework) is a
 * micro framework and it becomes with minimal features like the routing, the request, and the response interfaces.
 * It hasn't an MVC structure. When you want to use SlimPHP and MVC structure, you should add all of the dependencies
 * as manually. It's tiring and it doesn't provide entirety.
 *
 * We got inspired by Laravel and CodeIgniter, and we prepared this environment for who likes the SlimPHP and working
 * at the MVC structure.
 *
 * @link https://www.slimmvc.com
 * @version v0.1
 * @author Gürkan Biçer <gurkan@grkn.co>
 */

require_once 'app/core/autoload.php';

/* path: ~index.php */
          </code></pre>
        </div>
      </div>

      <!-- #features -->
      <div id="features" class="row mt-5 mb-5">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3">
          <h2 class="text-center">Features</h2>
          <p class="lead text-center">Some of features may you like.</p>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb-5">
          <div class="card shadow-sm">
            <div class="card-body">
              <h5 class="card-title">MVC</h5>
              <h6 class="card-subtitle mb-2 text-muted">via Dependency Injection</h6>
              <p class="card-text">Integrated for scalable projects.</p>
              
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb-5">
          <div class="card shadow-sm">
            <div class="card-body">
              <h5 class="card-title">Libraries</h5>
              <h6 class="card-subtitle mb-2 text-muted">via Dependency Injection</h6>
              <p class="card-text">Integrated for 3rd packages.</p>
              
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb-5">
          <div class="card shadow-sm">
            <div class="card-body">
              <h5 class="card-title">Helpers</h5>
              <h6 class="card-subtitle mb-2 text-muted">via Anti Pattern</h6>
              <p class="card-text">Integrated for fast coding.</p>
              
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb-5">
          <div class="card shadow-sm">
            <div class="card-body">
              <h5 class="card-title">Facades</h5>
              <h6 class="card-subtitle mb-2 text-muted">via Proxy Pattern</h6>
              <p class="card-text">Integrated for clean coding.</p>
              
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb-5">
          <div class="card shadow-sm">
            <div class="card-body">
              <h5 class="card-title">Smarty</h5>
              <h6 class="card-subtitle mb-2 text-muted">via Dependency Injection</h6>
              <p class="card-text">Integrated for the View layer.</p>
              
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb-5">
          <div class="card shadow-sm">
            <div class="card-body">
              <h5 class="card-title">Illuminate/Database</h5>
              <h6 class="card-subtitle mb-2 text-muted">via Dependency Injection</h6>
              <p class="card-text">Integrated for MySQL projects.</p>
              
            </div>
          </div>
        </div>
      </div>
      <!-- #core -->
      <div id="core" class="row mt-5 mb-5">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
          <h2 class="text-center">Core</h2>
          <p class="lead text-center mb-5">Behind on SlimMVC.</p>
          <p class="text-muted text-center">
            <strong>SlimMVC</strong> uses <strong>Slim Framework 3.12.0</strong> version as a core. But, we will keep up-to-date the core.
          </p>
        </div>
      </div>
    </div>
{include file="v1/footer.tpl"}
