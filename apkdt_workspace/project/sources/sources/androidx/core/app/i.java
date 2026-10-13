package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import android.util.SparseArray;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Field;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NotificationCompatJellybean.java */
@RequiresApi(16)
/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private static final Object f1742a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private static Field f1743b;

    /* renamed from: c, reason: collision with root package name */
    private static boolean f1744c;

    public static SparseArray<Bundle> a(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
        for (int i2 = 0; i2 < size; i2++) {
            Bundle bundle = list.get(i2);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i2, bundle);
            }
        }
        return sparseArray;
    }

    public static Bundle a(Notification notification) {
        synchronized (f1742a) {
            if (f1744c) {
                return null;
            }
            try {
                if (f1743b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        f1744c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f1743b = declaredField;
                }
                Bundle bundle = (Bundle) f1743b.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    f1743b.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException | NoSuchFieldException unused) {
                f1744c = true;
                return null;
            }
        }
    }

    public static Bundle a(Notification.Builder builder, NotificationCompat.Action action) {
        IconCompat f2 = action.f();
        builder.addAction(f2 != null ? f2.a() : 0, action.j(), action.a());
        Bundle bundle = new Bundle(action.d());
        if (action.g() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", a(action.g()));
        }
        if (action.c() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", a(action.c()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", action.b());
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle a(NotificationCompat.Action action) {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        IconCompat f2 = action.f();
        bundle2.putInt("icon", f2 != null ? f2.a() : 0);
        bundle2.putCharSequence("title", action.j());
        bundle2.putParcelable("actionIntent", action.a());
        if (action.d() != null) {
            bundle = new Bundle(action.d());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", action.b());
        bundle2.putBundle("extras", bundle);
        bundle2.putParcelableArray("remoteInputs", a(action.g()));
        bundle2.putBoolean("showsUserInterface", action.i());
        bundle2.putInt("semanticAction", action.h());
        return bundle2;
    }

    private static Bundle a(RemoteInput remoteInput) {
        new Bundle();
        remoteInput.a();
        throw null;
    }

    private static Bundle[] a(RemoteInput[] remoteInputArr) {
        if (remoteInputArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[remoteInputArr.length];
        if (remoteInputArr.length <= 0) {
            return bundleArr;
        }
        a(remoteInputArr[0]);
        throw null;
    }
}
