// ----------Create-------------

threshold = .2; // omit input if below threshold. avoid unintended action.
device = 0;
spd = 4;

// ---------End----------------

// get_gamepad_input
xaxis = gamepad_axis_value(device, gp_axislh);
yaxis = gamepad_axis_value(device, gp_axislv);
magnitude = point_distance(0, 0, xaxis, yaxis);

if (magnitude > 1) magnitude = 1;

// move player only if exceed threshold
if (magnitude >= threshold) {
	x += xaxis*spd; // push distance determines move speed
	y += yaxis*spd;
}
