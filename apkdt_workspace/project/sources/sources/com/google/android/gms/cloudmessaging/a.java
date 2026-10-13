package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.android.gms.cloudmessaging.zza;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
public class a {

    /* renamed from: h, reason: collision with root package name */
    private static int f4916h;

    /* renamed from: i, reason: collision with root package name */
    private static PendingIntent f4917i;

    /* renamed from: j, reason: collision with root package name */
    private static final Executor f4918j = z.f4968e;

    /* renamed from: b, reason: collision with root package name */
    private final Context f4920b;

    /* renamed from: c, reason: collision with root package name */
    private final r f4921c;

    /* renamed from: d, reason: collision with root package name */
    private final ScheduledExecutorService f4922d;

    /* renamed from: f, reason: collision with root package name */
    private Messenger f4924f;

    /* renamed from: g, reason: collision with root package name */
    private zza f4925g;

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("responseCallbacks")
    private final a.e.g<String, e.i.b.b.d.i<Bundle>> f4919a = new a.e.g<>();

    /* renamed from: e, reason: collision with root package name */
    private Messenger f4923e = new Messenger(new y(this, Looper.getMainLooper()));

    public a(@NonNull Context context) {
        this.f4920b = context;
        this.f4921c = new r(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f4922d = scheduledThreadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new zza.a());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof zza) {
                        this.f4925g = (zza) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        this.f4924f = (Messenger) parcelableExtra;
                    }
                }
                Intent intent2 = (Intent) message.obj;
                String action = intent2.getAction();
                if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
                    if (Log.isLoggable("Rpc", 3)) {
                        String valueOf = String.valueOf(action);
                        if (valueOf.length() != 0) {
                            "Unexpected response action: ".concat(valueOf);
                            return;
                        } else {
                            new String("Unexpected response action: ");
                            return;
                        }
                    }
                    return;
                }
                String stringExtra = intent2.getStringExtra("registration_id");
                if (stringExtra == null) {
                    stringExtra = intent2.getStringExtra("unregistered");
                }
                if (stringExtra == null) {
                    String stringExtra2 = intent2.getStringExtra(HummerConstants.HUMMER_ERROR);
                    if (stringExtra2 == null) {
                        String valueOf2 = String.valueOf(intent2.getExtras());
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 49);
                        sb.append("Unexpected response, no error or registration id ");
                        sb.append(valueOf2);
                        sb.toString();
                        return;
                    }
                    if (Log.isLoggable("Rpc", 3)) {
                        String valueOf3 = String.valueOf(stringExtra2);
                        if (valueOf3.length() != 0) {
                            "Received InstanceID error ".concat(valueOf3);
                        } else {
                            new String("Received InstanceID error ");
                        }
                    }
                    if (stringExtra2.startsWith("|")) {
                        String[] split = stringExtra2.split("\\|");
                        if (split.length > 2 && "ID".equals(split[1])) {
                            String str = split[2];
                            String str2 = split[3];
                            if (str2.startsWith(":")) {
                                str2 = str2.substring(1);
                            }
                            a(str, intent2.putExtra(HummerConstants.HUMMER_ERROR, str2).getExtras());
                            return;
                        }
                        String valueOf4 = String.valueOf(stringExtra2);
                        if (valueOf4.length() != 0) {
                            "Unexpected structured response ".concat(valueOf4);
                            return;
                        } else {
                            new String("Unexpected structured response ");
                            return;
                        }
                    }
                    synchronized (this.f4919a) {
                        for (int i2 = 0; i2 < this.f4919a.size(); i2++) {
                            a(this.f4919a.b(i2), intent2.getExtras());
                        }
                    }
                    return;
                }
                Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(stringExtra);
                if (!matcher.matches()) {
                    if (Log.isLoggable("Rpc", 3)) {
                        String valueOf5 = String.valueOf(stringExtra);
                        if (valueOf5.length() != 0) {
                            "Unexpected response string: ".concat(valueOf5);
                            return;
                        } else {
                            new String("Unexpected response string: ");
                            return;
                        }
                    }
                    return;
                }
                String group = matcher.group(1);
                String group2 = matcher.group(2);
                if (group != null) {
                    Bundle extras = intent2.getExtras();
                    extras.putString("registration_id", group2);
                    a(group, extras);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ e.i.b.b.d.h b(Bundle bundle) {
        if (c(bundle)) {
            return e.i.b.b.d.k.a((Object) null);
        }
        return e.i.b.b.d.k.a(bundle);
    }

    private static boolean c(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    @AnyThread
    private final e.i.b.b.d.h<Bundle> d(Bundle bundle) {
        final String a2 = a();
        final e.i.b.b.d.i<Bundle> iVar = new e.i.b.b.d.i<>();
        synchronized (this.f4919a) {
            this.f4919a.put(a2, iVar);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.f4921c.a() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        a(this.f4920b, intent);
        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 5);
        sb.append("|ID|");
        sb.append(a2);
        sb.append("|");
        intent.putExtra("kid", sb.toString());
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 8);
            sb2.append("Sending ");
            sb2.append(valueOf);
            sb2.toString();
        }
        intent.putExtra("google.messenger", this.f4923e);
        if (this.f4924f != null || this.f4925g != null) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                if (this.f4924f != null) {
                    this.f4924f.send(obtain);
                } else {
                    this.f4925g.a(obtain);
                }
            } catch (RemoteException unused) {
                Log.isLoggable("Rpc", 3);
            }
            final ScheduledFuture<?> schedule = this.f4922d.schedule(new Runnable(iVar) { // from class: com.google.android.gms.cloudmessaging.u

                /* renamed from: e, reason: collision with root package name */
                private final e.i.b.b.d.i f4960e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f4960e = iVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f4960e.b((Exception) new IOException("TIMEOUT"));
                }
            }, 30L, TimeUnit.SECONDS);
            iVar.a().a(f4918j, new e.i.b.b.d.c(this, a2, schedule) { // from class: com.google.android.gms.cloudmessaging.x

                /* renamed from: a, reason: collision with root package name */
                private final a f4964a;

                /* renamed from: b, reason: collision with root package name */
                private final String f4965b;

                /* renamed from: c, reason: collision with root package name */
                private final ScheduledFuture f4966c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f4964a = this;
                    this.f4965b = a2;
                    this.f4966c = schedule;
                }

                @Override // e.i.b.b.d.c
                public final void a(e.i.b.b.d.h hVar) {
                    this.f4964a.a(this.f4965b, this.f4966c, hVar);
                }
            });
            return iVar.a();
        }
        if (this.f4921c.a() == 2) {
            this.f4920b.sendBroadcast(intent);
        } else {
            this.f4920b.startService(intent);
        }
        final ScheduledFuture schedule2 = this.f4922d.schedule(new Runnable(iVar) { // from class: com.google.android.gms.cloudmessaging.u

            /* renamed from: e, reason: collision with root package name */
            private final e.i.b.b.d.i f4960e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f4960e = iVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f4960e.b((Exception) new IOException("TIMEOUT"));
            }
        }, 30L, TimeUnit.SECONDS);
        iVar.a().a(f4918j, new e.i.b.b.d.c(this, a2, schedule2) { // from class: com.google.android.gms.cloudmessaging.x

            /* renamed from: a, reason: collision with root package name */
            private final a f4964a;

            /* renamed from: b, reason: collision with root package name */
            private final String f4965b;

            /* renamed from: c, reason: collision with root package name */
            private final ScheduledFuture f4966c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f4964a = this;
                this.f4965b = a2;
                this.f4966c = schedule2;
            }

            @Override // e.i.b.b.d.c
            public final void a(e.i.b.b.d.h hVar) {
                this.f4964a.a(this.f4965b, this.f4966c, hVar);
            }
        });
        return iVar.a();
    }

    private static synchronized void a(Context context, Intent intent) {
        synchronized (a.class) {
            if (f4917i == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                f4917i = PendingIntent.getBroadcast(context, 0, intent2, 0);
            }
            intent.putExtra("app", f4917i);
        }
    }

    private final void a(String str, @Nullable Bundle bundle) {
        synchronized (this.f4919a) {
            e.i.b.b.d.i<Bundle> remove = this.f4919a.remove(str);
            if (remove == null) {
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    "Missing callback for ".concat(valueOf);
                } else {
                    new String("Missing callback for ");
                }
                return;
            }
            remove.a((e.i.b.b.d.i<Bundle>) bundle);
        }
    }

    @NonNull
    public e.i.b.b.d.h<Bundle> a(@NonNull final Bundle bundle) {
        if (this.f4921c.b() >= 12000000) {
            return e.a(this.f4920b).b(1, bundle).a(f4918j, t.f4959a);
        }
        if (!(this.f4921c.a() != 0)) {
            return e.i.b.b.d.k.a((Exception) new IOException("MISSING_INSTANCEID_SERVICE"));
        }
        return d(bundle).b(f4918j, new e.i.b.b.d.a(this, bundle) { // from class: com.google.android.gms.cloudmessaging.v

            /* renamed from: a, reason: collision with root package name */
            private final a f4961a;

            /* renamed from: b, reason: collision with root package name */
            private final Bundle f4962b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f4961a = this;
                this.f4962b = bundle;
            }

            @Override // e.i.b.b.d.a
            public final Object a(e.i.b.b.d.h hVar) {
                return this.f4961a.a(this.f4962b, hVar);
            }
        });
    }

    private static synchronized String a() {
        String num;
        synchronized (a.class) {
            int i2 = f4916h;
            f4916h = i2 + 1;
            num = Integer.toString(i2);
        }
        return num;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(String str, ScheduledFuture scheduledFuture, e.i.b.b.d.h hVar) {
        synchronized (this.f4919a) {
            this.f4919a.remove(str);
        }
        scheduledFuture.cancel(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ e.i.b.b.d.h a(Bundle bundle, e.i.b.b.d.h hVar) {
        return (hVar.e() && c((Bundle) hVar.b())) ? d(bundle).a(f4918j, w.f4963a) : hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Bundle a(e.i.b.b.d.h hVar) {
        if (hVar.e()) {
            return (Bundle) hVar.b();
        }
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(hVar.a());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("Error making request: ");
            sb.append(valueOf);
            sb.toString();
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", hVar.a());
    }
}
