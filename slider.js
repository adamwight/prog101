$.({
	// Run this block after the browser has loaded everything.

	// Depends on the jQuery UI "slider" library.
	$("#hours").slider({
		step: 0.1,
		start:function() {
			// Turn off any animation that might be running.
			// TODO: define above.
			anim = false;
		},
		slide:function() {
			hour = $(this).slider("value");
			update_sun();
			draw_sun();
		},
		stop:function() {
			renderframe();
		},
	});
});
