package io.flutter.embedding.engine;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.Looper;
import android.view.Surface;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import g.a.c.a.n;
import io.flutter.embedding.engine.a;
import io.flutter.embedding.engine.mutatorsstack.FlutterMutatorsStack;
import io.flutter.plugin.platform.k;
import io.flutter.view.FlutterCallbackInformation;
import io.flutter.view.c;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

@Keep
/* loaded from: classes2.dex */
public class FlutterJNI {
    private static final String TAG = "FlutterJNI";

    @Nullable
    private static b asyncWaitForVsyncDelegate;

    @Nullable
    private static String observatoryUri;
    private static float refreshRateFPS;

    @Nullable
    private a accessibilityDelegate;

    @Nullable
    private g.a.c.b.a localizationPlugin;

    @Nullable
    private Long nativePlatformViewId;

    @Nullable
    private io.flutter.embedding.engine.e.c platformMessageHandler;

    @Nullable
    private k platformViewsController;

    @NonNull
    private final Set<a.b> engineLifecycleListeners = new CopyOnWriteArraySet();

    @NonNull
    private final Set<io.flutter.embedding.engine.h.b> flutterUiDisplayListeners = new CopyOnWriteArraySet();

    @NonNull
    private final Looper mainLooper = Looper.getMainLooper();

    /* loaded from: classes2.dex */
    public interface a {
        void a(@NonNull ByteBuffer byteBuffer, @NonNull String[] strArr);

        void b(@NonNull ByteBuffer byteBuffer, @NonNull String[] strArr);
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(long j2);
    }

    private static void asyncWaitForVsync(long j2) {
        b bVar = asyncWaitForVsyncDelegate;
        if (bVar != null) {
            bVar.a(j2);
            return;
        }
        throw new IllegalStateException("An AsyncWaitForVsyncDelegate must be registered with FlutterJNI before asyncWaitForVsync() is invoked.");
    }

    private void ensureAttachedToNative() {
        if (this.nativePlatformViewId == null) {
            throw new RuntimeException("Cannot execute operation because FlutterJNI is not attached to native.");
        }
    }

    private void ensureNotAttachedToNative() {
        if (this.nativePlatformViewId != null) {
            throw new RuntimeException("Cannot execute operation because FlutterJNI is attached to native.");
        }
    }

    private void ensureRunningOnMainThread() {
        if (Looper.myLooper() == this.mainLooper) {
            return;
        }
        throw new RuntimeException("Methods marked with @UiThread must be executed on the main thread. Current thread: " + Thread.currentThread().getName());
    }

    @Nullable
    public static String getObservatoryUri() {
        return observatoryUri;
    }

    private void handlePlatformMessageResponse(int i2, byte[] bArr) {
        io.flutter.embedding.engine.e.c cVar = this.platformMessageHandler;
        if (cVar != null) {
            cVar.a(i2, bArr);
        }
    }

    private native long nativeAttach(@NonNull FlutterJNI flutterJNI, boolean z);

    private native void nativeDestroy(long j2);

    private native void nativeDispatchEmptyPlatformMessage(long j2, @NonNull String str, int i2);

    private native void nativeDispatchPlatformMessage(long j2, @NonNull String str, @Nullable ByteBuffer byteBuffer, int i2, int i3);

    private native void nativeDispatchPointerDataPacket(long j2, @NonNull ByteBuffer byteBuffer, int i2);

    private native void nativeDispatchSemanticsAction(long j2, int i2, int i3, @Nullable ByteBuffer byteBuffer, int i4);

    private native Bitmap nativeGetBitmap(long j2);

    private native boolean nativeGetIsSoftwareRenderingEnabled();

    public static native void nativeInit(@NonNull Context context, @NonNull String[] strArr, @Nullable String str, @NonNull String str2, @NonNull String str3, long j2);

    private native void nativeInvokePlatformMessageEmptyResponseCallback(long j2, int i2);

    private native void nativeInvokePlatformMessageResponseCallback(long j2, int i2, @Nullable ByteBuffer byteBuffer, int i3);

    @NonNull
    public static native FlutterCallbackInformation nativeLookupCallbackInformation(long j2);

    private native void nativeMarkTextureFrameAvailable(long j2, long j3);

    private native void nativeNotifyLowMemoryWarning(long j2);

    public static native void nativeOnVsync(long j2, long j3, long j4);

    public static native void nativePrefetchDefaultFontManager();

    private native void nativeRegisterTexture(long j2, long j3, @NonNull SurfaceTexture surfaceTexture);

    private native void nativeRunBundleAndSnapshotFromLibrary(long j2, @NonNull String str, @Nullable String str2, @Nullable String str3, @NonNull AssetManager assetManager);

