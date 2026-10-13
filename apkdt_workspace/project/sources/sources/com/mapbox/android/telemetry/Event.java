package com.mapbox.android.telemetry;

import android.os.Parcelable;
import java.util.EnumSet;

/* loaded from: classes2.dex */
public abstract class Event implements Parcelable {
    static EnumSet<a> visionEventTypes = EnumSet.of(a.VIS_GENERAL, a.VIS_ATTACHMENT, a.VIS_OBJ_DETECTION);

    @Deprecated
    /* loaded from: classes2.dex */
    public enum a {
        TURNSTILE,
        MAP_LOAD,
        MAP_CLICK,
        MAP_DRAGEND,
        OFFLINE_DOWNLOAD_START,
        OFFLINE_DOWNLOAD_COMPLETE,
        LOCATION,
        NAV_DEPART,
        NAV_ARRIVE,
        NAV_CANCEL,
        NAV_REROUTE,
        NAV_FEEDBACK,
        NAV_FASTER_ROUTE,
        VIS_GENERAL,
        VIS_ATTACHMENT,
        VIS_OBJ_DETECTION,
        NO_OP,
        CRASH
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a obtainType() {
        return a.NO_OP;
    }
}
