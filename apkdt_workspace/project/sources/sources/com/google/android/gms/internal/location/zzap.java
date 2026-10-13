package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.location.ActivityTransitionRequest;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationSettingsRequest;

/* loaded from: classes.dex */
public final class zzap extends zza implements zzao {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzap(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final Location zza(String str) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        Parcel transactAndReadException = transactAndReadException(21, obtainAndWriteInterfaceToken);
        Location location = (Location) q.a(transactAndReadException, Location.CREATOR);
        transactAndReadException.recycle();
        return location;
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(long j2, boolean z, PendingIntent pendingIntent) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeLong(j2);
        q.a(obtainAndWriteInterfaceToken, true);
        q.a(obtainAndWriteInterfaceToken, pendingIntent);
        transactAndReadExceptionReturnVoid(5, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(PendingIntent pendingIntent, IStatusCallback iStatusCallback) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q.a(obtainAndWriteInterfaceToken, pendingIntent);
        q.a(obtainAndWriteInterfaceToken, iStatusCallback);
        transactAndReadExceptionReturnVoid(73, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(Location location) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q.a(obtainAndWriteInterfaceToken, location);
        transactAndReadExceptionReturnVoid(13, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(zzaj zzajVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q.a(obtainAndWriteInterfaceToken, zzajVar);
        transactAndReadExceptionReturnVoid(67, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(zzbf zzbfVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q.a(obtainAndWriteInterfaceToken, zzbfVar);
        transactAndReadExceptionReturnVoid(59, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(zzo zzoVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q.a(obtainAndWriteInterfaceToken, zzoVar);
        transactAndReadExceptionReturnVoid(75, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(ActivityTransitionRequest activityTransitionRequest, PendingIntent pendingIntent, IStatusCallback iStatusCallback) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q.a(obtainAndWriteInterfaceToken, activityTransitionRequest);
        q.a(obtainAndWriteInterfaceToken, pendingIntent);
        q.a(obtainAndWriteInterfaceToken, iStatusCallback);
        transactAndReadExceptionReturnVoid(72, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, zzam zzamVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q.a(obtainAndWriteInterfaceToken, geofencingRequest);
        q.a(obtainAndWriteInterfaceToken, pendingIntent);
        q.a(obtainAndWriteInterfaceToken, zzamVar);
        transactAndReadExceptionReturnVoid(57, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(LocationSettingsRequest locationSettingsRequest, zzaq zzaqVar, String str) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q.a(obtainAndWriteInterfaceToken, locationSettingsRequest);
        q.a(obtainAndWriteInterfaceToken, zzaqVar);
        obtainAndWriteInterfaceToken.writeString(str);
        transactAndReadExceptionReturnVoid(63, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(com.google.android.gms.location.zzal zzalVar, zzam zzamVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q.a(obtainAndWriteInterfaceToken, zzalVar);
        q.a(obtainAndWriteInterfaceToken, zzamVar);
        transactAndReadExceptionReturnVoid(74, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(boolean z) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q.a(obtainAndWriteInterfaceToken, z);
        transactAndReadExceptionReturnVoid(12, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final LocationAvailability zzb(String str) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        Parcel transactAndReadException = transactAndReadException(34, obtainAndWriteInterfaceToken);
        LocationAvailability locationAvailability = (LocationAvailability) q.a(transactAndReadException, LocationAvailability.CREATOR);
        transactAndReadException.recycle();
        return locationAvailability;
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zzb(PendingIntent pendingIntent) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q.a(obtainAndWriteInterfaceToken, pendingIntent);
        transactAndReadExceptionReturnVoid(6, obtainAndWriteInterfaceToken);
    }
}
