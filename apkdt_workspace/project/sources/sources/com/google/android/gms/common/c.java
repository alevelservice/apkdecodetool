package com.google.android.gms.common;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Looper;
import android.os.Message;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.n0;
import com.google.android.gms.common.api.internal.zabq;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.util.o;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public class c extends d {

    /* renamed from: d, reason: collision with root package name */
    private static final Object f5162d = new Object();

    /* renamed from: e, reason: collision with root package name */
    private static final c f5163e = new c();

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private String f5164c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes.dex */
    public class a extends com.google.android.gms.internal.base.c {

        /* renamed from: a, reason: collision with root package name */
        private final Context f5165a;

        public a(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.f5165a = context.getApplicationContext();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 != 1) {
                StringBuilder sb = new StringBuilder(50);
                sb.append("Don't know how to handle this message: ");
                sb.append(i2);
                sb.toString();
                return;
            }
            int b2 = c.this.b(this.f5165a);
            if (c.this.b(b2)) {
                c.this.b(this.f5165a, b2);
            }
        }
    }

    public static c a() {
        return f5163e;
    }

    public boolean b(Activity activity, int i2, int i3, DialogInterface.OnCancelListener onCancelListener) {
        Dialog a2 = a(activity, i2, i3, onCancelListener);
        if (a2 == null) {
            return false;
        }
        a(activity, a2, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    final void c(Context context) {
        new a(context).sendEmptyMessageDelayed(1, 120000L);
    }

    public Dialog a(Activity activity, int i2, int i3, DialogInterface.OnCancelListener onCancelListener) {
        return a(activity, i2, com.google.android.gms.common.internal.e.a(activity, a(activity, i2, "d"), i3), onCancelListener);
    }

    public void b(Context context, int i2) {
        a(context, i2, (String) null, a(context, i2, 0, "n"));
    }

    @VisibleForTesting(otherwise = 2)
    private final String b() {
        String str;
        synchronized (f5162d) {
            str = this.f5164c;
        }
        return str;
    }

    public final boolean a(Activity activity, @NonNull com.google.android.gms.common.api.internal.j jVar, int i2, int i3, DialogInterface.OnCancelListener onCancelListener) {
        Dialog a2 = a(activity, i2, com.google.android.gms.common.internal.e.a(jVar, a(activity, i2, "d"), 2), onCancelListener);
        if (a2 == null) {
            return false;
        }
        a(activity, a2, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    @Override // com.google.android.gms.common.d
    @HideFirstParty
    public int b(Context context) {
        return super.b(context);
    }

    public final boolean a(Context context, ConnectionResult connectionResult, int i2) {
        PendingIntent a2 = a(context, connectionResult);
        if (a2 == null) {
            return false;
        }
        a(context, connectionResult.j(), (String) null, GoogleApiActivity.zaa(context, a2, i2));
        return true;
    }

    @Override // com.google.android.gms.common.d
    public final boolean b(int i2) {
        return super.b(i2);
    }

    public static Dialog a(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, R.attr.progressBarStyleLarge);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(com.google.android.gms.common.internal.d.b(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        a(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    @Nullable
    public final zabq a(Context context, n0 n0Var) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zabq zabqVar = new zabq(n0Var);
        context.registerReceiver(zabqVar, intentFilter);
        zabqVar.zac(context);
        if (a(context, "com.google.android.gms")) {
            return zabqVar;
        }
        n0Var.a();
        zabqVar.unregister();
        return null;
    }

    @Override // com.google.android.gms.common.d
    @ShowFirstParty
    @KeepForSdk
    public int a(Context context, int i2) {
        return super.a(context, i2);
    }

    @Override // com.google.android.gms.common.d
    @Nullable
    @ShowFirstParty
    @KeepForSdk
    public Intent a(Context context, int i2, @Nullable String str) {
        return super.a(context, i2, str);
    }

    @Override // com.google.android.gms.common.d
    @Nullable
    public PendingIntent a(Context context, int i2, int i3) {
        return super.a(context, i2, i3);
    }

    @Nullable
    public PendingIntent a(Context context, ConnectionResult connectionResult) {
        if (connectionResult.m()) {
            return connectionResult.l();
        }
        return a(context, connectionResult.j(), 0);
    }

    @Override // com.google.android.gms.common.d
    public final String a(int i2) {
        return super.a(i2);
    }

    static Dialog a(Context context, int i2, com.google.android.gms.common.internal.e eVar, DialogInterface.OnCancelListener onCancelListener) {
        if (i2 == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(context, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(com.google.android.gms.common.internal.d.b(context, i2));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String a2 = com.google.android.gms.common.internal.d.a(context, i2);
        if (a2 != null) {
            builder.setPositiveButton(a2, eVar);
        }
        String e2 = com.google.android.gms.common.internal.d.e(context, i2);
        if (e2 != null) {
            builder.setTitle(e2);
        }
        return builder.create();
    }

    static void a(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        if (activity instanceof FragmentActivity) {
            k.a(dialog, onCancelListener).a(((FragmentActivity) activity).getSupportFragmentManager(), str);
        } else {
            b.a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
        }
    }

    @TargetApi(20)
    private final void a(Context context, int i2, String str, PendingIntent pendingIntent) {
        int i3;
        if (i2 == 18) {
            c(context);
            return;
        }
        if (pendingIntent == null) {
            return;
        }
        String d2 = com.google.android.gms.common.internal.d.d(context, i2);
        String c2 = com.google.android.gms.common.internal.d.c(context, i2);
        Resources resources = context.getResources();
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        NotificationCompat.d dVar = new NotificationCompat.d(context);
        dVar.c(true);
        dVar.a(true);
        dVar.b((CharSequence) d2);
        NotificationCompat.b bVar = new NotificationCompat.b();
        bVar.a(c2);
        dVar.a(bVar);
        if (com.google.android.gms.common.util.i.c(context)) {
            m.b(o.g());
            dVar.f(context.getApplicationInfo().icon);
            dVar.e(2);
            if (com.google.android.gms.common.util.i.d(context)) {
                dVar.a(e.i.b.b.a.b.common_full_open_on_phone, resources.getString(e.i.b.b.a.c.common_open_on_phone), pendingIntent);
            } else {
                dVar.a(pendingIntent);
            }
        } else {
            dVar.f(R.drawable.stat_sys_warning);
            dVar.d((CharSequence) resources.getString(e.i.b.b.a.c.common_google_play_services_notification_ticker));
            dVar.b(System.currentTimeMillis());
            dVar.a(pendingIntent);
            dVar.a((CharSequence) c2);
        }
        if (o.k()) {
            m.b(o.k());
            String b2 = b();
            if (b2 == null) {
                b2 = "com.google.android.gms.availability";
                NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                String b3 = com.google.android.gms.common.internal.d.b(context);
                if (notificationChannel == null) {
                    notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", b3, 4));
                } else if (!b3.contentEquals(notificationChannel.getName())) {
                    notificationChannel.setName(b3);
                    notificationManager.createNotificationChannel(notificationChannel);
                }
            }
            dVar.b(b2);
        }
        Notification a2 = dVar.a();
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            i3 = 10436;
            h.f5185d.set(false);
        } else {
            i3 = 39789;
        }
        notificationManager.notify(i3, a2);
    }
}
