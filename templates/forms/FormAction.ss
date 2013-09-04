<% if UseButtonTag %>
<div class="form-group">
	<button class="btn btn-default" $AttributesHTML>
		<% if ButtonContent %>$ButtonContent<% else %>$Title<% end_if %>
	</button>
</div>
<% else %>
<div class="form-group">
	<input class="btn btn-default" $AttributesHTML />
</div>
<% end_if %>