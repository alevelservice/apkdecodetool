package com.google.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.google.firebase.messaging.a;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
class c {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f15218a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f15219b;

    /* renamed from: c, reason: collision with root package name */
    private final v f15220c;

    public c(Context context, v vVar, Executor executor) {
        this.f15218a = executor;
        this.f15219b = context;
        this.f15220c = vVar;
    }

    private boolean b() {
        if (((KeyguardManager) this.f15219b.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            return false;
        }
        if (!com.google.android.gms.common.util.o.h()) {
            SystemClock.sleep(10L);
        }
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f15219b.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ActivityManager.RunningAppProcessInfo next = it.next();
                if (next.pid == myPid) {
                    if (next.importance == 100) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Nullable
    private s c() {
        s b2 = s.b(this.f15220c.g("gcm.n.image"));
        if (b2 != null) {
            b2.a(this.f15218a);
        }
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        if (this.f15220c.a("gcm.n.noui")) {
            return true;
        }
        if (b()) {
            return false;
        }
        s c2 = c();
        a.C0140a b2 = a.b(this.f15219b, this.f15220c);
        a(b2.f15206a, c2);
        a(b2);
        return true;
    }

    private void a(a.C0140a c0140a) {
        Log.isLoggable("FirebaseMessaging", 3);
        ((NotificationManager) this.f15219b.getSystemService("notification")).notify(c0140a.f15207b, c0140a.f15208c, c0140a.f15206a.a());
    }

    private void a(NotificationCompat.d dVar, @Nullable s sVar) {
        if (sVar == null) {
            return;
        }
        try {
            Bitmap bitmap = (Bitmap) e.i.b.b.d.k.a(sVar.j(), 5L, TimeUnit.SECONDS);
            dVar.a(bitmap);
            NotificationCompat.a aVar = new NotificationCompat.a();
            aVar.b(bitmap);
            aVar.a((Bitmap) null);
            dVar.a(aVar);
        } catch (InterruptedException unused) {
            sVar.close();
            Thread.currentThread().interrupt();
        } catch (ExecutionException e2) {
            String valueOf = String.valueOf(e2.getCause());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 26);
            sb.append("Failed to download image: ");
            sb.append(valueOf);
            sb.toString();
        } catch (TimeoutException unused2) {
            sVar.close();
        }
    }
}
