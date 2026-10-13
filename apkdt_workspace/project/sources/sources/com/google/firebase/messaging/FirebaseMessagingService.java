package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ExecutorService;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
public class FirebaseMessagingService extends EnhancedIntentService {
    public static final String ACTION_DIRECT_BOOT_REMOTE_INTENT = "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT";

    /* renamed from: i, reason: collision with root package name */
    private static final Queue<String> f15187i = new ArrayDeque(10);

    private boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (f15187i.contains(str)) {
            if (!Log.isLoggable("FirebaseMessaging", 3)) {
                return true;
            }
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Received duplicate message: ".concat(valueOf);
                return true;
            }
            new String("Received duplicate message: ");
            return true;
        }
        if (f15187i.size() >= 10) {
            f15187i.remove();
        }
        f15187i.add(str);
        return false;
    }

    private String b(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    private void c(Intent intent) {
        if (a(intent.getStringExtra("google.message_id"))) {
            return;
        }
        e(intent);
    }

    private void d(Intent intent) {
        if (u.u(intent)) {
            u.q(intent);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void e(Intent intent) {
        char c2;
        String stringExtra = intent.getStringExtra("message_type");
        if (stringExtra == null) {
            stringExtra = "gcm";
        }
        switch (stringExtra.hashCode()) {
            case -2062414158:
                if (stringExtra.equals("deleted_messages")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 102161:
                if (stringExtra.equals("gcm")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 814694033:
                if (stringExtra.equals("send_error")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 814800675:
                if (stringExtra.equals("send_event")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            u.r(intent);
            a(intent);
            return;
        }
        if (c2 == 1) {
            onDeletedMessages();
            return;
        }
        if (c2 == 2) {
            onMessageSent(intent.getStringExtra("google.message_id"));
            return;
        }
        if (c2 != 3) {
            if (stringExtra.length() != 0) {
                "Received message with unknown type: ".concat(stringExtra);
                return;
            } else {
                new String("Received message with unknown type: ");
                return;
            }
        }
        onSendError(b(intent), new x(intent.getStringExtra(HummerConstants.HUMMER_ERROR)));
    }

    @Override // com.google.firebase.messaging.EnhancedIntentService
    protected Intent getStartCommandIntent(Intent intent) {
        return com.google.firebase.iid.w.b().a();
    }

    @Override // com.google.firebase.messaging.EnhancedIntentService
    public void handleIntent(Intent intent) {
        String action = intent.getAction();
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(action) && !ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(action)) {
            if ("com.google.firebase.messaging.NOTIFICATION_DISMISS".equals(action)) {
                if (u.u(intent)) {
                    u.o(intent);
                    return;
                }
                return;
            } else {
                if ("com.google.firebase.messaging.NEW_TOKEN".equals(action)) {
                    onNewToken(intent.getStringExtra("token"));
                    return;
                }
                String valueOf = String.valueOf(intent.getAction());
                if (valueOf.length() != 0) {
                    "Unknown intent action: ".concat(valueOf);
                    return;
                } else {
                    new String("Unknown intent action: ");
                    return;
                }
            }
        }
        c(intent);
    }

    @Override // com.google.firebase.messaging.EnhancedIntentService
    public boolean handleIntentOnMainThread(Intent intent) {
        if (!"com.google.firebase.messaging.NOTIFICATION_OPEN".equals(intent.getAction())) {
            return false;
        }
        d(intent);
        return true;
    }

    @WorkerThread
    public void onDeletedMessages() {
    }

    @WorkerThread
    public void onMessageReceived(@NonNull RemoteMessage remoteMessage) {
    }

    @WorkerThread
    public void onMessageSent(@NonNull String str) {
    }

    @WorkerThread
    public void onNewToken(@NonNull String str) {
    }

    @WorkerThread
    public void onSendError(@NonNull String str, @NonNull Exception exc) {
    }

    private void a(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        extras.remove("androidx.content.wakelockid");
        if (v.a(extras)) {
            v vVar = new v(extras);
            ExecutorService c2 = g.c();
            try {
                if (new c(this, vVar, c2).a()) {
                    return;
                }
                c2.shutdown();
                if (u.u(intent)) {
                    u.p(intent);
                }
            } finally {
                c2.shutdown();
            }
        }
        onMessageReceived(new RemoteMessage(extras));
    }
}
