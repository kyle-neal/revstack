defmodule RevstackWeb.LayoutsScrollTopTest do
  use RevstackWeb.ConnCase, async: true

  import Phoenix.LiveViewTest

  test "Home link dispatches scroll-to-top", %{conn: conn} do
    {:ok, view, _html} = live(conn, ~p"/")

    assert has_element?(view, "#nav-brand")
    assert has_element?(view, "#nav-home")
    assert has_element?(view, "#mobile-nav-home")

    html = render(view)
    document = LazyHTML.from_fragment(html)

    nav_brand = LazyHTML.query_by_id(document, "nav-brand")
    nav_home = LazyHTML.query_by_id(document, "nav-home")
    mobile_nav_home = LazyHTML.query_by_id(document, "mobile-nav-home")

    assert home_link_wired_for_scroll_top?(nav_brand)
    assert home_link_wired_for_scroll_top?(nav_home)
    assert home_link_wired_for_scroll_top?(mobile_nav_home)
  end

  defp home_link_wired_for_scroll_top?(lazy_html) do
    tree = LazyHTML.to_tree(lazy_html, sort_attributes: true, skip_whitespace_nodes: true)

    case tree do
      [{"a", attrs, _children}] ->
        Enum.any?(attrs, fn
          {"data-scroll-top", "true"} -> true
          {"data-scroll-top", ""} -> true
          {"data-scroll-top", _val} -> true
          _ -> false
        end)

      _ ->
        false
    end
  end
end
