<div id="$Name" class="form-group field<% if $extraClass %> $extraClass<% end_if %>">
	<% if $Title %><label class="form-control-label col-form-label">$Title</label><% end_if %>
	<div class="form-control-wrapper">
		$Field
    <% if $RightTitle %><label class="right">$RightTitle</label><% end_if %>
  	<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
  	<% if $Description %><small class="description text-muted">$Description</small><% end_if %>
	</div>
</div>