    private native void nativeSetAccessibilityFeatures(long j2, int i2);

    private native void nativeSetSemanticsEnabled(long j2, boolean z);

    private native void nativeSetViewportMetrics(long j2, float f2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15);

    private native void nativeSurfaceChanged(long j2, int i2, int i3);

    private native void nativeSurfaceCreated(long j2, @NonNull Surface surface);

    private native void nativeSurfaceDestroyed(long j2);

    private native void nativeSurfaceWindowChanged(long j2, @NonNull Surface surface);

    private native void nativeUnregisterTexture(long j2, long j3);

    private void onPreEngineRestart() {
        Iterator<a.b> it = this.engineLifecycleListeners.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    public static void setAsyncWaitForVsyncDelegate(@Nullable b bVar) {
        asyncWaitForVsyncDelegate = bVar;
    }

    public static void setRefreshRateFPS(float f2) {
        refreshRateFPS = f2;
    }

    @UiThread
    private void updateCustomAccessibilityActions(@NonNull ByteBuffer byteBuffer, @NonNull String[] strArr) {
        ensureRunningOnMainThread();
        a aVar = this.accessibilityDelegate;
        if (aVar != null) {
            aVar.a(byteBuffer, strArr);
        }
    }

    @UiThread
    private void updateSemantics(@NonNull ByteBuffer byteBuffer, @NonNull String[] strArr) {
        ensureRunningOnMainThread();
        a aVar = this.accessibilityDelegate;
        if (aVar != null) {
            aVar.b(byteBuffer, strArr);
        }
    }

    @UiThread
    public void addEngineLifecycleListener(@NonNull a.b bVar) {
        ensureRunningOnMainThread();
        this.engineLifecycleListeners.add(bVar);
    }

    @UiThread
    public void addIsDisplayingFlutterUiListener(@NonNull io.flutter.embedding.engine.h.b bVar) {
        ensureRunningOnMainThread();
        this.flutterUiDisplayListeners.add(bVar);
    }

    @UiThread
    public void attachToNative(boolean z) {
        ensureRunningOnMainThread();
        ensureNotAttachedToNative();
        this.nativePlatformViewId = Long.valueOf(performNativeAttach(this, z));
    }

    @VisibleForTesting
    String[] computePlatformResolvedLocale(@NonNull String[] strArr) {
        if (this.localizationPlugin == null) {
            return new String[0];
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < strArr.length; i2 += 3) {
            String str = strArr[i2 + 0];
            String str2 = strArr[i2 + 1];
            String str3 = strArr[i2 + 2];
            if (Build.VERSION.SDK_INT >= 21) {
                Locale.Builder builder = new Locale.Builder();
                if (!str.isEmpty()) {
                    builder.setLanguage(str);
                }
                if (!str2.isEmpty()) {
                    builder.setRegion(str2);
                }
                if (!str3.isEmpty()) {
                    builder.setScript(str3);
                }
                arrayList.add(builder.build());
            } else {
                arrayList.add(new Locale(str, str2));
            }
        }
        Locale a2 = this.localizationPlugin.a(arrayList);
        if (a2 == null) {
            return new String[0];
        }
        String[] strArr2 = new String[3];
        strArr2[0] = a2.getLanguage();
        strArr2[1] = a2.getCountry();
        if (Build.VERSION.SDK_INT >= 21) {
            strArr2[2] = a2.getScript();
        } else {
            strArr2[2] = "";
        }
        return strArr2;
    }

    @UiThread
    public FlutterOverlaySurface createOverlaySurface() {
        ensureRunningOnMainThread();
        k kVar = this.platformViewsController;
        if (kVar != null) {
            return kVar.b();
        }
        throw new RuntimeException("platformViewsController must be set before attempting to position an overlay surface");
    }

    @UiThread
    public void destroyOverlaySurfaces() {
        ensureRunningOnMainThread();
        k kVar = this.platformViewsController;
        if (kVar != null) {
            kVar.c();
            return;
        }
        throw new RuntimeException("platformViewsController must be set before attempting to destroy an overlay surface");
    }

    @UiThread
    public void detachFromNativeAndReleaseResources() {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeDestroy(this.nativePlatformViewId.longValue());
        this.nativePlatformViewId = null;
    }

    @UiThread
    public void dispatchEmptyPlatformMessage(@NonNull String str, int i2) {
        ensureRunningOnMainThread();
        if (isAttached()) {
            nativeDispatchEmptyPlatformMessage(this.nativePlatformViewId.longValue(), str, i2);
            return;
        }
        g.a.b.d(TAG, "Tried to send a platform message to Flutter, but FlutterJNI was detached from native C++. Could not send. Channel: " + str + ". Response ID: " + i2);
    }

    @UiThread
    public void dispatchPlatformMessage(@NonNull String str, @Nullable ByteBuffer byteBuffer, int i2, int i3) {
        ensureRunningOnMainThread();
        if (isAttached()) {
            nativeDispatchPlatformMessage(this.nativePlatformViewId.longValue(), str, byteBuffer, i2, i3);
            return;
        }
        g.a.b.d(TAG, "Tried to send a platform message to Flutter, but FlutterJNI was detached from native C++. Could not send. Channel: " + str + ". Response ID: " + i3);
    }

    @UiThread
    public void dispatchPointerDataPacket(@NonNull ByteBuffer byteBuffer, int i2) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeDispatchPointerDataPacket(this.nativePlatformViewId.longValue(), byteBuffer, i2);
    }

