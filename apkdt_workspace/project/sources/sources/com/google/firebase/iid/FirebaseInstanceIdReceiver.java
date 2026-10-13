package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.cloudmessaging.CloudMessagingReceiver;
import java.util.concurrent.ExecutionException;

/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
/* loaded from: classes.dex */
public final class FirebaseInstanceIdReceiver extends CloudMessagingReceiver {
    private static Intent a(@NonNull Context context, @NonNull String str, @NonNull Bundle bundle) {
        return new Intent(str).putExtras(bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    @WorkerThread
    protected int onMessageReceive(@NonNull Context context, @NonNull CloudMessage cloudMessage) {
        try {
            return ((Integer) e.i.b.b.d.k.a((e.i.b.b.d.h) new f(context).a(cloudMessage.j()))).intValue();
        } catch (InterruptedException | ExecutionException unused) {
            return 500;
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    @WorkerThread
    protected void onNotificationDismissed(@NonNull Context context, @NonNull Bundle bundle) {
        try {
            e.i.b.b.d.k.a((e.i.b.b.d.h) new f(context).a(a(context, "com.google.firebase.messaging.NOTIFICATION_DISMISS", bundle)));
        } catch (InterruptedException | ExecutionException unused) {
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    @WorkerThread
    protected void onNotificationOpen(@NonNull Context context, @NonNull Bundle bundle) {
        try {
            e.i.b.b.d.k.a((e.i.b.b.d.h) new f(context).a(a(context, "com.google.firebase.messaging.NOTIFICATION_OPEN", bundle)));
        } catch (InterruptedException | ExecutionException unused) {
        }
    }
}
