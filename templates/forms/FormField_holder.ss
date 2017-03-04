<% if Title %>
<div id="$Name" class="form-group field<% if extraClass %> $extraClass<% end_if %>">
	<% if Title %><label class="form-control-label col-form-label" for="$ID">$Title</label><% else %><label class="form-control-label col-form-label" for="$ID"></label><% end_if %>
	<div class="form-control-wrapper">
		$Field
	</div>
	<% if Message %><p class="help-block $MessageType">$Message</p><% end_if %>
</div>
<% else %>
	$Field
<% end_if %>
