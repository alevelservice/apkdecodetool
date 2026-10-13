package com.google.android.gms.ads;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.internal.ads.zzxb;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@KeepForSdkWithMembers
/* loaded from: classes.dex */
public class MobileAdsInitProvider extends ContentProvider {

    /* renamed from: e, reason: collision with root package name */
    private final zzxb f4457e = new zzxb();

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        this.f4457e.attachInfo(context, providerInfo);
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, String str, String[] strArr) {
        return this.f4457e.delete(uri, str, strArr);
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return this.f4457e.getType(uri);
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, ContentValues contentValues) {
        return this.f4457e.insert(uri, contentValues);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return this.f4457e.onCreate();
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return this.f4457e.query(uri, strArr, str, strArr2, str2);
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return this.f4457e.update(uri, contentValues, str, strArr);
    }
}
