package com.google.android.gms.measurement.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.zzb;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzdz extends zzb implements zzdx {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final void zza(zzai zzaiVar, zzn zznVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zzaiVar);
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zznVar);
        zza(1, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final void zzb(zzn zznVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zznVar);
        zza(6, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final String zzc(zzn zznVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zznVar);
        Parcel transactAndReadException = transactAndReadException(11, obtainAndWriteInterfaceToken);
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final void zzd(zzn zznVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zznVar);
        zza(18, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final void zzb(zzq zzqVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zzqVar);
        zza(13, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final void zza(zzjn zzjnVar, zzn zznVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zzjnVar);
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zznVar);
        zza(2, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final List<zzq> zzc(String str, String str2, String str3) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        obtainAndWriteInterfaceToken.writeString(str3);
        Parcel transactAndReadException = transactAndReadException(17, obtainAndWriteInterfaceToken);
        ArrayList createTypedArrayList = transactAndReadException.createTypedArrayList(zzq.CREATOR);
        transactAndReadException.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final void zza(zzn zznVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zznVar);
        zza(4, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final void zza(zzai zzaiVar, String str, String str2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zzaiVar);
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        zza(5, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final List<zzjn> zza(zzn zznVar, boolean z) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zznVar);
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, z);
        Parcel transactAndReadException = transactAndReadException(7, obtainAndWriteInterfaceToken);
        ArrayList createTypedArrayList = transactAndReadException.createTypedArrayList(zzjn.CREATOR);
        transactAndReadException.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final byte[] zza(zzai zzaiVar, String str) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zzaiVar);
        obtainAndWriteInterfaceToken.writeString(str);
        Parcel transactAndReadException = transactAndReadException(9, obtainAndWriteInterfaceToken);
        byte[] createByteArray = transactAndReadException.createByteArray();
        transactAndReadException.recycle();
        return createByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final void zza(long j2, String str, String str2, String str3) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeLong(j2);
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        obtainAndWriteInterfaceToken.writeString(str3);
        zza(10, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final void zza(zzq zzqVar, zzn zznVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zzqVar);
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zznVar);
        zza(12, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final List<zzjn> zza(String str, String str2, boolean z, zzn zznVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, z);
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zznVar);
        Parcel transactAndReadException = transactAndReadException(14, obtainAndWriteInterfaceToken);
        ArrayList createTypedArrayList = transactAndReadException.createTypedArrayList(zzjn.CREATOR);
        transactAndReadException.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final List<zzjn> zza(String str, String str2, String str3, boolean z) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        obtainAndWriteInterfaceToken.writeString(str3);
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, z);
        Parcel transactAndReadException = transactAndReadException(15, obtainAndWriteInterfaceToken);
        ArrayList createTypedArrayList = transactAndReadException.createTypedArrayList(zzjn.CREATOR);
        transactAndReadException.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzdx
    public final List<zzq> zza(String str, String str2, zzn zznVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        com.google.android.gms.internal.measurement.d2.a(obtainAndWriteInterfaceToken, zznVar);
        Parcel transactAndReadException = transactAndReadException(16, obtainAndWriteInterfaceToken);
        ArrayList createTypedArrayList = transactAndReadException.createTypedArrayList(zzq.CREATOR);
        transactAndReadException.recycle();
        return createTypedArrayList;
    }
}
