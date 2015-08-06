Deface::Override.new(
  :virtual_path => "spree/shared/_nav_bar",
  :insert_bottom => "ul#nav-bar",
  :text => %Q(
    <li id="link-to-cart" data-hook>
      <noscript>
        <%= link_to Spree.t(:cart), '/cart' %>
      </noscript>
      &nbsp;
    </li>
    <script>Spree.fetch_cart()</script>
  ),
  :name => "show_nav_bar"
)

Deface::Override.new(
  :virtual_path => "spree/shared/_main_nav_bar",
  :remove => "nav",
  :name => "hide_main_nav_bar"
)

Deface::Override.new(
  :virtual_path => "spree/shared/_header",
  :set_attributes => ".container",
  :attributes => {:class => ""},
  :name => "remove_container_class"
)
