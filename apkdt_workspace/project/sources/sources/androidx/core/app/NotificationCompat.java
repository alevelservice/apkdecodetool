package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.widget.RemoteViews;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class NotificationCompat {

    /* loaded from: classes.dex */
    public static class Action {

        /* renamed from: a, reason: collision with root package name */
        final Bundle f1659a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        private IconCompat f1660b;

        /* renamed from: c, reason: collision with root package name */
        private final RemoteInput[] f1661c;

        /* renamed from: d, reason: collision with root package name */
        private final RemoteInput[] f1662d;

        /* renamed from: e, reason: collision with root package name */
        private boolean f1663e;

        /* renamed from: f, reason: collision with root package name */
        boolean f1664f;

        /* renamed from: g, reason: collision with root package name */
        private final int f1665g;

        /* renamed from: h, reason: collision with root package name */
        private final boolean f1666h;

        /* renamed from: i, reason: collision with root package name */
        @Deprecated
        public int f1667i;

        /* renamed from: j, reason: collision with root package name */
        public CharSequence f1668j;

        /* renamed from: k, reason: collision with root package name */
        public PendingIntent f1669k;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface SemanticAction {
        }

        public Action(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i2 != 0 ? IconCompat.a(null, "", i2) : null, charSequence, pendingIntent);
        }

        public PendingIntent a() {
            return this.f1669k;
        }

        public boolean b() {
            return this.f1663e;
        }

        public RemoteInput[] c() {
            return this.f1662d;
        }

        public Bundle d() {
            return this.f1659a;
        }

        @Deprecated
        public int e() {
            return this.f1667i;
        }

        @Nullable
        public IconCompat f() {
            int i2;
            if (this.f1660b == null && (i2 = this.f1667i) != 0) {
                this.f1660b = IconCompat.a(null, "", i2);
            }
            return this.f1660b;
        }

        public RemoteInput[] g() {
            return this.f1661c;
        }

        public int h() {
            return this.f1665g;
        }

        public boolean i() {
            return this.f1664f;
        }

        public CharSequence j() {
            return this.f1668j;
        }

        public boolean k() {
            return this.f1666h;
        }

        public Action(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true, false);
        }

        Action(@Nullable IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, RemoteInput[] remoteInputArr2, boolean z, int i2, boolean z2, boolean z3) {
            this.f1664f = true;
            this.f1660b = iconCompat;
            if (iconCompat != null && iconCompat.c() == 2) {
                this.f1667i = iconCompat.a();
            }
            this.f1668j = d.e(charSequence);
            this.f1669k = pendingIntent;
            this.f1659a = bundle == null ? new Bundle() : bundle;
            this.f1661c = remoteInputArr;
            this.f1662d = remoteInputArr2;
            this.f1663e = z;
            this.f1665g = i2;
            this.f1664f = z2;
            this.f1666h = z3;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface BadgeIconType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface GroupAlertBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface NotificationVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface StreamType {
    }

    /* loaded from: classes.dex */
    public static class a extends g {

        /* renamed from: e, reason: collision with root package name */
        private Bitmap f1670e;

        /* renamed from: f, reason: collision with root package name */
        private Bitmap f1671f;

        /* renamed from: g, reason: collision with root package name */
        private boolean f1672g;

        public a a(CharSequence charSequence) {
            this.f1698b = d.e(charSequence);
            return this;
        }

        public a b(CharSequence charSequence) {
            this.f1699c = d.e(charSequence);
            this.f1700d = true;
            return this;
        }

        public a a(Bitmap bitmap) {
            this.f1671f = bitmap;
            this.f1672g = true;
            return this;
        }

        public a b(Bitmap bitmap) {
            this.f1670e = bitmap;
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.g
        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public void a(androidx.core.app.g gVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigPictureStyle bigPicture = new Notification.BigPictureStyle(gVar.a()).setBigContentTitle(this.f1698b).bigPicture(this.f1670e);
                if (this.f1672g) {
                    bigPicture.bigLargeIcon(this.f1671f);
                }
                if (this.f1700d) {
                    bigPicture.setSummaryText(this.f1699c);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class b extends g {

        /* renamed from: e, reason: collision with root package name */
        private CharSequence f1673e;

        public b a(CharSequence charSequence) {
            this.f1673e = d.e(charSequence);
            return this;
        }

        public b b(CharSequence charSequence) {
            this.f1698b = d.e(charSequence);
            return this;
        }

        public b c(CharSequence charSequence) {
            this.f1699c = d.e(charSequence);
            this.f1700d = true;
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.g
        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public void a(androidx.core.app.g gVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigText = new Notification.BigTextStyle(gVar.a()).setBigContentTitle(this.f1698b).bigText(this.f1673e);
                if (this.f1700d) {
                    bigText.setSummaryText(this.f1699c);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class c {
        @Nullable
        @RequiresApi(29)
        public static Notification.BubbleMetadata a(@Nullable c cVar) {
            if (cVar == null) {
                return null;
            }
            new Notification.BubbleMetadata.Builder();
            cVar.a();
            throw null;
        }

        public boolean a() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class d {
        boolean A;
        String B;
        Bundle C;
        int D;
        int E;
        Notification F;
        RemoteViews G;
        RemoteViews H;
        RemoteViews I;
        String J;
        int K;
        String L;
        long M;
        int N;
        boolean O;
        c P;
        Notification Q;
        boolean R;

        @Deprecated
        public ArrayList<String> S;

        /* renamed from: a, reason: collision with root package name */
        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public Context f1674a;

        /* renamed from: b, reason: collision with root package name */
        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public ArrayList<Action> f1675b;

        /* renamed from: c, reason: collision with root package name */
        ArrayList<Action> f1676c;

        /* renamed from: d, reason: collision with root package name */
        CharSequence f1677d;

        /* renamed from: e, reason: collision with root package name */
        CharSequence f1678e;

        /* renamed from: f, reason: collision with root package name */
        PendingIntent f1679f;

        /* renamed from: g, reason: collision with root package name */
        PendingIntent f1680g;

        /* renamed from: h, reason: collision with root package name */
        RemoteViews f1681h;

        /* renamed from: i, reason: collision with root package name */
        Bitmap f1682i;

        /* renamed from: j, reason: collision with root package name */
        CharSequence f1683j;

        /* renamed from: k, reason: collision with root package name */
        int f1684k;

        /* renamed from: l, reason: collision with root package name */
        int f1685l;
        boolean m;
        boolean n;
        boolean o;
        g p;
        CharSequence q;
        CharSequence[] r;
        int s;
        int t;
        boolean u;
        String v;
        boolean w;
        String x;
        boolean y;
        boolean z;

        public d(@NonNull Context context, @NonNull String str) {
            this.f1675b = new ArrayList<>();
            this.f1676c = new ArrayList<>();
            this.m = true;
            this.y = false;
            this.D = 0;
            this.E = 0;
            this.K = 0;
            this.N = 0;
            this.Q = new Notification();
            this.f1674a = context;
            this.J = str;
            this.Q.when = System.currentTimeMillis();
            this.Q.audioStreamType = -1;
            this.f1685l = 0;
            this.S = new ArrayList<>();
            this.O = true;
        }

        public d a(CharSequence charSequence) {
            this.f1678e = e(charSequence);
            return this;
        }

        public d b(long j2) {
            this.Q.when = j2;
            return this;
        }

        public d c(CharSequence charSequence) {
            this.q = e(charSequence);
            return this;
        }

        public d d(int i2) {
            this.f1684k = i2;
            return this;
        }

        public d e(boolean z) {
            a(8, z);
            return this;
        }

        public d f(boolean z) {
            this.m = z;
            return this;
        }

        public d g(boolean z) {
            this.n = z;
            return this;
        }

        public d a(int i2, int i3, boolean z) {
            this.s = i2;
            this.t = i3;
            this.u = z;
            return this;
        }

        public d b(CharSequence charSequence) {
            this.f1677d = e(charSequence);
            return this;
        }

        public d c(boolean z) {
            this.y = z;
            return this;
        }

        public d d(CharSequence charSequence) {
            this.Q.tickerText = e(charSequence);
            return this;
        }

        public d e(int i2) {
            this.f1685l = i2;
            return this;
        }

        public d f(int i2) {
            this.Q.icon = i2;
            return this;
        }

        public d g(int i2) {
            this.E = i2;
            return this;
        }

        protected static CharSequence e(CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
        }

        public d b(PendingIntent pendingIntent) {
            this.Q.deleteIntent = pendingIntent;
            return this;
        }

        public d c(String str) {
            this.v = str;
            return this;
        }

        public d d(boolean z) {
            a(2, z);
            return this;
        }

        private Bitmap b(Bitmap bitmap) {
            if (bitmap == null || Build.VERSION.SDK_INT >= 27) {
                return bitmap;
            }
            Resources resources = this.f1674a.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(a.i.b.compat_notification_large_icon_max_width);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(a.i.b.compat_notification_large_icon_max_height);
            if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                return bitmap;
            }
            double d2 = dimensionPixelSize;
            double max = Math.max(1, bitmap.getWidth());
            Double.isNaN(d2);
            Double.isNaN(max);
            double d3 = d2 / max;
            double d4 = dimensionPixelSize2;
            double max2 = Math.max(1, bitmap.getHeight());
            Double.isNaN(d4);
            Double.isNaN(max2);
            double min = Math.min(d3, d4 / max2);
            double width = bitmap.getWidth();
            Double.isNaN(width);
            int ceil = (int) Math.ceil(width * min);
            double height = bitmap.getHeight();
            Double.isNaN(height);
            return Bitmap.createScaledBitmap(bitmap, ceil, (int) Math.ceil(height * min), true);
        }

        public Bundle c() {
            if (this.C == null) {
                this.C = new Bundle();
            }
            return this.C;
        }

        public d d(String str) {
            this.L = str;
            return this;
        }

        public d a(PendingIntent pendingIntent) {
            this.f1679f = pendingIntent;
            return this;
        }

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public int d() {
            return this.f1685l;
        }

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public long e() {
            if (this.m) {
                return this.Q.when;
            }
            return 0L;
        }

        public d a(PendingIntent pendingIntent, boolean z) {
            this.f1680g = pendingIntent;
            a(128, z);
            return this;
        }

        public d c(int i2) {
            this.N = i2;
            return this;
        }

        public d a(Bitmap bitmap) {
            this.f1682i = b(bitmap);
            return this;
        }

        public d a(Uri uri) {
            Notification notification = this.Q;
            notification.sound = uri;
            notification.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        public d a(long[] jArr) {
            this.Q.vibrate = jArr;
            return this;
        }

        public d a(@ColorInt int i2, int i3, int i4) {
            Notification notification = this.Q;
            notification.ledARGB = i2;
            notification.ledOnMS = i3;
            notification.ledOffMS = i4;
            int i5 = (notification.ledOnMS == 0 || notification.ledOffMS == 0) ? 0 : 1;
            Notification notification2 = this.Q;
            notification2.flags = i5 | (notification2.flags & (-2));
            return this;
        }

        public d b(int i2) {
            Notification notification = this.Q;
            notification.defaults = i2;
            if ((i2 & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        @Deprecated
        public d(Context context) {
            this(context, null);
        }

        public d b(boolean z) {
            this.w = z;
            return this;
        }

        public d b(@NonNull String str) {
            this.J = str;
            return this;
        }

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public int b() {
            return this.D;
        }

        public d a(boolean z) {
            a(16, z);
            return this;
        }

        public d a(String str) {
            this.B = str;
            return this;
        }

        private void a(int i2, boolean z) {
            if (z) {
                Notification notification = this.Q;
                notification.flags = i2 | notification.flags;
            } else {
                Notification notification2 = this.Q;
                notification2.flags = (i2 ^ (-1)) & notification2.flags;
            }
        }

        public d a(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f1675b.add(new Action(i2, charSequence, pendingIntent));
            return this;
        }

        public d a(g gVar) {
            if (this.p != gVar) {
                this.p = gVar;
                g gVar2 = this.p;
                if (gVar2 != null) {
                    gVar2.a(this);
                }
            }
            return this;
        }

        public d a(@ColorInt int i2) {
            this.D = i2;
            return this;
        }

        public d a(long j2) {
            this.M = j2;
            return this;
        }

        public Notification a() {
            return new h(this).b();
        }
    }

    /* loaded from: classes.dex */
    public static class e extends g {

        /* renamed from: e, reason: collision with root package name */
        private ArrayList<CharSequence> f1686e = new ArrayList<>();

        public e a(CharSequence charSequence) {
            this.f1686e.add(d.e(charSequence));
            return this;
        }

        public e b(CharSequence charSequence) {
            this.f1698b = d.e(charSequence);
            return this;
        }

        public e c(CharSequence charSequence) {
            this.f1699c = d.e(charSequence);
            this.f1700d = true;
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.g
        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public void a(androidx.core.app.g gVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(gVar.a()).setBigContentTitle(this.f1698b);
                if (this.f1700d) {
                    bigContentTitle.setSummaryText(this.f1699c);
                }
                Iterator<CharSequence> it = this.f1686e.iterator();
                while (it.hasNext()) {
                    bigContentTitle.addLine(it.next());
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class f extends g {

        /* renamed from: e, reason: collision with root package name */
        private final List<a> f1687e = new ArrayList();

        /* renamed from: f, reason: collision with root package name */
        private k f1688f;

        /* renamed from: g, reason: collision with root package name */
        @Nullable
        private CharSequence f1689g;

        /* renamed from: h, reason: collision with root package name */
        @Nullable
        private Boolean f1690h;

        public f(@NonNull k kVar) {
            if (!TextUtils.isEmpty(kVar.c())) {
                this.f1688f = kVar;
                return;
            }
            throw new IllegalArgumentException("User's name must not be empty.");
        }

        @Nullable
        private a b() {
            for (int size = this.f1687e.size() - 1; size >= 0; size--) {
                a aVar = this.f1687e.get(size);
                if (aVar.c() != null && !TextUtils.isEmpty(aVar.c().c())) {
                    return aVar;
                }
            }
            if (this.f1687e.isEmpty()) {
                return null;
            }
            return this.f1687e.get(r0.size() - 1);
        }

        private boolean c() {
            for (int size = this.f1687e.size() - 1; size >= 0; size--) {
                a aVar = this.f1687e.get(size);
                if (aVar.c() != null && aVar.c().c() == null) {
                    return true;
                }
            }
            return false;
        }

        public f a(@Nullable CharSequence charSequence) {
            this.f1689g = charSequence;
            return this;
        }

        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a, reason: collision with root package name */
            private final CharSequence f1691a;

            /* renamed from: b, reason: collision with root package name */
            private final long f1692b;

            /* renamed from: c, reason: collision with root package name */
            @Nullable
            private final k f1693c;

            /* renamed from: d, reason: collision with root package name */
            private Bundle f1694d = new Bundle();

            /* renamed from: e, reason: collision with root package name */
            @Nullable
            private String f1695e;

            /* renamed from: f, reason: collision with root package name */
            @Nullable
            private Uri f1696f;

            public a(CharSequence charSequence, long j2, @Nullable k kVar) {
                this.f1691a = charSequence;
                this.f1692b = j2;
                this.f1693c = kVar;
            }

            private Bundle f() {
                Bundle bundle = new Bundle();
                CharSequence charSequence = this.f1691a;
                if (charSequence != null) {
                    bundle.putCharSequence("text", charSequence);
                }
                bundle.putLong("time", this.f1692b);
                k kVar = this.f1693c;
                if (kVar != null) {
                    bundle.putCharSequence("sender", kVar.c());
                    if (Build.VERSION.SDK_INT >= 28) {
                        bundle.putParcelable("sender_person", this.f1693c.g());
                    } else {
                        bundle.putBundle("person", this.f1693c.h());
                    }
                }
                String str = this.f1695e;
                if (str != null) {
                    bundle.putString("type", str);
                }
                Uri uri = this.f1696f;
                if (uri != null) {
                    bundle.putParcelable("uri", uri);
                }
                Bundle bundle2 = this.f1694d;
                if (bundle2 != null) {
                    bundle.putBundle("extras", bundle2);
                }
                return bundle;
            }

            public a a(String str, Uri uri) {
                this.f1695e = str;
                this.f1696f = uri;
                return this;
            }

            @Nullable
            public Uri b() {
                return this.f1696f;
            }

            @Nullable
            public k c() {
                return this.f1693c;
            }

            @NonNull
            public CharSequence d() {
                return this.f1691a;
            }

            public long e() {
                return this.f1692b;
            }

            @Nullable
            public String a() {
                return this.f1695e;
            }

            @NonNull
            static Bundle[] a(List<a> list) {
                Bundle[] bundleArr = new Bundle[list.size()];
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    bundleArr[i2] = list.get(i2).f();
                }
                return bundleArr;
            }
        }

        public f a(a aVar) {
            this.f1687e.add(aVar);
            if (this.f1687e.size() > 25) {
                this.f1687e.remove(0);
            }
            return this;
        }

        public f a(boolean z) {
            this.f1690h = Boolean.valueOf(z);
            return this;
        }

        public boolean a() {
            d dVar = this.f1697a;
            if (dVar != null && dVar.f1674a.getApplicationInfo().targetSdkVersion < 28 && this.f1690h == null) {
                return this.f1689g != null;
            }
            Boolean bool = this.f1690h;
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }

        private CharSequence b(a aVar) {
            a.i.l.a b2 = a.i.l.a.b();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            boolean z = Build.VERSION.SDK_INT >= 21;
            int i2 = z ? -16777216 : -1;
            CharSequence c2 = aVar.c() == null ? "" : aVar.c().c();
            if (TextUtils.isEmpty(c2)) {
                c2 = this.f1688f.c();
                if (z && this.f1697a.b() != 0) {
                    i2 = this.f1697a.b();
                }
            }
            CharSequence a2 = b2.a(c2);
            spannableStringBuilder.append(a2);
            spannableStringBuilder.setSpan(a(i2), spannableStringBuilder.length() - a2.length(), spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) "  ").append(b2.a(aVar.d() != null ? aVar.d() : ""));
            return spannableStringBuilder;
        }

        @Override // androidx.core.app.NotificationCompat.g
        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public void a(androidx.core.app.g gVar) {
            CharSequence d2;
            Notification.MessagingStyle messagingStyle;
            Notification.MessagingStyle.Message message;
            a(a());
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                if (i2 >= 28) {
                    messagingStyle = new Notification.MessagingStyle(this.f1688f.g());
                } else {
                    messagingStyle = new Notification.MessagingStyle(this.f1688f.c());
                }
                if (this.f1690h.booleanValue() || Build.VERSION.SDK_INT >= 28) {
                    messagingStyle.setConversationTitle(this.f1689g);
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    messagingStyle.setGroupConversation(this.f1690h.booleanValue());
                }
                for (a aVar : this.f1687e) {
                    if (Build.VERSION.SDK_INT >= 28) {
                        k c2 = aVar.c();
                        message = new Notification.MessagingStyle.Message(aVar.d(), aVar.e(), c2 == null ? null : c2.g());
                    } else {
                        message = new Notification.MessagingStyle.Message(aVar.d(), aVar.e(), aVar.c() != null ? aVar.c().c() : null);
                    }
                    if (aVar.a() != null) {
                        message.setData(aVar.a(), aVar.b());
                    }
                    messagingStyle.addMessage(message);
                }
                messagingStyle.setBuilder(gVar.a());
                return;
            }
            a b2 = b();
            if (this.f1689g != null && this.f1690h.booleanValue()) {
                gVar.a().setContentTitle(this.f1689g);
            } else if (b2 != null) {
                gVar.a().setContentTitle("");
                if (b2.c() != null) {
                    gVar.a().setContentTitle(b2.c().c());
                }
            }
            if (b2 != null) {
                Notification.Builder a2 = gVar.a();
                if (this.f1689g != null) {
                    d2 = b(b2);
                } else {
                    d2 = b2.d();
                }
                a2.setContentText(d2);
            }
            if (Build.VERSION.SDK_INT >= 16) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                boolean z = this.f1689g != null || c();
                for (int size = this.f1687e.size() - 1; size >= 0; size--) {
                    a aVar2 = this.f1687e.get(size);
                    CharSequence b3 = z ? b(aVar2) : aVar2.d();
                    if (size != this.f1687e.size() - 1) {
                        spannableStringBuilder.insert(0, (CharSequence) "\n");
                    }
                    spannableStringBuilder.insert(0, b3);
                }
                new Notification.BigTextStyle(gVar.a()).setBigContentTitle(null).bigText(spannableStringBuilder);
            }
        }

        @NonNull
        private TextAppearanceSpan a(int i2) {
            return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i2), null);
        }

        @Override // androidx.core.app.NotificationCompat.g
        public void a(Bundle bundle) {
            super.a(bundle);
            bundle.putCharSequence("android.selfDisplayName", this.f1688f.c());
            bundle.putBundle("android.messagingStyleUser", this.f1688f.h());
            bundle.putCharSequence("android.hiddenConversationTitle", this.f1689g);
            if (this.f1689g != null && this.f1690h.booleanValue()) {
                bundle.putCharSequence("android.conversationTitle", this.f1689g);
            }
            if (!this.f1687e.isEmpty()) {
                bundle.putParcelableArray("android.messages", a.a(this.f1687e));
            }
            Boolean bool = this.f1690h;
            if (bool != null) {
                bundle.putBoolean("android.isGroupConversation", bool.booleanValue());
            }
        }
    }

    @Nullable
    public static Bundle a(Notification notification) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            return notification.extras;
        }
        if (i2 >= 16) {
            return i.a(notification);
        }
        return null;
    }

    /* loaded from: classes.dex */
    public static abstract class g {

        /* renamed from: a, reason: collision with root package name */
        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        protected d f1697a;

        /* renamed from: b, reason: collision with root package name */
        CharSequence f1698b;

        /* renamed from: c, reason: collision with root package name */
        CharSequence f1699c;

        /* renamed from: d, reason: collision with root package name */
        boolean f1700d = false;

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public void a(Bundle bundle) {
        }

        public void a(d dVar) {
            if (this.f1697a != dVar) {
                this.f1697a = dVar;
                d dVar2 = this.f1697a;
                if (dVar2 != null) {
                    dVar2.a(this);
                }
            }
        }

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public abstract void a(androidx.core.app.g gVar);

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public RemoteViews b(androidx.core.app.g gVar) {
            return null;
        }

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public RemoteViews c(androidx.core.app.g gVar) {
            return null;
        }

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public RemoteViews d(androidx.core.app.g gVar) {
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:45:0x0183  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0197  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x019d  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x01bf  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0215  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0221  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x0217  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x018f  */
        @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.a.LIBRARY_GROUP_PREFIX})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.widget.RemoteViews a(boolean r13, int r14, boolean r15) {
            /*
                Method dump skipped, instructions count: 551
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.NotificationCompat.g.a(boolean, int, boolean):android.widget.RemoteViews");
        }

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public Bitmap a(int i2, int i3) {
            return a(i2, i3, 0);
        }

        private Bitmap a(int i2, int i3, int i4) {
            return a(IconCompat.a(this.f1697a.f1674a, i2), i3, i4);
        }

        private Bitmap a(IconCompat iconCompat, int i2, int i3) {
            Drawable b2 = iconCompat.b(this.f1697a.f1674a);
            int intrinsicWidth = i3 == 0 ? b2.getIntrinsicWidth() : i3;
            if (i3 == 0) {
                i3 = b2.getIntrinsicHeight();
            }
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, i3, Bitmap.Config.ARGB_8888);
            b2.setBounds(0, 0, intrinsicWidth, i3);
            if (i2 != 0) {
                b2.mutate().setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN));
            }
            b2.draw(new Canvas(createBitmap));
            return createBitmap;
        }

        private Bitmap a(int i2, int i3, int i4, int i5) {
            int i6 = a.i.c.notification_icon_background;
            if (i5 == 0) {
                i5 = 0;
            }
            Bitmap a2 = a(i6, i5, i3);
            Canvas canvas = new Canvas(a2);
            Drawable mutate = this.f1697a.f1674a.getResources().getDrawable(i2).mutate();
            mutate.setFilterBitmap(true);
            int i7 = (i3 - i4) / 2;
            int i8 = i4 + i7;
            mutate.setBounds(i7, i7, i8, i8);
            mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
            mutate.draw(canvas);
            return a2;
        }
    }
}