    public void dispatchSemanticsAction(int i2, @NonNull c.f fVar) {
        dispatchSemanticsAction(i2, fVar, null);
    }

    @UiThread
    public Bitmap getBitmap() {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        return nativeGetBitmap(this.nativePlatformViewId.longValue());
    }

    @UiThread
    public boolean getIsSoftwareRenderingEnabled() {
        return nativeGetIsSoftwareRenderingEnabled();
    }

    @VisibleForTesting
    public void handlePlatformMessage(@NonNull String str, byte[] bArr, int i2) {
        io.flutter.embedding.engine.e.c cVar = this.platformMessageHandler;
        if (cVar != null) {
            cVar.a(str, bArr, i2);
        }
    }

    @UiThread
    public void invokePlatformMessageEmptyResponseCallback(int i2) {
        ensureRunningOnMainThread();
        if (isAttached()) {
            nativeInvokePlatformMessageEmptyResponseCallback(this.nativePlatformViewId.longValue(), i2);
            return;
        }
        g.a.b.d(TAG, "Tried to send a platform message response, but FlutterJNI was detached from native C++. Could not send. Response ID: " + i2);
    }

    @UiThread
    public void invokePlatformMessageResponseCallback(int i2, @Nullable ByteBuffer byteBuffer, int i3) {
        ensureRunningOnMainThread();
        if (isAttached()) {
            nativeInvokePlatformMessageResponseCallback(this.nativePlatformViewId.longValue(), i2, byteBuffer, i3);
            return;
        }
        g.a.b.d(TAG, "Tried to send a platform message response, but FlutterJNI was detached from native C++. Could not send. Response ID: " + i2);
    }

    public boolean isAttached() {
        return this.nativePlatformViewId != null;
    }

