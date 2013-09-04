        <ul class="nav navbar-nav">
        <% loop $Menu(1) %>
            <li<% if LinkOrCurrent = current %> class="active"<% end_if %>><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
        <% end_loop %>
        </ul>