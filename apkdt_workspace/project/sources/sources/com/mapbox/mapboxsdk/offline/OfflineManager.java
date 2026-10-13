package com.mapbox.mapboxsdk.offline;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.mapbox.mapboxsdk.b;
import com.mapbox.mapboxsdk.storage.FileSource;
import com.mapbox.mapboxsdk.utils.d;
import java.io.File;

@UiThread
/* loaded from: classes2.dex */
public class OfflineManager {

    /* renamed from: d, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static OfflineManager f16170d;

    /* renamed from: a, reason: collision with root package name */
    private final FileSource f16171a;

    /* renamed from: b, reason: collision with root package name */
    private final Handler f16172b = new Handler(Looper.getMainLooper());

    /* renamed from: c, reason: collision with root package name */
    private Context f16173c;

    @Keep
    private long nativePtr;

    @Keep
    /* loaded from: classes2.dex */
    public interface CreateOfflineRegionCallback {
        void onCreate(OfflineRegion offlineRegion);

        void onError(String str);
    }

    @Keep
    /* loaded from: classes2.dex */
    public interface FileSourceCallback {
        void onError(@NonNull String str);

        void onSuccess();
    }

    @Keep
    /* loaded from: classes2.dex */
    public interface ListOfflineRegionsCallback {
        void onError(String str);

        void onList(OfflineRegion[] offlineRegionArr);
    }

    @Keep
    /* loaded from: classes2.dex */
    public interface MergeOfflineRegionsCallback {
        void onError(String str);

        void onMerge(OfflineRegion[] offlineRegionArr);
    }

    /* loaded from: classes2.dex */
    class a implements FileSourceCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ FileSourceCallback f16174a;

        /* renamed from: com.mapbox.mapboxsdk.offline.OfflineManager$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0162a implements Runnable {
            RunnableC0162a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                OfflineManager.this.f16171a.deactivate();
                FileSourceCallback fileSourceCallback = a.this.f16174a;
                if (fileSourceCallback != null) {
                    fileSourceCallback.onSuccess();
                }
            }
        }

        /* loaded from: classes2.dex */
        class b implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f16177e;

            b(String str) {
                this.f16177e = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                OfflineManager.this.f16171a.deactivate();
                FileSourceCallback fileSourceCallback = a.this.f16174a;
                if (fileSourceCallback != null) {
                    fileSourceCallback.onError(this.f16177e);
                }
            }
        }

        a(FileSourceCallback fileSourceCallback) {
            this.f16174a = fileSourceCallback;
        }

        @Override // com.mapbox.mapboxsdk.offline.OfflineManager.FileSourceCallback
        public void onError(@NonNull String str) {
            OfflineManager.this.f16172b.post(new b(str));
        }

        @Override // com.mapbox.mapboxsdk.offline.OfflineManager.FileSourceCallback
        public void onSuccess() {
            OfflineManager.this.f16172b.post(new RunnableC0162a());
        }
    }

    static {
        b.a();
    }

    private OfflineManager(Context context) {
        this.f16173c = context.getApplicationContext();
        this.f16171a = FileSource.d(this.f16173c);
        initialize(this.f16171a);
        a(this.f16173c);
    }

    @Keep
    private native void createOfflineRegion(FileSource fileSource, OfflineRegionDefinition offlineRegionDefinition, byte[] bArr, CreateOfflineRegionCallback createOfflineRegionCallback);

    @Keep
    private native void initialize(FileSource fileSource);

    @Keep
    private native void listOfflineRegions(FileSource fileSource, ListOfflineRegionsCallback listOfflineRegionsCallback);

    @Keep
    private native void mergeOfflineRegions(FileSource fileSource, String str, MergeOfflineRegionsCallback mergeOfflineRegionsCallback);

    @Keep
    private native void nativeClearAmbientCache(@Nullable FileSourceCallback fileSourceCallback);

    @Keep
    private native void nativeInvalidateAmbientCache(@Nullable FileSourceCallback fileSourceCallback);

    @Keep
    private native void nativePackDatabase(@Nullable FileSourceCallback fileSourceCallback);

    @Keep
    private native void nativeResetDatabase(@Nullable FileSourceCallback fileSourceCallback);

    @Keep
    private native void nativeSetMaximumAmbientCacheSize(long j2, @Nullable FileSourceCallback fileSourceCallback);

    @Keep
    protected native void finalize();

    @Keep
    public native void putResourceWithUrl(String str, byte[] bArr, long j2, long j3, String str2, boolean z);

    @Keep
    public native void runPackDatabaseAutomatically(boolean z);

    @Keep
    public native void setOfflineMapboxTileCountLimit(long j2);

    private void a(Context context) {
        d.a(FileSource.e(context) + File.separator + "mbgl-cache.db");
    }

    public static synchronized OfflineManager b(@NonNull Context context) {
        OfflineManager offlineManager;
        synchronized (OfflineManager.class) {
            if (f16170d == null) {
                f16170d = new OfflineManager(context);
            }
            offlineManager = f16170d;
        }
        return offlineManager;
    }

    public void a(@Nullable FileSourceCallback fileSourceCallback) {
        this.f16171a.activate();
        nativeInvalidateAmbientCache(new a(fileSourceCallback));
    }
}
