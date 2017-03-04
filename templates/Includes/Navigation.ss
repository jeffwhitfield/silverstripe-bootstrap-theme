        <ul class="nav navbar-nav mr-auto">
        <% loop $Menu(1) %>
            <% if $Children %>
            <li class="nav-item dropdown<% if LinkOrCurrent = current %> active<% end_if %>">
                <a href="$Link" title="$Title.XML" class="nav-link dropdown-toggle" id="nav-menu-{$Pos}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">$MenuTitle.XML</a>
                <ul class="dropdown-menu" aria-labelledby="nav-menu-{$Pos}">
                <% loop $Children %>
                    <li<% if LinkOrCurrent = current %>class="active"<% end_if %>>
                      <a class="dropdown-item" href="$Link" title="$Title.XML">$MenuTitle.XML</a>
                    </li>
                <% end_loop %>
                </ul>
            </li>
            <% else %>
            <li class="nav-item<% if LinkOrCurrent = current %> active<% end_if %>">
              <a class="nav-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a>
            </li>
            <% end_if %>
        <% end_loop %>
        </ul>
