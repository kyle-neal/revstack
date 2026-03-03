defmodule RevstackWeb.LayoutsScrollTopTest do
  use RevstackWeb.ConnCase, async: true

  import Phoenix.LiveViewTest

  test "Home link dispatches scroll-to-top", %{conn: conn} do
    {:ok, view, _html} = live(conn, ~p"/")

    assert has_element?(view, "#nav-home")
    assert has_element?(view, "#mobile-nav-home")

    html = render(view)
    document = LazyHTML.from_fragment(html)

    nav_home = LazyHTML.query_by_id(document, "nav-home")
    mobile_nav_home = LazyHTML.query_by_id(document, "mobile-nav-home")

    assert home_link_wired_for_scroll_top?(nav_home)
    assert home_link_wired_for_scroll_top?(mobile_nav_home)
  end

  defp home_link_wired_for_scroll_top?(lazy_html) do
    tree = LazyHTML.to_tree(lazy_html, sort_attributes: true, skip_whitespace_nodes: true)

    case tree do
      [{"a", attrs, _children}] ->
        has_phx_click? =
          Enum.any?(attrs, fn {key, _val} ->
            key in ["phx-click", "phx-click-capture"]
          end)

        has_scroll_top_value? =
          Enum.any?(attrs, fn {_key, val} ->
            is_binary(val) and String.contains?(val, "scroll-top")
          end)

        has_phx_click? and has_scroll_top_value?

      _ ->
        false
    end
  end
end
