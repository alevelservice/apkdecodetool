package com.mapbox.mapboxsdk.offline;

import android.os.Parcelable;
import androidx.annotation.Keep;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;

@Keep
/* loaded from: classes2.dex */
public interface OfflineRegionDefinition extends Parcelable {
    LatLngBounds getBounds();

    boolean getIncludeIdeographs();

    double getMaxZoom();

    double getMinZoom();

    float getPixelRatio();

    String getStyleURL();

    String getType();
}
