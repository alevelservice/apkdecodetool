package com.mapbox.mapboxsdk.style.light;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public class Position {

    @Keep
    private float azimuthalAngle;

    @Keep
    private float polarAngle;

    @Keep
    private float radialCoordinate;

    public Position(float f2, float f3, float f4) {
        this.radialCoordinate = f2;
        this.azimuthalAngle = f3;
        this.polarAngle = f4;
    }

    @Keep
    public static Position fromPosition(float f2, float f3, float f4) {
        return new Position(f2, f3, f4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Position.class != obj.getClass()) {
            return false;
        }
        Position position = (Position) obj;
        return Float.compare(position.radialCoordinate, this.radialCoordinate) == 0 && Float.compare(position.azimuthalAngle, this.azimuthalAngle) == 0 && Float.compare(position.polarAngle, this.polarAngle) == 0;
    }

    public int hashCode() {
        float f2 = this.radialCoordinate;
        int floatToIntBits = (f2 != 0.0f ? Float.floatToIntBits(f2) : 0) * 31;
        float f3 = this.azimuthalAngle;
        int floatToIntBits2 = (floatToIntBits + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0)) * 31;
        float f4 = this.polarAngle;
        return floatToIntBits2 + (f4 != 0.0f ? Float.floatToIntBits(f4) : 0);
    }

    @NonNull
    public String toString() {
        return "Position{radialCoordinate=" + this.radialCoordinate + ", azimuthalAngle=" + this.azimuthalAngle + ", polarAngle=" + this.polarAngle + '}';
    }
}