    @UiThread
    public void markTextureFrameAvailable(long j2) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeMarkTextureFrameAvailable(this.nativePlatformViewId.longValue(), j2);
    }

    public native boolean nativeFlutterTextUtilsIsEmoji(int i2);

    public native boolean nativeFlutterTextUtilsIsEmojiModifier(int i2);

    public native boolean nativeFlutterTextUtilsIsEmojiModifierBase(int i2);

    public native boolean nativeFlutterTextUtilsIsRegionalIndicator(int i2);

    public native boolean nativeFlutterTextUtilsIsVariationSelector(int i2);

    @UiThread
    public void notifyLowMemoryWarning() {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeNotifyLowMemoryWarning(this.nativePlatformViewId.longValue());
    }

    @UiThread
    public void onBeginFrame() {
        ensureRunningOnMainThread();
        k kVar = this.platformViewsController;
        if (kVar != null) {
            kVar.j();
            return;
        }
        throw new RuntimeException("platformViewsController must be set before attempting to begin the frame");
    }

    @UiThread
    public void onDisplayOverlaySurface(int i2, int i3, int i4, int i5, int i6) {
        ensureRunningOnMainThread();
        k kVar = this.platformViewsController;
        if (kVar != null) {
            kVar.a(i2, i3, i4, i5, i6);
            return;
        }
        throw new RuntimeException("platformViewsController must be set before attempting to position an overlay surface");
    }

    @UiThread
    public void onDisplayPlatformView(int i2, int i3, int i4, int i5, int i6, int i7, int i8, FlutterMutatorsStack flutterMutatorsStack) {
        ensureRunningOnMainThread();
        k kVar = this.platformViewsController;
        if (kVar != null) {
            kVar.a(i2, i3, i4, i5, i6, i7, i8, flutterMutatorsStack);
            return;
        }
        throw new RuntimeException("platformViewsController must be set before attempting to position a platform view");
    }

    @UiThread
    public void onEndFrame() {
        ensureRunningOnMainThread();
        k kVar = this.platformViewsController;
        if (kVar != null) {
            kVar.l();
            return;
        }
        throw new RuntimeException("platformViewsController must be set before attempting to end the frame");
    }

    @UiThread
    @VisibleForTesting
    public void onFirstFrame() {
        ensureRunningOnMainThread();
        Iterator<io.flutter.embedding.engine.h.b> it = this.flutterUiDisplayListeners.iterator();
        while (it.hasNext()) {
            it.next().onFlutterUiDisplayed();
        }
    }

    @UiThread
    @VisibleForTesting
    void onRenderingStopped() {
        ensureRunningOnMainThread();
        Iterator<io.flutter.embedding.engine.h.b> it = this.flutterUiDisplayListeners.iterator();
        while (it.hasNext()) {
            it.next().onFlutterUiNoLongerDisplayed();
        }
    }

    @UiThread
    public void onSurfaceChanged(int i2, int i3) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSurfaceChanged(this.nativePlatformViewId.longValue(), i2, i3);
    }

    @UiThread
    public void onSurfaceCreated(@NonNull Surface surface) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSurfaceCreated(this.nativePlatformViewId.longValue(), surface);
    }

    @UiThread
    public void onSurfaceDestroyed() {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        onRenderingStopped();
        nativeSurfaceDestroyed(this.nativePlatformViewId.longValue());
    }

    @UiThread
    public void onSurfaceWindowChanged(@NonNull Surface surface) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSurfaceWindowChanged(this.nativePlatformViewId.longValue(), surface);
    }

    @VisibleForTesting
    public long performNativeAttach(@NonNull FlutterJNI flutterJNI, boolean z) {
        return nativeAttach(flutterJNI, z);
    }

    @UiThread
    public void registerTexture(long j2, @NonNull SurfaceTexture surfaceTexture) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeRegisterTexture(this.nativePlatformViewId.longValue(), j2, surfaceTexture);
    }

    @UiThread
    public void removeEngineLifecycleListener(@NonNull a.b bVar) {
        ensureRunningOnMainThread();
        this.engineLifecycleListeners.remove(bVar);
    }

    @UiThread
    public void removeIsDisplayingFlutterUiListener(@NonNull io.flutter.embedding.engine.h.b bVar) {
        ensureRunningOnMainThread();
        this.flutterUiDisplayListeners.remove(bVar);
    }

    @UiThread
    public void runBundleAndSnapshotFromLibrary(@NonNull String str, @Nullable String str2, @Nullable String str3, @NonNull AssetManager assetManager) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeRunBundleAndSnapshotFromLibrary(this.nativePlatformViewId.longValue(), str, str2, str3, assetManager);
    }

    @UiThread
    public void setAccessibilityDelegate(@Nullable a aVar) {
        ensureRunningOnMainThread();
        this.accessibilityDelegate = aVar;
    }

    @UiThread
    public void setAccessibilityFeatures(int i2) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSetAccessibilityFeatures(this.nativePlatformViewId.longValue(), i2);
    }

    @UiThread
    public void setLocalizationPlugin(@Nullable g.a.c.b.a aVar) {
        ensureRunningOnMainThread();
        this.localizationPlugin = aVar;
    }

    @UiThread
    public void setPlatformMessageHandler(@Nullable io.flutter.embedding.engine.e.c cVar) {
        ensureRunningOnMainThread();
        this.platformMessageHandler = cVar;
    }

    @UiThread
    public void setPlatformViewsController(@NonNull k kVar) {
        ensureRunningOnMainThread();
        this.platformViewsController = kVar;
    }

    @UiThread
    public void setSemanticsEnabled(boolean z) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSetSemanticsEnabled(this.nativePlatformViewId.longValue(), z);
    }

    @UiThread
    public void setViewportMetrics(float f2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSetViewportMetrics(this.nativePlatformViewId.longValue(), f2, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15);
    }

    @UiThread
    public void unregisterTexture(long j2) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeUnregisterTexture(this.nativePlatformViewId.longValue(), j2);
    }

    public void dispatchSemanticsAction(int i2, @NonNull c.f fVar, @Nullable Object obj) {
        ByteBuffer byteBuffer;
        int i3;
        ensureAttachedToNative();
        if (obj != null) {
            byteBuffer = n.f18234a.a(obj);
            i3 = byteBuffer.position();
        } else {
            byteBuffer = null;
            i3 = 0;
        }
        dispatchSemanticsAction(i2, fVar.value, byteBuffer, i3);
    }

    @UiThread
    public void dispatchSemanticsAction(int i2, int i3, @Nullable ByteBuffer byteBuffer, int i4) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeDispatchSemanticsAction(this.nativePlatformViewId.longValue(), i2, i3, byteBuffer, i4);
    }
}
