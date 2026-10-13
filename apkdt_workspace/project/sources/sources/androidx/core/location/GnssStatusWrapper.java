package androidx.core.location;

import android.location.GnssStatus;
import android.os.Build;
import androidx.core.graphics.Insets$$ExternalSyntheticApiModelOutline0;
import androidx.core.util.Preconditions;

/* loaded from: classes.dex */
class GnssStatusWrapper extends GnssStatusCompat {
    private final GnssStatus mWrapped;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GnssStatusWrapper(GnssStatus gnssStatus) {
        this.mWrapped = Insets$$ExternalSyntheticApiModelOutline0.m93m(Preconditions.checkNotNull(gnssStatus));
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSatelliteCount() {
        int satelliteCount;
        satelliteCount = this.mWrapped.getSatelliteCount();
        return satelliteCount;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getConstellationType(int i) {
        int constellationType;
        constellationType = this.mWrapped.getConstellationType(i);
        return constellationType;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSvid(int i) {
        int svid;
        svid = this.mWrapped.getSvid(i);
        return svid;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCn0DbHz(int i) {
        float cn0DbHz;
        cn0DbHz = this.mWrapped.getCn0DbHz(i);
        return cn0DbHz;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getElevationDegrees(int i) {
        float elevationDegrees;
        elevationDegrees = this.mWrapped.getElevationDegrees(i);
        return elevationDegrees;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getAzimuthDegrees(int i) {
        float azimuthDegrees;
        azimuthDegrees = this.mWrapped.getAzimuthDegrees(i);
        return azimuthDegrees;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasEphemerisData(int i) {
        boolean hasEphemerisData;
        hasEphemerisData = this.mWrapped.hasEphemerisData(i);
        return hasEphemerisData;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasAlmanacData(int i) {
        boolean hasAlmanacData;
        hasAlmanacData = this.mWrapped.hasAlmanacData(i);
        return hasAlmanacData;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean usedInFix(int i) {
        boolean usedInFix;
        usedInFix = this.mWrapped.usedInFix(i);
        return usedInFix;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasCarrierFrequencyHz(int i) {
        boolean hasCarrierFrequencyHz;
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        hasCarrierFrequencyHz = this.mWrapped.hasCarrierFrequencyHz(i);
        return hasCarrierFrequencyHz;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCarrierFrequencyHz(int i) {
        float carrierFrequencyHz;
        if (Build.VERSION.SDK_INT >= 26) {
            carrierFrequencyHz = this.mWrapped.getCarrierFrequencyHz(i);
            return carrierFrequencyHz;
        }
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasBasebandCn0DbHz(int i) {
        boolean hasBasebandCn0DbHz;
        if (Build.VERSION.SDK_INT < 30) {
            return false;
        }
        hasBasebandCn0DbHz = this.mWrapped.hasBasebandCn0DbHz(i);
        return hasBasebandCn0DbHz;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getBasebandCn0DbHz(int i) {
        float basebandCn0DbHz;
        if (Build.VERSION.SDK_INT >= 30) {
            basebandCn0DbHz = this.mWrapped.getBasebandCn0DbHz(i);
            return basebandCn0DbHz;
        }
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        boolean equals;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GnssStatusWrapper)) {
            return false;
        }
        equals = this.mWrapped.equals(((GnssStatusWrapper) obj).mWrapped);
        return equals;
    }

    public int hashCode() {
        int hashCode;
        hashCode = this.mWrapped.hashCode();
        return hashCode;
    }
}
