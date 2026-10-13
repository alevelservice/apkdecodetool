package androidx.media.session;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.KeyEvent;
import androidx.annotation.RestrictTo;
import androidx.media.MediaBrowserServiceCompat;
import java.util.List;

/* loaded from: classes.dex */
public class MediaButtonReceiver extends BroadcastReceiver {

    /* loaded from: classes.dex */
    private static class a extends MediaBrowserCompat.b {

        /* renamed from: c, reason: collision with root package name */
        private final Context f2496c;

        /* renamed from: d, reason: collision with root package name */
        private final Intent f2497d;

        /* renamed from: e, reason: collision with root package name */
        private final BroadcastReceiver.PendingResult f2498e;

        /* renamed from: f, reason: collision with root package name */
        private MediaBrowserCompat f2499f;

        a(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.f2496c = context;
            this.f2497d = intent;
            this.f2498e = pendingResult;
        }

        private void d() {
            this.f2499f.b();
            this.f2498e.finish();
        }

        void a(MediaBrowserCompat mediaBrowserCompat) {
            this.f2499f = mediaBrowserCompat;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public void b() {
            d();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public void c() {
            d();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public void a() {
            try {
                new MediaControllerCompat(this.f2496c, this.f2499f.c()).a((KeyEvent) this.f2497d.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            } catch (RemoteException unused) {
            }
            d();
        }
    }

    private static void a(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, long j2) {
        ComponentName mediaButtonReceiverComponent = getMediaButtonReceiverComponent(context);
        if (mediaButtonReceiverComponent == null) {
            return null;
        }
        return buildMediaButtonPendingIntent(context, mediaButtonReceiverComponent, j2);
    }

    @RestrictTo({RestrictTo.a.LIBRARY})
    public static ComponentName getMediaButtonReceiverComponent(Context context) {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers.size() == 1) {
            ResolveInfo resolveInfo = queryBroadcastReceivers.get(0);
            return new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        }
        queryBroadcastReceivers.size();
        return null;
    }

    public static KeyEvent handleIntent(MediaSessionCompat mediaSessionCompat, Intent intent) {
        if (mediaSessionCompat == null || intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            return null;
        }
        KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        mediaSessionCompat.a().a(keyEvent);
        return keyEvent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && "android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) && intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            ComponentName a2 = a(context, "android.intent.action.MEDIA_BUTTON");
            if (a2 != null) {
                intent.setComponent(a2);
                a(context, intent);
                return;
            }
            ComponentName a3 = a(context, MediaBrowserServiceCompat.SERVICE_INTERFACE);
            if (a3 != null) {
                BroadcastReceiver.PendingResult goAsync = goAsync();
                Context applicationContext = context.getApplicationContext();
                a aVar = new a(applicationContext, intent, goAsync);
                MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, a3, aVar, null);
                aVar.a(mediaBrowserCompat);
                mediaBrowserCompat.a();
                return;
            }
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
        }
        String str = "Ignore unsupported intent: " + intent;
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, ComponentName componentName, long j2) {
        if (componentName == null) {
            return null;
        }
        int a2 = PlaybackStateCompat.a(j2);
        if (a2 == 0) {
            String str = "Cannot build a media button pending intent with the given action: " + j2;
            return null;
        }
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(componentName);
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, a2));
        return PendingIntent.getBroadcast(context, a2, intent, 0);
    }

    private static ComponentName a(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices.size() == 1) {
            ResolveInfo resolveInfo = queryIntentServices.get(0);
            return new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
        }
        if (queryIntentServices.isEmpty()) {
            return null;
        }
        throw new IllegalStateException("Expected 1 service that handles " + str + ", found " + queryIntentServices.size());
    }
}
