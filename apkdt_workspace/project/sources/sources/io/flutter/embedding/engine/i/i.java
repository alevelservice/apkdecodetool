package io.flutter.embedding.engine.i;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import g.a.c.a.k;
import g.a.c.a.o;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* compiled from: PlatformViewsChannel.java */
/* loaded from: classes2.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private final g.a.c.a.k f19161a;

    /* renamed from: b, reason: collision with root package name */
    private e f19162b;

    /* renamed from: c, reason: collision with root package name */
    private final k.c f19163c = new a();

    /* compiled from: PlatformViewsChannel.java */
    /* loaded from: classes2.dex */
    class a implements k.c {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: PlatformViewsChannel.java */
        /* renamed from: io.flutter.embedding.engine.i.i$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class RunnableC0239a implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ k.d f19165e;

            RunnableC0239a(a aVar, k.d dVar) {
                this.f19165e = dVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f19165e.a(null);
            }
        }

        a() {
        }

        private void a(@NonNull g.a.c.a.j jVar, @NonNull k.d dVar) {
            try {
                i.this.f19162b.c(((Integer) jVar.a()).intValue());
                dVar.a(null);
            } catch (IllegalStateException e2) {
                dVar.a(HummerConstants.HUMMER_ERROR, i.b(e2), null);
            }
        }

        private void b(@NonNull g.a.c.a.j jVar, @NonNull k.d dVar) {
            Map map = (Map) jVar.a();
            boolean z = map.containsKey("hybrid") && ((Boolean) map.get("hybrid")).booleanValue();
            b bVar = new b(((Integer) map.get("id")).intValue(), (String) map.get("viewType"), z ? 0.0d : ((Double) map.get("width")).doubleValue(), z ? 0.0d : ((Double) map.get("height")).doubleValue(), ((Integer) map.get("direction")).intValue(), map.containsKey(ZdocRecordService.PARAMES) ? ByteBuffer.wrap((byte[]) map.get(ZdocRecordService.PARAMES)) : null);
            try {
                if (z) {
                    i.this.f19162b.b(bVar);
                    dVar.a(null);
                } else {
                    dVar.a(Long.valueOf(i.this.f19162b.a(bVar)));
                }
            } catch (IllegalStateException e2) {
                dVar.a(HummerConstants.HUMMER_ERROR, i.b(e2), null);
            }
        }

        private void c(@NonNull g.a.c.a.j jVar, @NonNull k.d dVar) {
            Map map = (Map) jVar.a();
            int intValue = ((Integer) map.get("id")).intValue();
            try {
                if (map.containsKey("hybrid") && ((Boolean) map.get("hybrid")).booleanValue()) {
                    i.this.f19162b.a(intValue);
                } else {
                    i.this.f19162b.b(intValue);
                }
                dVar.a(null);
            } catch (IllegalStateException e2) {
                dVar.a(HummerConstants.HUMMER_ERROR, i.b(e2), null);
            }
        }

        private void d(@NonNull g.a.c.a.j jVar, @NonNull k.d dVar) {
            Map map = (Map) jVar.a();
            try {
                i.this.f19162b.a(new c(((Integer) map.get("id")).intValue(), ((Double) map.get("width")).doubleValue(), ((Double) map.get("height")).doubleValue()), new RunnableC0239a(this, dVar));
            } catch (IllegalStateException e2) {
                dVar.a(HummerConstants.HUMMER_ERROR, i.b(e2), null);
            }
        }

        private void e(@NonNull g.a.c.a.j jVar, @NonNull k.d dVar) {
            Map map = (Map) jVar.a();
            try {
                i.this.f19162b.a(((Integer) map.get("id")).intValue(), ((Integer) map.get("direction")).intValue());
                dVar.a(null);
            } catch (IllegalStateException e2) {
                dVar.a(HummerConstants.HUMMER_ERROR, i.b(e2), null);
            }
        }

        private void f(@NonNull g.a.c.a.j jVar, @NonNull k.d dVar) {
            k.d dVar2;
            List list = (List) jVar.a();
            try {
                i.this.f19162b.a(new d(((Integer) list.get(0)).intValue(), (Number) list.get(1), (Number) list.get(2), ((Integer) list.get(3)).intValue(), ((Integer) list.get(4)).intValue(), list.get(5), list.get(6), ((Integer) list.get(7)).intValue(), ((Integer) list.get(8)).intValue(), (float) ((Double) list.get(9)).doubleValue(), (float) ((Double) list.get(10)).doubleValue(), ((Integer) list.get(11)).intValue(), ((Integer) list.get(12)).intValue(), ((Integer) list.get(13)).intValue(), ((Integer) list.get(14)).intValue(), ((Number) list.get(15)).longValue()));
                dVar2 = dVar;
            } catch (IllegalStateException e2) {
                e = e2;
                dVar2 = dVar;
            }
            try {
                dVar2.a(null);
            } catch (IllegalStateException e3) {
                e = e3;
                dVar2.a(HummerConstants.HUMMER_ERROR, i.b(e), null);
            }
        }

        @Override // g.a.c.a.k.c
        public void onMethodCall(@NonNull g.a.c.a.j jVar, @NonNull k.d dVar) {
            if (i.this.f19162b == null) {
                return;
            }
            g.a.b.c("PlatformViewsChannel", "Received '" + jVar.f18223a + "' message.");
            String str = jVar.f18223a;
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1352294148:
                    if (str.equals("create")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -934437708:
                    if (str.equals("resize")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -756050293:
                    if (str.equals("clearFocus")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 110550847:
                    if (str.equals("touch")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 576796989:
                    if (str.equals("setDirection")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 1671767583:
                    if (str.equals("dispose")) {
                        c2 = 1;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                b(jVar, dVar);
                return;
            }
            if (c2 == 1) {
                c(jVar, dVar);
                return;
            }
            if (c2 == 2) {
                d(jVar, dVar);
                return;
            }
            if (c2 == 3) {
                f(jVar, dVar);
                return;
            }
            if (c2 == 4) {
                e(jVar, dVar);
            } else if (c2 != 5) {
                dVar.a();
            } else {
                a(jVar, dVar);
            }
        }
    }

    /* compiled from: PlatformViewsChannel.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f19166a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        public final String f19167b;

        /* renamed from: c, reason: collision with root package name */
        public final double f19168c;

        /* renamed from: d, reason: collision with root package name */
        public final double f19169d;

        /* renamed from: e, reason: collision with root package name */
        public final int f19170e;

        /* renamed from: f, reason: collision with root package name */
        @Nullable
        public final ByteBuffer f19171f;

        public b(int i2, @NonNull String str, double d2, double d3, int i3, @Nullable ByteBuffer byteBuffer) {
            this.f19166a = i2;
            this.f19167b = str;
            this.f19168c = d2;
            this.f19169d = d3;
            this.f19170e = i3;
            this.f19171f = byteBuffer;
        }
    }

    /* compiled from: PlatformViewsChannel.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final int f19172a;

        /* renamed from: b, reason: collision with root package name */
        public final double f19173b;

        /* renamed from: c, reason: collision with root package name */
        public final double f19174c;

        public c(int i2, double d2, double d3) {
            this.f19172a = i2;
            this.f19173b = d2;
            this.f19174c = d3;
        }
    }

    /* compiled from: PlatformViewsChannel.java */
    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public final int f19175a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        public final Number f19176b;

        /* renamed from: c, reason: collision with root package name */
        @NonNull
        public final Number f19177c;

        /* renamed from: d, reason: collision with root package name */
        public final int f19178d;

        /* renamed from: e, reason: collision with root package name */
        public final int f19179e;

        /* renamed from: f, reason: collision with root package name */
        @NonNull
        public final Object f19180f;

        /* renamed from: g, reason: collision with root package name */
        @NonNull
        public final Object f19181g;

        /* renamed from: h, reason: collision with root package name */
        public final int f19182h;

        /* renamed from: i, reason: collision with root package name */
        public final int f19183i;

        /* renamed from: j, reason: collision with root package name */
        public final float f19184j;

        /* renamed from: k, reason: collision with root package name */
        public final float f19185k;

        /* renamed from: l, reason: collision with root package name */
        public final int f19186l;
        public final int m;
        public final int n;
        public final int o;
        public final long p;

        public d(int i2, @NonNull Number number, @NonNull Number number2, int i3, int i4, @NonNull Object obj, @NonNull Object obj2, int i5, int i6, float f2, float f3, int i7, int i8, int i9, int i10, long j2) {
            this.f19175a = i2;
            this.f19176b = number;
            this.f19177c = number2;
            this.f19178d = i3;
            this.f19179e = i4;
            this.f19180f = obj;
            this.f19181g = obj2;
            this.f19182h = i5;
            this.f19183i = i6;
            this.f19184j = f2;
            this.f19185k = f3;
            this.f19186l = i7;
            this.m = i8;
            this.n = i9;
            this.o = i10;
            this.p = j2;
        }
    }

    /* compiled from: PlatformViewsChannel.java */
    /* loaded from: classes2.dex */
    public interface e {
        long a(@NonNull b bVar);

        void a(int i2);

        void a(int i2, int i3);

        void a(@NonNull c cVar, @NonNull Runnable runnable);

        void a(@NonNull d dVar);

        void b(int i2);

        void b(@NonNull b bVar);

        void c(int i2);
    }

    public i(@NonNull io.flutter.embedding.engine.e.a aVar) {
        this.f19161a = new g.a.c.a.k(aVar, "flutter/platform_views", o.f18237b);
        this.f19161a.a(this.f19163c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(Exception exc) {
        StringWriter stringWriter = new StringWriter();
        exc.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public void a(int i2) {
        g.a.c.a.k kVar = this.f19161a;
        if (kVar == null) {
            return;
        }
        kVar.a("viewFocused", Integer.valueOf(i2));
    }

    public void a(@Nullable e eVar) {
        this.f19162b = eVar;
    }
}
