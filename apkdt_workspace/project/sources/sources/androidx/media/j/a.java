package androidx.media.j;

import android.app.Notification;
import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationCompat;
import androidx.core.app.g;
import androidx.media.h;
import androidx.media.i;

/* compiled from: NotificationCompat.java */
/* loaded from: classes.dex */
public class a extends NotificationCompat.g {

    /* renamed from: e, reason: collision with root package name */
    int[] f2492e = null;

    /* renamed from: f, reason: collision with root package name */
    MediaSessionCompat.Token f2493f;

    /* renamed from: g, reason: collision with root package name */
    boolean f2494g;

    /* renamed from: h, reason: collision with root package name */
    PendingIntent f2495h;

    @Override // androidx.core.app.NotificationCompat.g
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void a(g gVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            Notification.Builder a2 = gVar.a();
            Notification.MediaStyle mediaStyle = new Notification.MediaStyle();
            a(mediaStyle);
            a2.setStyle(mediaStyle);
            return;
        }
        if (this.f2494g) {
            gVar.a().setOngoing(true);
        }
    }

    RemoteViews b() {
        RemoteViews a2 = a(false, c(), true);
        int size = this.f1697a.f1675b.size();
        int[] iArr = this.f2492e;
        int min = iArr == null ? 0 : Math.min(iArr.length, 3);
        a2.removeAllViews(androidx.media.g.media_actions);
        if (min > 0) {
            for (int i2 = 0; i2 < min; i2++) {
                if (i2 < size) {
                    a2.addView(androidx.media.g.media_actions, a(this.f1697a.f1675b.get(this.f2492e[i2])));
                } else {
                    throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", Integer.valueOf(i2), Integer.valueOf(size - 1)));
                }
            }
        }
        if (this.f2494g) {
            a2.setViewVisibility(androidx.media.g.end_padder, 8);
            a2.setViewVisibility(androidx.media.g.cancel_action, 0);
            a2.setOnClickPendingIntent(androidx.media.g.cancel_action, this.f2495h);
            a2.setInt(androidx.media.g.cancel_action, "setAlpha", this.f1697a.f1674a.getResources().getInteger(h.cancel_button_image_alpha));
        } else {
            a2.setViewVisibility(androidx.media.g.end_padder, 0);
            a2.setViewVisibility(androidx.media.g.cancel_action, 8);
        }
        return a2;
    }

    @Override // androidx.core.app.NotificationCompat.g
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public RemoteViews c(g gVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return null;
        }
        return b();
    }

    int c() {
        return i.notification_template_media;
    }

    @RequiresApi(21)
    Notification.MediaStyle a(Notification.MediaStyle mediaStyle) {
        int[] iArr = this.f2492e;
        if (iArr != null) {
            mediaStyle.setShowActionsInCompactView(iArr);
        }
        MediaSessionCompat.Token token = this.f2493f;
        if (token != null) {
            mediaStyle.setMediaSession((MediaSession.Token) token.b());
        }
        return mediaStyle;
    }

    private RemoteViews a(NotificationCompat.Action action) {
        boolean z = action.a() == null;
        RemoteViews remoteViews = new RemoteViews(this.f1697a.f1674a.getPackageName(), i.notification_media_action);
        remoteViews.setImageViewResource(androidx.media.g.action0, action.e());
        if (!z) {
            remoteViews.setOnClickPendingIntent(androidx.media.g.action0, action.a());
        }
        if (Build.VERSION.SDK_INT >= 15) {
            remoteViews.setContentDescription(androidx.media.g.action0, action.j());
        }
        return remoteViews;
    }

    RemoteViews a() {
        int min = Math.min(this.f1697a.f1675b.size(), 5);
        RemoteViews a2 = a(false, a(min), false);
        a2.removeAllViews(androidx.media.g.media_actions);
        if (min > 0) {
            for (int i2 = 0; i2 < min; i2++) {
                a2.addView(androidx.media.g.media_actions, a(this.f1697a.f1675b.get(i2)));
            }
        }
        if (this.f2494g) {
            a2.setViewVisibility(androidx.media.g.cancel_action, 0);
            a2.setInt(androidx.media.g.cancel_action, "setAlpha", this.f1697a.f1674a.getResources().getInteger(h.cancel_button_image_alpha));
            a2.setOnClickPendingIntent(androidx.media.g.cancel_action, this.f2495h);
        } else {
            a2.setViewVisibility(androidx.media.g.cancel_action, 8);
        }
        return a2;
    }

    @Override // androidx.core.app.NotificationCompat.g
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public RemoteViews b(g gVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return null;
        }
        return a();
    }

    int a(int i2) {
        return i2 <= 3 ? i.notification_template_big_media_narrow : i.notification_template_big_media;
    }
}
