<div class="subnav">
	<nav class="panel panel-default">
	    <% loop $Level(1) %>
	    <div class="panel-heading">
	        <h3 class="panel-title"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></h3>
	    </div>
	    <div class="panel-body">
			<p>$Content.FirstParagraph()</p>
		</div>
	    <% end_loop %>
	    <ul class="list-group list-group-flush">
			<% loop $Menu(2) %>
			<li class="$LinkingMode list-group-item">
		        <a href="$Link" title="$Title.XML"<% if LinkOrCurrent = current %> class=" active"<% end_if %>>$MenuTitle.XML</a>
				<% if $Children %>
					<ul class="list-group list-group-flush list-group-sub">
					<% loop $Children %>
		        		<li class="list-group-item"><a href="$Link" title="$Title.XML" <% if LinkOrCurrent = current %> class="active"<% end_if %>><small>$MenuTitle.XML</small></a></li>
					<% end_loop %>
					</ul>
				<% end_if %>
			</li>
			<% end_loop %>
		</ul>
	</nav>
</div>
