package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.support.customtabs.ICustomTabsService;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* compiled from: CustomTabsServiceConnection.java */
/* loaded from: classes.dex */
public abstract class d implements ServiceConnection {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private Context f1523e;

    /* compiled from: CustomTabsServiceConnection.java */
    /* loaded from: classes.dex */
    class a extends CustomTabsClient {
        a(d dVar, ICustomTabsService iCustomTabsService, ComponentName componentName, Context context) {
            super(iCustomTabsService, componentName, context);
        }
    }

    public abstract void a(@NonNull ComponentName componentName, @NonNull CustomTabsClient customTabsClient);

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY})
    public void a(@NonNull Context context) {
        this.f1523e = context;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull IBinder iBinder) {
        if (this.f1523e != null) {
            a(componentName, new a(this, ICustomTabsService.Stub.asInterface(iBinder), componentName, this.f1523e));
            return;
        }
        throw new IllegalStateException("Custom Tabs Service connected before an applicationcontext has been provided.");
    }
}
