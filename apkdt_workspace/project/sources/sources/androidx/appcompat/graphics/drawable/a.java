package androidx.appcompat.graphics.drawable;

import a.e.h;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.graphics.drawable.b;
import androidx.appcompat.graphics.drawable.d;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: AnimatedStateListDrawableCompat.java */
@SuppressLint({"RestrictedAPI"})
/* loaded from: classes.dex */
public class a extends androidx.appcompat.graphics.drawable.d implements androidx.core.graphics.drawable.b {
    private c s;
    private g t;
    private int u;
    private int v;
    private boolean w;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnimatedStateListDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class b extends g {

        /* renamed from: a, reason: collision with root package name */
        private final Animatable f890a;

        b(Animatable animatable) {
            super();
            this.f890a = animatable;
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public void c() {
            this.f890a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public void d() {
            this.f890a.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedStateListDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class c extends d.a {
        a.e.d<Long> K;
        h<Integer> L;

        c(@Nullable c cVar, @NonNull a aVar, @Nullable Resources resources) {
            super(cVar, aVar, resources);
            if (cVar != null) {
                this.K = cVar.K;
                this.L = cVar.L;
            } else {
                this.K = new a.e.d<>();
                this.L = new h<>();
            }
        }

        private static long f(int i2, int i3) {
            return i3 | (i2 << 32);
        }

        int a(int i2, int i3, @NonNull Drawable drawable, boolean z) {
            int a2 = super.a(drawable);
            long f2 = f(i2, i3);
            long j2 = z ? 8589934592L : 0L;
            long j3 = a2;
            this.K.a(f2, (long) Long.valueOf(j3 | j2));
            if (z) {
                this.K.a(f(i3, i2), (long) Long.valueOf(4294967296L | j3 | j2));
            }
            return a2;
        }

        int b(@NonNull int[] iArr) {
            int a2 = super.a(iArr);
            return a2 >= 0 ? a2 : super.a(StateSet.WILD_CARD);
        }

        int c(int i2, int i3) {
            return (int) this.K.b(f(i2, i3), -1L).longValue();
        }

        int d(int i2) {
            if (i2 < 0) {
                return 0;
            }
            return this.L.b(i2, 0).intValue();
        }

        boolean e(int i2, int i3) {
            return (this.K.b(f(i2, i3), -1L).longValue() & 8589934592L) != 0;
        }

        @Override // androidx.appcompat.graphics.drawable.d.a, androidx.appcompat.graphics.drawable.b.c
        void m() {
            this.K = this.K.m0clone();
            this.L = this.L.m1clone();
        }

        @Override // androidx.appcompat.graphics.drawable.d.a, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new a(this, null);
        }

        boolean d(int i2, int i3) {
            return (this.K.b(f(i2, i3), -1L).longValue() & 4294967296L) != 0;
        }

        @Override // androidx.appcompat.graphics.drawable.d.a, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new a(this, resources);
        }

        int a(@NonNull int[] iArr, @NonNull Drawable drawable, int i2) {
            int a2 = super.a(iArr, drawable);
            this.L.c(a2, Integer.valueOf(i2));
            return a2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnimatedStateListDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class d extends g {

        /* renamed from: a, reason: collision with root package name */
        private final a.p.a.a.c f891a;

        d(a.p.a.a.c cVar) {
            super();
            this.f891a = cVar;
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public void c() {
            this.f891a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public void d() {
            this.f891a.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnimatedStateListDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class e extends g {

        /* renamed from: a, reason: collision with root package name */
        private final ObjectAnimator f892a;

        /* renamed from: b, reason: collision with root package name */
        private final boolean f893b;

        e(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i2 = z ? numberOfFrames - 1 : 0;
            int i3 = z ? 0 : numberOfFrames - 1;
            f fVar = new f(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i2, i3);
            if (Build.VERSION.SDK_INT >= 18) {
                ofInt.setAutoCancel(true);
            }
            ofInt.setDuration(fVar.a());
            ofInt.setInterpolator(fVar);
            this.f893b = z2;
            this.f892a = ofInt;
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public boolean a() {
            return this.f893b;
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public void b() {
            this.f892a.reverse();
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public void c() {
            this.f892a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public void d() {
            this.f892a.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnimatedStateListDrawableCompat.java */
    /* loaded from: classes.dex */
    public static abstract class g {
        private g() {
        }

        public boolean a() {
            return false;
        }

        public void b() {
        }

        public abstract void c();

        public abstract void d();
    }

    public a() {
        this(null, null);
    }

    public static a b(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            a aVar = new a();
            aVar.a(context, resources, xmlPullParser, attributeSet, theme);
            return aVar;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    private void c() {
        onStateChange(getState());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
    
        if (r5 != 2) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
    
        if (r7.getName().equals("vector") == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0042, code lost:
    
        r5 = a.p.a.a.i.createFromXmlInner(r6, r7, r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004b, code lost:
    
        if (android.os.Build.VERSION.SDK_INT < 21) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004d, code lost:
    
        r5 = android.graphics.drawable.Drawable.createFromXmlInner(r6, r7, r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
    
        r5 = android.graphics.drawable.Drawable.createFromXmlInner(r6, r7, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006f, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r7.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0070, code lost:
    
        if (r5 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0078, code lost:
    
        return r4.s.a(r0, r5, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0092, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r7.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0029, code lost:
    
        if (r5 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x002b, code lost:
    
        r5 = r7.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0030, code lost:
    
        if (r5 != 4) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int d(@androidx.annotation.NonNull android.content.Context r5, @androidx.annotation.NonNull android.content.res.Resources r6, @androidx.annotation.NonNull org.xmlpull.v1.XmlPullParser r7, @androidx.annotation.NonNull android.util.AttributeSet r8, @androidx.annotation.Nullable android.content.res.Resources.Theme r9) {
        /*
            r4 = this;
            int[] r0 = a.a.l.b.AnimatedStateListDrawableItem
            android.content.res.TypedArray r0 = androidx.core.content.res.f.a(r6, r9, r8, r0)
            int r1 = a.a.l.b.AnimatedStateListDrawableItem_android_id
            r2 = 0
            int r1 = r0.getResourceId(r1, r2)
            int r2 = a.a.l.b.AnimatedStateListDrawableItem_android_drawable
            r3 = -1
            int r2 = r0.getResourceId(r2, r3)
            if (r2 <= 0) goto L1f
            androidx.appcompat.widget.u r3 = androidx.appcompat.widget.u.a()
            android.graphics.drawable.Drawable r5 = r3.a(r5, r2)
            goto L20
        L1f:
            r5 = 0
        L20:
            r0.recycle()
            int[] r0 = r4.a(r8)
            java.lang.String r2 = ": <item> tag requires a 'drawable' attribute or child tag defining a drawable"
            if (r5 != 0) goto L70
        L2b:
            int r5 = r7.next()
            r3 = 4
            if (r5 != r3) goto L33
            goto L2b
        L33:
            r3 = 2
            if (r5 != r3) goto L57
            java.lang.String r5 = r7.getName()
            java.lang.String r3 = "vector"
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L47
            a.p.a.a.i r5 = a.p.a.a.i.createFromXmlInner(r6, r7, r8, r9)
            goto L70
        L47:
            int r5 = android.os.Build.VERSION.SDK_INT
            r3 = 21
            if (r5 < r3) goto L52
            android.graphics.drawable.Drawable r5 = android.graphics.drawable.Drawable.createFromXmlInner(r6, r7, r8, r9)
            goto L70
        L52:
            android.graphics.drawable.Drawable r5 = android.graphics.drawable.Drawable.createFromXmlInner(r6, r7, r8)
            goto L70
        L57:
            org.xmlpull.v1.XmlPullParserException r5 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = r7.getPositionDescription()
            r6.append(r7)
            r6.append(r2)
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            throw r5
        L70:
            if (r5 == 0) goto L79
            androidx.appcompat.graphics.drawable.a$c r6 = r4.s
            int r5 = r6.a(r0, r5, r1)
            return r5
        L79:
            org.xmlpull.v1.XmlPullParserException r5 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = r7.getPositionDescription()
            r6.append(r7)
            r6.append(r2)
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            goto L93
        L92:
            throw r5
        L93:
            goto L92
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.a.d(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
    
        if (r4 != 2) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
    
        if (r10.getName().equals("animated-vector") == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004a, code lost:
    
        r4 = a.p.a.a.c.a(r8, r9, r10, r11, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
    
        if (android.os.Build.VERSION.SDK_INT < 21) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
    
        r4 = android.graphics.drawable.Drawable.createFromXmlInner(r9, r10, r11, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005a, code lost:
    
        r4 = android.graphics.drawable.Drawable.createFromXmlInner(r9, r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0077, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0078, code lost:
    
        if (r4 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007a, code lost:
    
        if (r1 == (-1)) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007c, code lost:
    
        if (r3 == (-1)) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0084, code lost:
    
        return r7.s.a(r1, r3, r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009f, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b9, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0031, code lost:
    
        if (r4 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0033, code lost:
    
        r4 = r10.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0038, code lost:
    
        if (r4 != 4) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int e(@androidx.annotation.NonNull android.content.Context r8, @androidx.annotation.NonNull android.content.res.Resources r9, @androidx.annotation.NonNull org.xmlpull.v1.XmlPullParser r10, @androidx.annotation.NonNull android.util.AttributeSet r11, @androidx.annotation.Nullable android.content.res.Resources.Theme r12) {
        /*
            r7 = this;
            int[] r0 = a.a.l.b.AnimatedStateListDrawableTransition
            android.content.res.TypedArray r0 = androidx.core.content.res.f.a(r9, r12, r11, r0)
            int r1 = a.a.l.b.AnimatedStateListDrawableTransition_android_fromId
            r2 = -1
            int r1 = r0.getResourceId(r1, r2)
            int r3 = a.a.l.b.AnimatedStateListDrawableTransition_android_toId
            int r3 = r0.getResourceId(r3, r2)
            int r4 = a.a.l.b.AnimatedStateListDrawableTransition_android_drawable
            int r4 = r0.getResourceId(r4, r2)
            if (r4 <= 0) goto L24
            androidx.appcompat.widget.u r5 = androidx.appcompat.widget.u.a()
            android.graphics.drawable.Drawable r4 = r5.a(r8, r4)
            goto L25
        L24:
            r4 = 0
        L25:
            int r5 = a.a.l.b.AnimatedStateListDrawableTransition_android_reversible
            r6 = 0
            boolean r5 = r0.getBoolean(r5, r6)
            r0.recycle()
            java.lang.String r0 = ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable"
            if (r4 != 0) goto L78
        L33:
            int r4 = r10.next()
            r6 = 4
            if (r4 != r6) goto L3b
            goto L33
        L3b:
            r6 = 2
            if (r4 != r6) goto L5f
            java.lang.String r4 = r10.getName()
            java.lang.String r6 = "animated-vector"
            boolean r4 = r4.equals(r6)
            if (r4 == 0) goto L4f
            a.p.a.a.c r4 = a.p.a.a.c.a(r8, r9, r10, r11, r12)
            goto L78
        L4f:
            int r8 = android.os.Build.VERSION.SDK_INT
            r4 = 21
            if (r8 < r4) goto L5a
            android.graphics.drawable.Drawable r4 = android.graphics.drawable.Drawable.createFromXmlInner(r9, r10, r11, r12)
            goto L78
        L5a:
            android.graphics.drawable.Drawable r4 = android.graphics.drawable.Drawable.createFromXmlInner(r9, r10, r11)
            goto L78
        L5f:
            org.xmlpull.v1.XmlPullParserException r8 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = r10.getPositionDescription()
            r9.append(r10)
            r9.append(r0)
            java.lang.String r9 = r9.toString()
            r8.<init>(r9)
            throw r8
        L78:
            if (r4 == 0) goto La0
            if (r1 == r2) goto L85
            if (r3 == r2) goto L85
            androidx.appcompat.graphics.drawable.a$c r8 = r7.s
            int r8 = r8.a(r1, r3, r4, r5)
            return r8
        L85:
            org.xmlpull.v1.XmlPullParserException r8 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = r10.getPositionDescription()
            r9.append(r10)
            java.lang.String r10 = ": <transition> tag requires 'fromId' & 'toId' attributes"
            r9.append(r10)
            java.lang.String r9 = r9.toString()
            r8.<init>(r9)
            throw r8
        La0:
            org.xmlpull.v1.XmlPullParserException r8 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = r10.getPositionDescription()
            r9.append(r10)
            r9.append(r0)
            java.lang.String r9 = r9.toString()
            r8.<init>(r9)
            goto Lba
        Lb9:
            throw r8
        Lba:
            goto Lb9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.a.e(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):int");
    }

    @Override // androidx.appcompat.graphics.drawable.d, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.graphics.drawable.b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        g gVar = this.t;
        if (gVar != null) {
            gVar.d();
            this.t = null;
            a(this.u);
            this.u = -1;
            this.v = -1;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.d, androidx.appcompat.graphics.drawable.b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.w) {
            super.mutate();
            if (this == this) {
                this.s.m();
                this.w = true;
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.graphics.drawable.d, androidx.appcompat.graphics.drawable.b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int b2 = this.s.b(iArr);
        boolean z = b2 != b() && (b(b2) || a(b2));
        Drawable current = getCurrent();
        return current != null ? z | current.setState(iArr) : z;
    }

    @Override // androidx.appcompat.graphics.drawable.b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.t != null && (visible || z2)) {
            if (z) {
                this.t.c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    a(@Nullable c cVar, @Nullable Resources resources) {
        super(null);
        this.u = -1;
        this.v = -1;
        a(new c(cVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    private void c(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth) {
                if (xmlPullParser.getName().equals("item")) {
                    d(context, resources, xmlPullParser, attributeSet, theme);
                } else if (xmlPullParser.getName().equals("transition")) {
                    e(context, resources, xmlPullParser, attributeSet, theme);
                }
            }
        }
    }

    public void a(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
        TypedArray a2 = androidx.core.content.res.f.a(resources, theme, attributeSet, a.a.l.b.AnimatedStateListDrawableCompat);
        setVisible(a2.getBoolean(a.a.l.b.AnimatedStateListDrawableCompat_android_visible, true), true);
        a(a2);
        a(resources);
        a2.recycle();
        c(context, resources, xmlPullParser, attributeSet, theme);
        c();
    }

    private boolean b(int i2) {
        int b2;
        int c2;
        g bVar;
        g gVar = this.t;
        if (gVar != null) {
            if (i2 == this.u) {
                return true;
            }
            if (i2 == this.v && gVar.a()) {
                gVar.b();
                this.u = this.v;
                this.v = i2;
                return true;
            }
            b2 = this.u;
            gVar.d();
        } else {
            b2 = b();
        }
        this.t = null;
        this.v = -1;
        this.u = -1;
        c cVar = this.s;
        int d2 = cVar.d(b2);
        int d3 = cVar.d(i2);
        if (d3 == 0 || d2 == 0 || (c2 = cVar.c(d2, d3)) < 0) {
            return false;
        }
        boolean e2 = cVar.e(d2, d3);
        a(c2);
        Object current = getCurrent();
        if (current instanceof AnimationDrawable) {
            bVar = new e((AnimationDrawable) current, cVar.d(d2, d3), e2);
        } else if (current instanceof a.p.a.a.c) {
            bVar = new d((a.p.a.a.c) current);
        } else {
            if (current instanceof Animatable) {
                bVar = new b((Animatable) current);
            }
            return false;
        }
        bVar.c();
        this.t = bVar;
        this.v = b2;
        this.u = i2;
        return true;
    }

    /* compiled from: AnimatedStateListDrawableCompat.java */
    /* loaded from: classes.dex */
    private static class f implements TimeInterpolator {

        /* renamed from: a, reason: collision with root package name */
        private int[] f894a;

        /* renamed from: b, reason: collision with root package name */
        private int f895b;

        /* renamed from: c, reason: collision with root package name */
        private int f896c;

        f(AnimationDrawable animationDrawable, boolean z) {
            a(animationDrawable, z);
        }

        int a(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f895b = numberOfFrames;
            int[] iArr = this.f894a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f894a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f894a;
            int i2 = 0;
            for (int i3 = 0; i3 < numberOfFrames; i3++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i3) - 1 : i3);
                iArr2[i3] = duration;
                i2 += duration;
            }
            this.f896c = i2;
            return i2;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            int i2 = (int) ((f2 * this.f896c) + 0.5f);
            int i3 = this.f895b;
            int[] iArr = this.f894a;
            int i4 = 0;
            while (i4 < i3 && i2 >= iArr[i4]) {
                i2 -= iArr[i4];
                i4++;
            }
            return (i4 / i3) + (i4 < i3 ? i2 / this.f896c : 0.0f);
        }

        int a() {
            return this.f896c;
        }
    }

    private void a(TypedArray typedArray) {
        c cVar = this.s;
        if (Build.VERSION.SDK_INT >= 21) {
            cVar.f910d |= typedArray.getChangingConfigurations();
        }
        cVar.b(typedArray.getBoolean(a.a.l.b.AnimatedStateListDrawableCompat_android_variablePadding, cVar.f915i));
        cVar.a(typedArray.getBoolean(a.a.l.b.AnimatedStateListDrawableCompat_android_constantSize, cVar.f918l));
        cVar.b(typedArray.getInt(a.a.l.b.AnimatedStateListDrawableCompat_android_enterFadeDuration, cVar.A));
        cVar.c(typedArray.getInt(a.a.l.b.AnimatedStateListDrawableCompat_android_exitFadeDuration, cVar.B));
        setDither(typedArray.getBoolean(a.a.l.b.AnimatedStateListDrawableCompat_android_dither, cVar.x));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.graphics.drawable.d, androidx.appcompat.graphics.drawable.b
    public c a() {
        return new c(this.s, this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.graphics.drawable.d, androidx.appcompat.graphics.drawable.b
    public void a(@NonNull b.c cVar) {
        super.a(cVar);
        if (cVar instanceof c) {
            this.s = (c) cVar;
        }
    }
}
