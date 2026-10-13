package com.google.firebase.crashlytics.d.h;

import androidx.annotation.NonNull;

/* compiled from: DataTransportState.java */
/* loaded from: classes.dex */
public enum u {
    NONE,
    JAVA_ONLY,
    ALL;

    static final int REPORT_UPLOAD_VARIANT_DATATRANSPORT = 2;
    static final int REPORT_UPLOAD_VARIANT_LEGACY = 1;

    @NonNull
    static u getState(boolean z, boolean z2) {
        if (!z) {
            return NONE;
        }
        if (!z2) {
            return JAVA_ONLY;
        }
        return ALL;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static u getState(@NonNull com.google.firebase.crashlytics.d.o.i.b bVar) {
        return getState(bVar.f14714g == 2, bVar.f14715h == 2);
    }
}
