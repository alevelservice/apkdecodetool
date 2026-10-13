package androidx.core.app;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.v4.app.INotificationSideChannel;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: NotificationManagerCompat.java */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("sEnabledNotificationListenersLock")
    private static String f1746d;

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("sLock")
    private static d f1749g;

    /* renamed from: a, reason: collision with root package name */
    private final Context f1750a;

    /* renamed from: b, reason: collision with root package name */
    private final NotificationManager f1751b;

    /* renamed from: c, reason: collision with root package name */
    private static final Object f1745c = new Object();

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("sEnabledNotificationListenersLock")
    private static Set<String> f1747e = new HashSet();

    /* renamed from: f, reason: collision with root package name */
    private static final Object f1748f = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NotificationManagerCompat.java */
    /* loaded from: classes.dex */
    public static class b implements e {

        /* renamed from: a, reason: collision with root package name */
        final String f1756a;

        /* renamed from: b, reason: collision with root package name */
        final int f1757b;

        /* renamed from: c, reason: collision with root package name */
        final String f1758c;

        /* renamed from: d, reason: collision with root package name */
        final Notification f1759d;

        b(String str, int i2, String str2, Notification notification) {
            this.f1756a = str;
            this.f1757b = i2;
            this.f1758c = str2;
            this.f1759d = notification;
        }

        @Override // androidx.core.app.j.e
        public void a(INotificationSideChannel iNotificationSideChannel) {
            iNotificationSideChannel.notify(this.f1756a, this.f1757b, this.f1758c, this.f1759d);
        }

        @NonNull
        public String toString() {
            return "NotifyTask[packageName:" + this.f1756a + ", id:" + this.f1757b + ", tag:" + this.f1758c + "]";
        }
    }

    /* compiled from: NotificationManagerCompat.java */
    /* loaded from: classes.dex */
    private static class c {

        /* renamed from: a, reason: collision with root package name */
        final ComponentName f1760a;

        /* renamed from: b, reason: collision with root package name */
        final IBinder f1761b;

        c(ComponentName componentName, IBinder iBinder) {
            this.f1760a = componentName;
            this.f1761b = iBinder;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NotificationManagerCompat.java */
    /* loaded from: classes.dex */
    public static class d implements Handler.Callback, ServiceConnection {

        /* renamed from: e, reason: collision with root package name */
        private final Context f1762e;

        /* renamed from: g, reason: collision with root package name */
        private final Handler f1764g;

        /* renamed from: h, reason: collision with root package name */
        private final Map<ComponentName, a> f1765h = new HashMap();

        /* renamed from: i, reason: collision with root package name */
        private Set<String> f1766i = new HashSet();

        /* renamed from: f, reason: collision with root package name */
        private final HandlerThread f1763f = new HandlerThread("NotificationManagerCompat");

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: NotificationManagerCompat.java */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            final ComponentName f1767a;

            /* renamed from: c, reason: collision with root package name */
            INotificationSideChannel f1769c;

            /* renamed from: b, reason: collision with root package name */
            boolean f1768b = false;

            /* renamed from: d, reason: collision with root package name */
            ArrayDeque<e> f1770d = new ArrayDeque<>();

            /* renamed from: e, reason: collision with root package name */
            int f1771e = 0;

            a(ComponentName componentName) {
                this.f1767a = componentName;
            }
        }

        d(Context context) {
            this.f1762e = context;
            this.f1763f.start();
            this.f1764g = new Handler(this.f1763f.getLooper(), this);
        }

        private void b(e eVar) {
            a();
            for (a aVar : this.f1765h.values()) {
                aVar.f1770d.add(eVar);
                c(aVar);
            }
        }

        private void c(a aVar) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                String str = "Processing component " + aVar.f1767a + ", " + aVar.f1770d.size() + " queued tasks";
            }
            if (aVar.f1770d.isEmpty()) {
                return;
            }
            if (a(aVar) && aVar.f1769c != null) {
                while (true) {
                    e peek = aVar.f1770d.peek();
                    if (peek == null) {
                        break;
                    }
                    try {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            String str2 = "Sending task " + peek;
                        }
                        peek.a(aVar.f1769c);
                        aVar.f1770d.remove();
                    } catch (DeadObjectException unused) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            String str3 = "Remote service has died: " + aVar.f1767a;
                        }
                    } catch (RemoteException unused2) {
                        String str4 = "RemoteException communicating with " + aVar.f1767a;
                    }
                }
                if (aVar.f1770d.isEmpty()) {
                    return;
                }
                d(aVar);
                return;
            }
            d(aVar);
        }

        private void d(a aVar) {
            if (this.f1764g.hasMessages(3, aVar.f1767a)) {
                return;
            }
            aVar.f1771e++;
            int i2 = aVar.f1771e;
            if (i2 > 6) {
                String str = "Giving up on delivering " + aVar.f1770d.size() + " tasks to " + aVar.f1767a + " after " + aVar.f1771e + " retries";
                aVar.f1770d.clear();
                return;
            }
            int i3 = (1 << (i2 - 1)) * 1000;
            if (Log.isLoggable("NotifManCompat", 3)) {
                String str2 = "Scheduling retry for " + i3 + " ms";
            }
            this.f1764g.sendMessageDelayed(this.f1764g.obtainMessage(3, aVar.f1767a), i3);
        }

        public void a(e eVar) {
            this.f1764g.obtainMessage(0, eVar).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                b((e) message.obj);
                return true;
            }
            if (i2 == 1) {
                c cVar = (c) message.obj;
                a(cVar.f1760a, cVar.f1761b);
                return true;
            }
            if (i2 == 2) {
                b((ComponentName) message.obj);
                return true;
            }
            if (i2 != 3) {
                return false;
            }
            a((ComponentName) message.obj);
            return true;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                String str = "Connected to service " + componentName;
            }
            this.f1764g.obtainMessage(1, new c(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                String str = "Disconnected from service " + componentName;
            }
            this.f1764g.obtainMessage(2, componentName).sendToTarget();
        }

        private void a(ComponentName componentName, IBinder iBinder) {
            a aVar = this.f1765h.get(componentName);
            if (aVar != null) {
                aVar.f1769c = INotificationSideChannel.Stub.asInterface(iBinder);
                aVar.f1771e = 0;
                c(aVar);
            }
        }

        private void b(ComponentName componentName) {
            a aVar = this.f1765h.get(componentName);
            if (aVar != null) {
                b(aVar);
            }
        }

        private void a(ComponentName componentName) {
            a aVar = this.f1765h.get(componentName);
            if (aVar != null) {
                c(aVar);
            }
        }

        private void b(a aVar) {
            if (aVar.f1768b) {
                this.f1762e.unbindService(this);
                aVar.f1768b = false;
            }
            aVar.f1769c = null;
        }

        private void a() {
            Set<String> b2 = j.b(this.f1762e);
            if (b2.equals(this.f1766i)) {
                return;
            }
            this.f1766i = b2;
            List<ResolveInfo> queryIntentServices = this.f1762e.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : queryIntentServices) {
                if (b2.contains(resolveInfo.serviceInfo.packageName)) {
                    ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        String str = "Permission present on component " + componentName + ", not adding listener record.";
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.f1765h.containsKey(componentName2)) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        String str2 = "Adding listener record for " + componentName2;
                    }
                    this.f1765h.put(componentName2, new a(componentName2));
                }
            }
            Iterator<Map.Entry<ComponentName, a>> it = this.f1765h.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<ComponentName, a> next = it.next();
                if (!hashSet.contains(next.getKey())) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        String str3 = "Removing listener record for " + next.getKey();
                    }
                    b(next.getValue());
                    it.remove();
                }
            }
        }

        private boolean a(a aVar) {
            if (aVar.f1768b) {
                return true;
            }
            aVar.f1768b = this.f1762e.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(aVar.f1767a), this, 33);
            if (aVar.f1768b) {
                aVar.f1771e = 0;
            } else {
                String str = "Unable to bind to listener " + aVar.f1767a;
                this.f1762e.unbindService(this);
            }
            return aVar.f1768b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NotificationManagerCompat.java */
    /* loaded from: classes.dex */
    public interface e {
        void a(INotificationSideChannel iNotificationSideChannel);
    }

    private j(Context context) {
        this.f1750a = context;
        this.f1751b = (NotificationManager) this.f1750a.getSystemService("notification");
    }

    @NonNull
    public static j a(@NonNull Context context) {
        return new j(context);
    }

    public void b() {
        this.f1751b.cancelAll();
        if (Build.VERSION.SDK_INT <= 19) {
            a(new a(this.f1750a.getPackageName()));
        }
    }

    public void a(int i2) {
        a((String) null, i2);
    }

    public void a(@Nullable String str, int i2) {
        this.f1751b.cancel(str, i2);
        if (Build.VERSION.SDK_INT <= 19) {
            a(new a(this.f1750a.getPackageName(), i2, str));
        }
    }

    @NonNull
    public static Set<String> b(@NonNull Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f1745c) {
            if (string != null) {
                if (!string.equals(f1746d)) {
                    String[] split = string.split(":", -1);
                    HashSet hashSet = new HashSet(split.length);
                    for (String str : split) {
                        ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                        if (unflattenFromString != null) {
                            hashSet.add(unflattenFromString.getPackageName());
                        }
                    }
                    f1747e = hashSet;
                    f1746d = string;
                }
            }
            set = f1747e;
        }
        return set;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NotificationManagerCompat.java */
    /* loaded from: classes.dex */
    public static class a implements e {

        /* renamed from: a, reason: collision with root package name */
        final String f1752a;

        /* renamed from: b, reason: collision with root package name */
        final int f1753b;

        /* renamed from: c, reason: collision with root package name */
        final String f1754c;

        /* renamed from: d, reason: collision with root package name */
        final boolean f1755d;

        a(String str) {
            this.f1752a = str;
            this.f1753b = 0;
            this.f1754c = null;
            this.f1755d = true;
        }

        @Override // androidx.core.app.j.e
        public void a(INotificationSideChannel iNotificationSideChannel) {
            if (this.f1755d) {
                iNotificationSideChannel.cancelAll(this.f1752a);
            } else {
                iNotificationSideChannel.cancel(this.f1752a, this.f1753b, this.f1754c);
            }
        }

        @NonNull
        public String toString() {
            return "CancelTask[packageName:" + this.f1752a + ", id:" + this.f1753b + ", tag:" + this.f1754c + ", all:" + this.f1755d + "]";
        }

        a(String str, int i2, String str2) {
            this.f1752a = str;
            this.f1753b = i2;
            this.f1754c = str2;
            this.f1755d = false;
        }
    }

    public void a(int i2, @NonNull Notification notification) {
        a(null, i2, notification);
    }

    public void a(@Nullable String str, int i2, @NonNull Notification notification) {
        if (a(notification)) {
            a(new b(this.f1750a.getPackageName(), i2, str, notification));
            this.f1751b.cancel(str, i2);
        } else {
            this.f1751b.notify(str, i2, notification);
        }
    }

    public boolean a() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 24) {
            return this.f1751b.areNotificationsEnabled();
        }
        if (i2 < 19) {
            return true;
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.f1750a.getSystemService("appops");
        ApplicationInfo applicationInfo = this.f1750a.getApplicationInfo();
        String packageName = this.f1750a.getApplicationContext().getPackageName();
        int i3 = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            return ((Integer) cls.getMethod("checkOpNoThrow", Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i3), packageName)).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            return true;
        }
    }

    private static boolean a(Notification notification) {
        Bundle a2 = NotificationCompat.a(notification);
        return a2 != null && a2.getBoolean("android.support.useSideChannel");
    }

    private void a(e eVar) {
        synchronized (f1748f) {
            if (f1749g == null) {
                f1749g = new d(this.f1750a.getApplicationContext());
            }
            f1749g.a(eVar);
        }
    }
}
