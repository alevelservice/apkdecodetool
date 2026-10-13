package androidx.core.app;

import android.app.Notification;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NotificationCompatBuilder.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class h implements g {

    /* renamed from: a, reason: collision with root package name */
    private final Notification.Builder f1734a;

    /* renamed from: b, reason: collision with root package name */
    private final NotificationCompat.d f1735b;

    /* renamed from: c, reason: collision with root package name */
    private RemoteViews f1736c;

    /* renamed from: d, reason: collision with root package name */
    private RemoteViews f1737d;

    /* renamed from: e, reason: collision with root package name */
    private final List<Bundle> f1738e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    private final Bundle f1739f = new Bundle();

    /* renamed from: g, reason: collision with root package name */
    private int f1740g;

    /* renamed from: h, reason: collision with root package name */
    private RemoteViews f1741h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(NotificationCompat.d dVar) {
        ArrayList<String> arrayList;
        this.f1735b = dVar;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1734a = new Notification.Builder(dVar.f1674a, dVar.J);
        } else {
            this.f1734a = new Notification.Builder(dVar.f1674a);
        }
        Notification notification = dVar.Q;
        this.f1734a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, dVar.f1681h).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(dVar.f1677d).setContentText(dVar.f1678e).setContentInfo(dVar.f1683j).setContentIntent(dVar.f1679f).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(dVar.f1680g, (notification.flags & 128) != 0).setLargeIcon(dVar.f1682i).setNumber(dVar.f1684k).setProgress(dVar.s, dVar.t, dVar.u);
        if (Build.VERSION.SDK_INT < 21) {
            this.f1734a.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1734a.setSubText(dVar.q).setUsesChronometer(dVar.n).setPriority(dVar.f1685l);
            Iterator<NotificationCompat.Action> it = dVar.f1675b.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            Bundle bundle = dVar.C;
            if (bundle != null) {
                this.f1739f.putAll(bundle);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (dVar.y) {
                    this.f1739f.putBoolean("android.support.localOnly", true);
                }
                String str = dVar.v;
                if (str != null) {
                    this.f1739f.putString("android.support.groupKey", str);
                    if (dVar.w) {
                        this.f1739f.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f1739f.putBoolean("android.support.useSideChannel", true);
                    }
                }
                String str2 = dVar.x;
                if (str2 != null) {
                    this.f1739f.putString("android.support.sortKey", str2);
                }
            }
            this.f1736c = dVar.G;
            this.f1737d = dVar.H;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1734a.setShowWhen(dVar.m);
            if (Build.VERSION.SDK_INT < 21 && (arrayList = dVar.S) != null && !arrayList.isEmpty()) {
                Bundle bundle2 = this.f1739f;
                ArrayList<String> arrayList2 = dVar.S;
                bundle2.putStringArray("android.people", (String[]) arrayList2.toArray(new String[arrayList2.size()]));
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f1734a.setLocalOnly(dVar.y).setGroup(dVar.v).setGroupSummary(dVar.w).setSortKey(dVar.x);
            this.f1740g = dVar.N;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1734a.setCategory(dVar.B).setColor(dVar.D).setVisibility(dVar.E).setPublicVersion(dVar.F).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it2 = dVar.S.iterator();
            while (it2.hasNext()) {
                this.f1734a.addPerson(it2.next());
            }
            this.f1741h = dVar.I;
            if (dVar.f1676c.size() > 0) {
                Bundle bundle3 = dVar.c().getBundle("android.car.EXTENSIONS");
                bundle3 = bundle3 == null ? new Bundle() : bundle3;
                Bundle bundle4 = new Bundle();
                for (int i2 = 0; i2 < dVar.f1676c.size(); i2++) {
                    bundle4.putBundle(Integer.toString(i2), i.a(dVar.f1676c.get(i2)));
                }
                bundle3.putBundle("invisible_actions", bundle4);
                dVar.c().putBundle("android.car.EXTENSIONS", bundle3);
                this.f1739f.putBundle("android.car.EXTENSIONS", bundle3);
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f1734a.setExtras(dVar.C).setRemoteInputHistory(dVar.r);
            RemoteViews remoteViews = dVar.G;
            if (remoteViews != null) {
                this.f1734a.setCustomContentView(remoteViews);
            }
            RemoteViews remoteViews2 = dVar.H;
            if (remoteViews2 != null) {
                this.f1734a.setCustomBigContentView(remoteViews2);
            }
            RemoteViews remoteViews3 = dVar.I;
            if (remoteViews3 != null) {
                this.f1734a.setCustomHeadsUpContentView(remoteViews3);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1734a.setBadgeIconType(dVar.K).setShortcutId(dVar.L).setTimeoutAfter(dVar.M).setGroupAlertBehavior(dVar.N);
            if (dVar.A) {
                this.f1734a.setColorized(dVar.z);
            }
            if (!TextUtils.isEmpty(dVar.J)) {
                this.f1734a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1734a.setAllowSystemGeneratedContextualActions(dVar.O);
            this.f1734a.setBubbleMetadata(NotificationCompat.c.a(dVar.P));
        }
        if (dVar.R) {
            if (this.f1735b.w) {
                this.f1740g = 2;
            } else {
                this.f1740g = 1;
            }
            this.f1734a.setVibrate(null);
            this.f1734a.setSound(null);
            notification.defaults &= -2;
            notification.defaults &= -3;
            this.f1734a.setDefaults(notification.defaults);
            if (Build.VERSION.SDK_INT >= 26) {
                if (TextUtils.isEmpty(this.f1735b.v)) {
                    this.f1734a.setGroup("silent");
                }
                this.f1734a.setGroupAlertBehavior(this.f1740g);
            }
        }
    }

    @Override // androidx.core.app.g
    public Notification.Builder a() {
        return this.f1734a;
    }

    public Notification b() {
        Bundle a2;
        RemoteViews d2;
        RemoteViews b2;
        NotificationCompat.g gVar = this.f1735b.p;
        if (gVar != null) {
            gVar.a(this);
        }
        RemoteViews c2 = gVar != null ? gVar.c(this) : null;
        Notification c3 = c();
        if (c2 != null) {
            c3.contentView = c2;
        } else {
            RemoteViews remoteViews = this.f1735b.G;
            if (remoteViews != null) {
                c3.contentView = remoteViews;
            }
        }
        if (Build.VERSION.SDK_INT >= 16 && gVar != null && (b2 = gVar.b(this)) != null) {
            c3.bigContentView = b2;
        }
        if (Build.VERSION.SDK_INT >= 21 && gVar != null && (d2 = this.f1735b.p.d(this)) != null) {
            c3.headsUpContentView = d2;
        }
        if (Build.VERSION.SDK_INT >= 16 && gVar != null && (a2 = NotificationCompat.a(c3)) != null) {
            gVar.a(a2);
        }
        return c3;
    }

    protected Notification c() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            return this.f1734a.build();
        }
        if (i2 >= 24) {
            Notification build = this.f1734a.build();
            if (this.f1740g != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && this.f1740g == 2) {
                    a(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && this.f1740g == 1) {
                    a(build);
                }
            }
            return build;
        }
        if (i2 >= 21) {
            this.f1734a.setExtras(this.f1739f);
            Notification build2 = this.f1734a.build();
            RemoteViews remoteViews = this.f1736c;
            if (remoteViews != null) {
                build2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.f1737d;
            if (remoteViews2 != null) {
                build2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.f1741h;
            if (remoteViews3 != null) {
                build2.headsUpContentView = remoteViews3;
            }
            if (this.f1740g != 0) {
                if (build2.getGroup() != null && (build2.flags & 512) != 0 && this.f1740g == 2) {
                    a(build2);
                }
                if (build2.getGroup() != null && (build2.flags & 512) == 0 && this.f1740g == 1) {
                    a(build2);
                }
            }
            return build2;
        }
        if (i2 >= 20) {
            this.f1734a.setExtras(this.f1739f);
            Notification build3 = this.f1734a.build();
            RemoteViews remoteViews4 = this.f1736c;
            if (remoteViews4 != null) {
                build3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.f1737d;
            if (remoteViews5 != null) {
                build3.bigContentView = remoteViews5;
            }
            if (this.f1740g != 0) {
                if (build3.getGroup() != null && (build3.flags & 512) != 0 && this.f1740g == 2) {
                    a(build3);
                }
                if (build3.getGroup() != null && (build3.flags & 512) == 0 && this.f1740g == 1) {
                    a(build3);
                }
            }
            return build3;
        }
        if (i2 >= 19) {
            SparseArray<Bundle> a2 = i.a(this.f1738e);
            if (a2 != null) {
                this.f1739f.putSparseParcelableArray("android.support.actionExtras", a2);
            }
            this.f1734a.setExtras(this.f1739f);
            Notification build4 = this.f1734a.build();
            RemoteViews remoteViews6 = this.f1736c;
            if (remoteViews6 != null) {
                build4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.f1737d;
            if (remoteViews7 != null) {
                build4.bigContentView = remoteViews7;
            }
            return build4;
        }
        if (i2 >= 16) {
            Notification build5 = this.f1734a.build();
            Bundle a3 = NotificationCompat.a(build5);
            Bundle bundle = new Bundle(this.f1739f);
            for (String str : this.f1739f.keySet()) {
                if (a3.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            a3.putAll(bundle);
            SparseArray<Bundle> a4 = i.a(this.f1738e);
            if (a4 != null) {
                NotificationCompat.a(build5).putSparseParcelableArray("android.support.actionExtras", a4);
            }
            RemoteViews remoteViews8 = this.f1736c;
            if (remoteViews8 != null) {
                build5.contentView = remoteViews8;
            }
            RemoteViews remoteViews9 = this.f1737d;
            if (remoteViews9 != null) {
                build5.bigContentView = remoteViews9;
            }
            return build5;
        }
        return this.f1734a.getNotification();
    }

    private void a(NotificationCompat.Action action) {
        Notification.Action.Builder builder;
        Bundle bundle;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 20) {
            if (i2 >= 16) {
                this.f1738e.add(i.a(this.f1734a, action));
                return;
            }
            return;
        }
        IconCompat f2 = action.f();
        if (Build.VERSION.SDK_INT >= 23) {
            builder = new Notification.Action.Builder(f2 != null ? f2.g() : null, action.j(), action.a());
        } else {
            builder = new Notification.Action.Builder(f2 != null ? f2.a() : 0, action.j(), action.a());
        }
        if (action.g() != null) {
            for (android.app.RemoteInput remoteInput : RemoteInput.a(action.g())) {
                builder.addRemoteInput(remoteInput);
            }
        }
        if (action.d() != null) {
            bundle = new Bundle(action.d());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", action.b());
        if (Build.VERSION.SDK_INT >= 24) {
            builder.setAllowGeneratedReplies(action.b());
        }
        bundle.putInt("android.support.action.semanticAction", action.h());
        if (Build.VERSION.SDK_INT >= 28) {
            builder.setSemanticAction(action.h());
        }
        if (Build.VERSION.SDK_INT >= 29) {
            builder.setContextual(action.k());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", action.i());
        builder.addExtras(bundle);
        this.f1734a.addAction(builder.build());
    }

    private void a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }
}
