package a.i.l;

import java.util.Locale;

/* compiled from: TextDirectionHeuristicsCompat.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final a.i.l.d f348a = new C0008e(null, false);

    /* renamed from: b, reason: collision with root package name */
    public static final a.i.l.d f349b = new C0008e(null, true);

    /* renamed from: c, reason: collision with root package name */
    public static final a.i.l.d f350c = new C0008e(b.f354a, false);

    /* renamed from: d, reason: collision with root package name */
    public static final a.i.l.d f351d = new C0008e(b.f354a, true);

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    private static class a implements c {

        /* renamed from: b, reason: collision with root package name */
        static final a f352b = new a(true);

        /* renamed from: a, reason: collision with root package name */
        private final boolean f353a;

        private a(boolean z) {
            this.f353a = z;
        }

        @Override // a.i.l.e.c
        public int a(CharSequence charSequence, int i2, int i3) {
            int i4 = i3 + i2;
            boolean z = false;
            while (i2 < i4) {
                int a2 = e.a(Character.getDirectionality(charSequence.charAt(i2)));
                if (a2 != 0) {
                    if (a2 != 1) {
                        continue;
                        i2++;
                    } else if (!this.f353a) {
                        return 1;
                    }
                } else if (this.f353a) {
                    return 0;
                }
                z = true;
                i2++;
            }
            if (z) {
                return this.f353a ? 1 : 0;
            }
            return 2;
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    private static class b implements c {

        /* renamed from: a, reason: collision with root package name */
        static final b f354a = new b();

        private b() {
        }

        @Override // a.i.l.e.c
        public int a(CharSequence charSequence, int i2, int i3) {
            int i4 = i3 + i2;
            int i5 = 2;
            while (i2 < i4 && i5 == 2) {
                i5 = e.b(Character.getDirectionality(charSequence.charAt(i2)));
                i2++;
            }
            return i5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    public interface c {
        int a(CharSequence charSequence, int i2, int i3);
    }

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    private static abstract class d implements a.i.l.d {

        /* renamed from: a, reason: collision with root package name */
        private final c f355a;

        d(c cVar) {
            this.f355a = cVar;
        }

        private boolean b(CharSequence charSequence, int i2, int i3) {
            int a2 = this.f355a.a(charSequence, i2, i3);
            if (a2 == 0) {
                return true;
            }
            if (a2 != 1) {
                return a();
            }
            return false;
        }

        protected abstract boolean a();

        @Override // a.i.l.d
        public boolean a(CharSequence charSequence, int i2, int i3) {
            if (charSequence != null && i2 >= 0 && i3 >= 0 && charSequence.length() - i3 >= i2) {
                if (this.f355a == null) {
                    return a();
                }
                return b(charSequence, i2, i3);
            }
            throw new IllegalArgumentException();
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* renamed from: a.i.l.e$e, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0008e extends d {

        /* renamed from: b, reason: collision with root package name */
        private final boolean f356b;

        C0008e(c cVar, boolean z) {
            super(cVar);
            this.f356b = z;
        }

        @Override // a.i.l.e.d
        protected boolean a() {
            return this.f356b;
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    private static class f extends d {

        /* renamed from: b, reason: collision with root package name */
        static final f f357b = new f();

        f() {
            super(null);
        }

        @Override // a.i.l.e.d
        protected boolean a() {
            return a.i.l.f.b(Locale.getDefault()) == 1;
        }
    }

    static {
        new C0008e(a.f352b, false);
        f fVar = f.f357b;
    }

    static int a(int i2) {
        if (i2 != 0) {
            return (i2 == 1 || i2 == 2) ? 0 : 2;
        }
        return 1;
    }

    static int b(int i2) {
        if (i2 != 0) {
            if (i2 == 1 || i2 == 2) {
                return 0;
            }
            switch (i2) {
                case 14:
                case 15:
                    break;
                case 16:
                case 17:
                    return 0;
                default:
                    return 2;
            }
        }
        return 1;
    }
}
