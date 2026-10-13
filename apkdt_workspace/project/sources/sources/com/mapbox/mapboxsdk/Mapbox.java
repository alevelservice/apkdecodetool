package com.mapbox.mapboxsdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.AssetManager;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.z;
import com.mapbox.mapboxsdk.net.ConnectivityReceiver;
import com.mapbox.mapboxsdk.storage.FileSource;

@Keep
@SuppressLint({"StaticFieldLeak"})
@UiThread
/* loaded from: classes2.dex */
public final class Mapbox {
    private static Mapbox INSTANCE = null;
    private static final String TAG = "Mbgl-Mapbox";
    private static f moduleProvider;

    @Nullable
    private String accessToken;

    @Nullable
    private a accounts;
    private Context context;

    @Nullable
    private z telemetry;

    Mapbox(@NonNull Context context, @Nullable String str) {
        this.context = context;
        this.accessToken = str;
    }

    @Nullable
    public static String getAccessToken() {
        validateMapbox();
        return INSTANCE.accessToken;
    }

    @NonNull
    public static Context getApplicationContext() {
        validateMapbox();
        return INSTANCE.context;
    }

    private static AssetManager getAssetManager() {
        return getApplicationContext().getResources().getAssets();
    }

    @NonNull
    @UiThread
    public static synchronized Mapbox getInstance(@NonNull Context context, @Nullable String str) {
        Mapbox mapbox;
        synchronized (Mapbox.class) {
            com.mapbox.mapboxsdk.utils.g.a(context);
            com.mapbox.mapboxsdk.utils.g.a(TAG);
            if (INSTANCE == null) {
                Context applicationContext = context.getApplicationContext();
                FileSource.g(applicationContext);
                INSTANCE = new Mapbox(applicationContext, str);
                if (isAccessTokenValid(str)) {
                    initializeTelemetry();
                    INSTANCE.accounts = new a();
                }
                ConnectivityReceiver.instance(applicationContext);
            }
            mapbox = INSTANCE;
        }
        return mapbox;
    }

    @NonNull
    public static f getModuleProvider() {
        if (moduleProvider == null) {
            moduleProvider = new g();
        }
        return moduleProvider;
    }

    public static String getSkuToken() {
        a aVar;
        if (hasInstance() && (aVar = INSTANCE.accounts) != null) {
            return aVar.a();
        }
        throw new com.mapbox.mapboxsdk.r.d("A valid access token parameter is required when using a Mapbox service.\nPlease see https://www.mapbox.com/help/create-api-access-token/ to learn how to create one.\nMore information in this guide https://www.mapbox.com/help/first-steps-android-sdk/#access-tokens.Currently provided token is: " + INSTANCE.accessToken);
    }

    @Nullable
    public static z getTelemetry() {
        if (hasInstance()) {
            return INSTANCE.telemetry;
        }
        return null;
    }

    public static boolean hasInstance() {
        return INSTANCE != null;
    }

    private static void initializeTelemetry() {
        try {
            INSTANCE.telemetry = getModuleProvider().a();
        } catch (Exception e2) {
            Logger.e(TAG, "Error occurred while initializing telemetry", e2);
            d.a("Error occurred while initializing telemetry", e2);
        }
    }

    static boolean isAccessTokenValid(@Nullable String str) {
        if (str == null) {
            return false;
        }
        String lowerCase = str.trim().toLowerCase(com.mapbox.mapboxsdk.q.a.f16232a);
        if (lowerCase.length() != 0) {
            return lowerCase.startsWith("pk.") || lowerCase.startsWith("sk.");
        }
        return false;
    }

    public static synchronized Boolean isConnected() {
        Boolean valueOf;
        synchronized (Mapbox.class) {
            validateMapbox();
            valueOf = Boolean.valueOf(ConnectivityReceiver.instance(INSTANCE.context).isConnected());
        }
        return valueOf;
    }

    public static void setAccessToken(String str) {
        validateMapbox();
        Mapbox mapbox = INSTANCE;
        mapbox.accessToken = str;
        z zVar = mapbox.telemetry;
        if (zVar != null) {
            zVar.disableTelemetrySession();
            INSTANCE.telemetry = null;
        }
        if (isAccessTokenValid(str)) {
            initializeTelemetry();
            INSTANCE.accounts = new a();
        } else {
            INSTANCE.accounts = null;
        }
        FileSource.d(getApplicationContext()).setAccessToken(str);
    }

    public static synchronized void setConnected(Boolean bool) {
        synchronized (Mapbox.class) {
            validateMapbox();
            ConnectivityReceiver.instance(INSTANCE.context).setConnected(bool);
        }
    }

    private static void validateMapbox() {
        if (INSTANCE == null) {
            throw new com.mapbox.mapboxsdk.r.d();
        }
    }
}
