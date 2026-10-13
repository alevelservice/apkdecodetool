package com.mapbox.android.telemetry.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.android.telemetry.errors.TokenChangeBroadcastReceiver;
import com.mapbox.android.telemetry.location.a;
import e.m.a.a.c.c;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class MapboxTelemetryInitProvider extends ContentProvider {
    private static void a(@NonNull ProviderInfo providerInfo) {
        if (providerInfo != null) {
            if ("com.mapbox.android.telemetry.provider.mapboxtelemetryinitprovider".equals(providerInfo.authority)) {
                throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
            }
            return;
        }
        throw new IllegalStateException("MapboxTelemetryInitProvider: ProviderInfo cannot be null.");
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        a(providerInfo);
        super.attachInfo(context, providerInfo);
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        try {
            TokenChangeBroadcastReceiver.register(getContext());
            c.a(getContext(), "com.mapbox.android.telemetry", "5.0.1");
            a.a(getContext(), TimeUnit.HOURS.toMillis(24L));
            return false;
        } catch (Throwable th) {
            th.toString();
            return false;
        }
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }
}
