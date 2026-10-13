package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
public abstract class CloudMessagingReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private final ExecutorService f4914a = e.i.b.b.b.a.a.a().a(new com.google.android.gms.common.util.v.a("firebase-iid-executor"), e.i.b.b.b.a.f.f17813a);

    @WorkerThread
    private final int a(@NonNull Context context, @NonNull Intent intent) {
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException unused) {
            }
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            extras.remove("pending_intent");
        } else {
            extras = new Bundle();
        }
        if ("com.google.firebase.messaging.NOTIFICATION_OPEN".equals(intent.getAction())) {
            onNotificationOpen(context, extras);
            return -1;
        }
        if (!"com.google.firebase.messaging.NOTIFICATION_DISMISS".equals(intent.getAction())) {
            return 500;
        }
        onNotificationDismissed(context, extras);
        return -1;
    }

    @WorkerThread
    private final int b(@NonNull Context context, @NonNull Intent intent) {
        e.i.b.b.d.h<Void> a2;
        if (intent.getExtras() == null) {
            return 500;
        }
        String stringExtra = intent.getStringExtra("google.message_id");
        if (TextUtils.isEmpty(stringExtra)) {
            a2 = e.i.b.b.d.k.a((Object) null);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("google.message_id", stringExtra);
            a2 = e.a(context).a(2, bundle);
        }
        int onMessageReceive = onMessageReceive(context, new CloudMessage(intent));
        try {
            e.i.b.b.d.k.a(a2, TimeUnit.SECONDS.toMillis(1L), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
            sb.append("Message ack failed: ");
            sb.append(valueOf);
            sb.toString();
        }
        return onMessageReceive;
    }

    @NonNull
    protected Executor getBroadcastExecutor() {
        return this.f4914a;
    }

    @WorkerThread
    protected abstract int onMessageReceive(@NonNull Context context, @NonNull CloudMessage cloudMessage);

    @WorkerThread
    protected void onNotificationDismissed(@NonNull Context context, @NonNull Bundle bundle) {
    }

    @WorkerThread
    protected void onNotificationOpen(@NonNull Context context, @NonNull Bundle bundle) {
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(@NonNull final Context context, @NonNull final Intent intent) {
        if (intent == null) {
            return;
        }
        final boolean isOrderedBroadcast = isOrderedBroadcast();
        final BroadcastReceiver.PendingResult goAsync = goAsync();
        getBroadcastExecutor().execute(new Runnable(this, intent, context, isOrderedBroadcast, goAsync) { // from class: com.google.android.gms.cloudmessaging.d

            /* renamed from: e, reason: collision with root package name */
            private final CloudMessagingReceiver f4926e;

            /* renamed from: f, reason: collision with root package name */
            private final Intent f4927f;

            /* renamed from: g, reason: collision with root package name */
            private final Context f4928g;

            /* renamed from: h, reason: collision with root package name */
            private final boolean f4929h;

            /* renamed from: i, reason: collision with root package name */
            private final BroadcastReceiver.PendingResult f4930i;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f4926e = this;
                this.f4927f = intent;
                this.f4928g = context;
                this.f4929h = isOrderedBroadcast;
                this.f4930i = goAsync;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f4926e.zza(this.f4927f, this.f4928g, this.f4929h, this.f4930i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(Intent intent, Context context, boolean z, BroadcastReceiver.PendingResult pendingResult) {
        int b2;
        try {
            Parcelable parcelableExtra = intent.getParcelableExtra("wrapped_intent");
            Intent intent2 = parcelableExtra instanceof Intent ? (Intent) parcelableExtra : null;
            if (intent2 != null) {
                b2 = a(context, intent2);
            } else {
                b2 = b(context, intent);
            }
            if (z) {
                pendingResult.setResultCode(b2);
            }
        } finally {
            pendingResult.finish();
        }
    }
}
