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
  :remove_from_attributes => ".container",
  :attributes => {:class => "container"},
  :name => "remove_container_class"
)

Deface::Override.new(
  :virtual_path => "spree/shared/_nav_bar",
  :set_attributes => ".col-md-8",
  :attributes => {:class => "col-sm-9"},
  :name => "change_menu_column_width"
)

Deface::Override.new(
  :virtual_path => "spree/shared/_header",
  :set_attributes => ".col-md-4",
  :attributes => {:class => "col-sm-3"},
  :name => "change_logo_column_width"
)

Deface::Override.new(
  :virtual_path => "spree/shared/_header",
  :add_to_attributes => "#header",
  :attributes => {:class => "navbar-fixed-top"},
  :name => "make_navbar_fixed"
)
