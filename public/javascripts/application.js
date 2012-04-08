function mark_for_destroy(element) {
	$(element).next('.should_destroy').value = 1;
	$(element).next('.should_destroy').up('.editable_photo').hide();
}

function mark_for_destroy_asset(element) {
	$(element).next('.should_destroy').value = 1;
	$(element).next('.should_destroy').up('.editable_asset').hide();
}

function mark_for_destroy_id(element, className) {
	$(element).next('.should_destroy').value = 1;
	$(element).next('.should_destroy').up("." + className).hide();
}

