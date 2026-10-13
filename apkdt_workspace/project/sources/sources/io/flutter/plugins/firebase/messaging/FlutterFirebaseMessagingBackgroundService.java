package io.flutter.plugins.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.core.app.JobIntentService;
import g.a.c.a.m;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes2.dex */
public class FlutterFirebaseMessagingBackgroundService extends JobIntentService {

    /* renamed from: e, reason: collision with root package name */
    private static final List<Intent> f19434e = Collections.synchronizedList(new LinkedList());

    /* renamed from: f, reason: collision with root package name */
    private static o f19435f;

    public static void enqueueMessageProcessing(Context context, Intent intent) {
        JobIntentService.enqueueWork(context, (Class<?>) FlutterFirebaseMessagingBackgroundService.class, 2020, intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void onInitialized() {
        synchronized (f19434e) {
            Iterator<Intent> it = f19434e.iterator();
            while (it.hasNext()) {
                f19435f.a(it.next(), (CountDownLatch) null);
            }
            f19434e.clear();
        }
    }

    public static void setCallbackDispatcher(long j2) {
        o.a(j2);
    }

    public static void setPluginRegistrant(m.c cVar) {
        o.a(cVar);
    }

    public static void setUserCallbackHandle(long j2) {
        o.b(j2);
    }

    public static void startBackgroundIsolate(long j2, io.flutter.embedding.engine.d dVar) {
        if (f19435f != null) {
            return;
        }
        f19435f = new o();
        f19435f.a(j2, dVar);
    }

    @Override // androidx.core.app.JobIntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
        if (f19435f == null) {
            f19435f = new o();
        }
        f19435f.c();
    }

    @Override // androidx.core.app.JobIntentService
    protected void onHandleWork(@NonNull final Intent intent) {
        if (f19435f.a()) {
            synchronized (f19434e) {
                if (f19435f.b()) {
                    f19434e.add(intent);
                    return;
                }
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                new Handler(getMainLooper()).post(new Runnable() { // from class: io.flutter.plugins.firebase.messaging.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        FlutterFirebaseMessagingBackgroundService.f19435f.a(intent, countDownLatch);
                    }
                });
                try {
                    countDownLatch.await();
                } catch (InterruptedException unused) {
                }
            }
        }
    }
}
