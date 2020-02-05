public void setup() {
    size(500, 500);
    fractal(width / 2, height / 2, Math.min(width / 2, height / 2));
}


public void fractal(int x, int y, int size) {
    push();
    translate(x, y);
    float units = size / 400.0;
    line(0, -400 * units, 66.46 * units, -269.565 * units);
    arc_(78.043 * units + x, -275.467 * units + y, 66.46 * units, 13, 87);
    line(84.543 * units, -264.208 * units, 150 * units, -302 * units);
    pop();
}

public void arc_(float center_x, float center_y, float tangent_point_x, float radius, float central_angle) {
    arc(center_x, center_y, radius * 2, radius * 2, acos((center_x - tangent_point_x) / radius * 2), acos((center_x - tangent_point_x) / radius * 2) + central_angle * PI / 180);
}
