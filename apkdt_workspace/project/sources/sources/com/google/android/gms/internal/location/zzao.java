package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IInterface;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.location.ActivityTransitionRequest;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationSettingsRequest;

/* loaded from: classes.dex */
public interface zzao extends IInterface {
    Location zza(String str);

    void zza(long j2, boolean z, PendingIntent pendingIntent);

    void zza(PendingIntent pendingIntent, IStatusCallback iStatusCallback);

    void zza(Location location);

    void zza(zzaj zzajVar);

    void zza(zzbf zzbfVar);

    void zza(zzo zzoVar);

    void zza(ActivityTransitionRequest activityTransitionRequest, PendingIntent pendingIntent, IStatusCallback iStatusCallback);

    void zza(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, zzam zzamVar);

    void zza(LocationSettingsRequest locationSettingsRequest, zzaq zzaqVar, String str);

    void zza(com.google.android.gms.location.zzal zzalVar, zzam zzamVar);

    void zza(boolean z);

    LocationAvailability zzb(String str);

    void zzb(PendingIntent pendingIntent);
}
