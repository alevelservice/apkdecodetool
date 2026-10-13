package com.google.android.gms.location;

import android.app.PendingIntent;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.common.api.Status;

@Deprecated
/* loaded from: classes.dex */
public interface a {
    com.google.android.gms.common.api.h<Status> a(com.google.android.gms.common.api.f fVar, PendingIntent pendingIntent);

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    com.google.android.gms.common.api.h<Status> a(com.google.android.gms.common.api.f fVar, LocationRequest locationRequest, PendingIntent pendingIntent);
}
