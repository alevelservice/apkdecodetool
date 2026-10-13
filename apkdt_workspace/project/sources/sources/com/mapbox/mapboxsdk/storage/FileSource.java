package com.mapbox.mapboxsdk.storage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Environment;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.mapbox.android.accounts.v1.AccountsConstants;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.d;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.utils.g;
import java.io.File;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes2.dex */
public class FileSource {

    /* renamed from: a, reason: collision with root package name */
    private static final Lock f16254a = new ReentrantLock();

    /* renamed from: b, reason: collision with root package name */
    private static final Lock f16255b = new ReentrantLock();

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private static String f16256c;

    /* renamed from: d, reason: collision with root package name */
    private static String f16257d;

    /* renamed from: e, reason: collision with root package name */
    private static FileSource f16258e;

    @Keep
    private long nativePtr;

    @Keep
    /* loaded from: classes2.dex */
    public interface ResourceTransformCallback {
        String onURL(int i2, String str);
    }

    @Keep
    /* loaded from: classes2.dex */
    public interface ResourcesCachePathChangeCallback {
        void onError(@NonNull String str);

        void onSuccess(@NonNull String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a extends AsyncTask<Context, Void, String[]> {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        @NonNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String[] doInBackground(Context... contextArr) {
            return new String[]{FileSource.b(contextArr[0]), contextArr[0].getCacheDir().getAbsolutePath()};
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            FileSource.d();
        }

        /* synthetic */ a(com.mapbox.mapboxsdk.storage.a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(String[] strArr) {
            String unused = FileSource.f16256c = strArr[0];
            String unused2 = FileSource.f16257d = strArr[1];
            FileSource.d();
        }
    }

    private FileSource(String str) {
        initialize(Mapbox.getAccessToken(), str);
    }

    @NonNull
    private static String c(@NonNull Context context) {
        File externalFilesDir;
        if (h(context) && b() && (externalFilesDir = context.getExternalFilesDir(null)) != null) {
            return externalFilesDir.getAbsolutePath();
        }
        return context.getFilesDir().getAbsolutePath();
    }

    @UiThread
    public static synchronized FileSource d(@NonNull Context context) {
        FileSource fileSource;
        synchronized (FileSource.class) {
            if (f16258e == null) {
                f16258e = new FileSource(f(context));
            }
            fileSource = f16258e;
        }
        return fileSource;
    }

    public static String e(@NonNull Context context) {
        f16255b.lock();
        try {
            if (f16257d == null) {
                f16257d = context.getCacheDir().getAbsolutePath();
            }
            return f16257d;
        } finally {
            f16255b.unlock();
        }
    }

    @NonNull
    public static String f(@NonNull Context context) {
        f16254a.lock();
        try {
            if (f16256c == null) {
                f16256c = b(context);
            }
            return f16256c;
        } finally {
            f16254a.unlock();
        }
    }

    @UiThread
    public static void g(Context context) {
        g.a("Mbgl-FileSource");
        c();
        if (f16256c == null || f16257d == null) {
            new a(null).execute(context);
        }
    }

    private static boolean h(@NonNull Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo.metaData != null) {
                return applicationInfo.metaData.getBoolean("com.mapbox.SetStorageExternal", false);
            }
            return false;
        } catch (PackageManager.NameNotFoundException e2) {
            Logger.e("Mbgl-FileSource", "Failed to read the package metadata: ", e2);
            d.a(e2);
            return false;
        } catch (Exception e3) {
            Logger.e("Mbgl-FileSource", "Failed to read the storage key: ", e3);
            d.a(e3);
            return false;
        }
    }

    @Keep
    private native void initialize(String str, String str2);

    @Keep
    private native void setResourceCachePath(String str, ResourcesCachePathChangeCallback resourcesCachePathChangeCallback);

    @Keep
    public native void activate();

    @Keep
    public native void deactivate();

    @Keep
    protected native void finalize();

    @NonNull
    @Keep
    public native String getAccessToken();

    @Keep
    public native boolean isActivated();

    @Keep
    public native void setAccessToken(String str);

    @Keep
    public native void setApiBaseUrl(String str);

    @Keep
    public native void setResourceTransform(ResourceTransformCallback resourceTransformCallback);

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static String b(@NonNull Context context) {
        String string = context.getSharedPreferences(AccountsConstants.MAPBOX_SHARED_PREFERENCES, 0).getString("fileSourceResourcesCachePath", null);
        if (c(string)) {
            return string;
        }
        String c2 = c(context);
        context.getSharedPreferences(AccountsConstants.MAPBOX_SHARED_PREFERENCES, 0).edit().remove("fileSourceResourcesCachePath").apply();
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d() {
        f16254a.unlock();
        f16255b.unlock();
    }

    private static boolean c(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        return new File(str).canWrite();
    }

    private static void c() {
        f16255b.lock();
        f16254a.lock();
    }

    public static boolean b() {
        String externalStorageState = Environment.getExternalStorageState();
        if ("mounted".equals(externalStorageState) || "mounted_ro".equals(externalStorageState)) {
            return true;
        }
        Logger.w("Mbgl-FileSource", "External storage was requested but it isn't readable. For API level < 18 make sure you've requested READ_EXTERNAL_STORAGE or WRITE_EXTERNAL_STORAGE permissions in your app Manifest (defaulting to internal storage).");
        return false;
    }
}
