package androidx.core.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.l;
import java.util.List;
import java.util.Map;

/* compiled from: ActivityCompat.java */
/* loaded from: classes.dex */
public class a extends androidx.core.content.a {

    /* renamed from: c, reason: collision with root package name */
    private static c f1707c;

    /* compiled from: ActivityCompat.java */
    /* renamed from: androidx.core.app.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class RunnableC0029a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String[] f1708e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Activity f1709f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f1710g;

        RunnableC0029a(String[] strArr, Activity activity, int i2) {
            this.f1708e = strArr;
            this.f1709f = activity;
            this.f1710g = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.f1708e.length];
            PackageManager packageManager = this.f1709f.getPackageManager();
            String packageName = this.f1709f.getPackageName();
            int length = this.f1708e.length;
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2] = packageManager.checkPermission(this.f1708e[i2], packageName);
            }
            ((b) this.f1709f).onRequestPermissionsResult(this.f1710g, this.f1708e, iArr);
        }
    }

    /* compiled from: ActivityCompat.java */
    /* loaded from: classes.dex */
    public interface b {
        void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr);
    }

    /* compiled from: ActivityCompat.java */
    /* loaded from: classes.dex */
    public interface c {
        boolean a(@NonNull Activity activity, @IntRange(from = 0) int i2, int i3, @Nullable Intent intent);

        boolean a(@NonNull Activity activity, @NonNull String[] strArr, @IntRange(from = 0) int i2);
    }

    /* compiled from: ActivityCompat.java */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public interface d {
        void validateRequestPermissionsRequestCode(int i2);
    }

    /* compiled from: ActivityCompat.java */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    private static class e extends SharedElementCallback {

        /* renamed from: a, reason: collision with root package name */
        private final l f1711a;

        /* compiled from: ActivityCompat.java */
        /* renamed from: androidx.core.app.a$e$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0030a implements l.a {
            C0030a(e eVar, SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            }
        }

        e(l lVar) {
            this.f1711a = lVar;
        }

        @Override // android.app.SharedElementCallback
        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.f1711a.a(view, matrix, rectF);
        }

        @Override // android.app.SharedElementCallback
        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.f1711a.a(context, parcelable);
        }

        @Override // android.app.SharedElementCallback
        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.f1711a.a(list, map);
        }

        @Override // android.app.SharedElementCallback
        public void onRejectSharedElements(List<View> list) {
            this.f1711a.a(list);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.f1711a.a(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.f1711a.b(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        @RequiresApi(23)
        public void onSharedElementsArrived(List<String> list, List<View> list2, SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            this.f1711a.a(list, list2, new C0030a(this, onSharedElementsReadyListener));
        }
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public static c a() {
        return f1707c;
    }

    public static void b(@NonNull Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.finishAfterTransition();
        } else {
            activity.finish();
        }
    }

    public static void c(@NonNull Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.postponeEnterTransition();
        }
    }

    public static void d(@NonNull Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else {
            if (androidx.core.app.b.a(activity)) {
                return;
            }
            activity.recreate();
        }
    }

    public static void e(@NonNull Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.startPostponedEnterTransition();
        }
    }

    public static void a(@NonNull Activity activity, @NonNull Intent intent, int i2, @Nullable Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i2, bundle);
        } else {
            activity.startActivityForResult(intent, i2);
        }
    }

    public static void b(@NonNull Activity activity, @Nullable l lVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setExitSharedElementCallback(lVar != null ? new e(lVar) : null);
        }
    }

    public static void a(@NonNull Activity activity, @NonNull IntentSender intentSender, int i2, @Nullable Intent intent, int i3, int i4, int i5, @Nullable Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5);
        }
    }

    public static void a(@NonNull Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    public static void a(@NonNull Activity activity, @Nullable l lVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setEnterSharedElementCallback(lVar != null ? new e(lVar) : null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@NonNull Activity activity, @NonNull String[] strArr, @IntRange(from = 0) int i2) {
        c cVar = f1707c;
        if (cVar == null || !cVar.a(activity, strArr, i2)) {
            if (Build.VERSION.SDK_INT >= 23) {
                if (activity instanceof d) {
                    ((d) activity).validateRequestPermissionsRequestCode(i2);
                }
                activity.requestPermissions(strArr, i2);
            } else if (activity instanceof b) {
                new Handler(Looper.getMainLooper()).post(new RunnableC0029a(strArr, activity, i2));
            }
        }
    }

    public static boolean a(@NonNull Activity activity, @NonNull String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }
}
