package g.a.c.a;

import androidx.annotation.UiThread;
import com.ap.zoloz.hummer.biz.HummerConstants;
import g.a.c.a.c;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: EventChannel.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private final g.a.c.a.c f18213a;

    /* renamed from: b, reason: collision with root package name */
    private final String f18214b;

    /* renamed from: c, reason: collision with root package name */
    private final l f18215c;

    /* compiled from: EventChannel.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(Object obj);

        void a(String str, String str2, Object obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EventChannel.java */
    /* loaded from: classes2.dex */
    public final class c implements c.a {

        /* renamed from: a, reason: collision with root package name */
        private final InterfaceC0212d f18216a;

        /* renamed from: b, reason: collision with root package name */
        private final AtomicReference<b> f18217b = new AtomicReference<>(null);

        c(InterfaceC0212d interfaceC0212d) {
            this.f18216a = interfaceC0212d;
        }

        private void b(Object obj, c.b bVar) {
            a aVar = new a();
            if (this.f18217b.getAndSet(aVar) != null) {
                try {
                    this.f18216a.a(null);
                } catch (RuntimeException unused) {
                    String str = "EventChannel#" + d.this.f18214b;
                }
            }
            try {
                this.f18216a.a(obj, aVar);
                bVar.a(d.this.f18215c.a((Object) null));
            } catch (RuntimeException e2) {
                this.f18217b.set(null);
                String str2 = "EventChannel#" + d.this.f18214b;
                bVar.a(d.this.f18215c.a(HummerConstants.HUMMER_ERROR, e2.getMessage(), null));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: EventChannel.java */
        /* loaded from: classes2.dex */
        public final class a implements b {

            /* renamed from: a, reason: collision with root package name */
            final AtomicBoolean f18219a;

            private a() {
                this.f18219a = new AtomicBoolean(false);
            }

            @Override // g.a.c.a.d.b
            @UiThread
            public void a(Object obj) {
                if (this.f18219a.get() || c.this.f18217b.get() != this) {
                    return;
                }
                d.this.f18213a.send(d.this.f18214b, d.this.f18215c.a(obj));
            }

            @Override // g.a.c.a.d.b
            @UiThread
            public void a(String str, String str2, Object obj) {
                if (this.f18219a.get() || c.this.f18217b.get() != this) {
                    return;
                }
                d.this.f18213a.send(d.this.f18214b, d.this.f18215c.a(str, str2, obj));
            }
        }

        @Override // g.a.c.a.c.a
        public void a(ByteBuffer byteBuffer, c.b bVar) {
            j a2 = d.this.f18215c.a(byteBuffer);
            if (a2.f18223a.equals("listen")) {
                b(a2.f18224b, bVar);
            } else if (a2.f18223a.equals(HummerConstants.TASK_CANCEL)) {
                a(a2.f18224b, bVar);
            } else {
                bVar.a(null);
            }
        }

        private void a(Object obj, c.b bVar) {
            if (this.f18217b.getAndSet(null) == null) {
                bVar.a(d.this.f18215c.a(HummerConstants.HUMMER_ERROR, "No active stream to cancel", null));
                return;
            }
            try {
                this.f18216a.a(obj);
                bVar.a(d.this.f18215c.a((Object) null));
            } catch (RuntimeException e2) {
                String str = "EventChannel#" + d.this.f18214b;
                bVar.a(d.this.f18215c.a(HummerConstants.HUMMER_ERROR, e2.getMessage(), null));
            }
        }
    }

    /* compiled from: EventChannel.java */
    /* renamed from: g.a.c.a.d$d, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0212d {
        void a(Object obj);

        void a(Object obj, b bVar);
    }

    public d(g.a.c.a.c cVar, String str) {
        this(cVar, str, o.f18237b);
    }

    public d(g.a.c.a.c cVar, String str, l lVar) {
        this.f18213a = cVar;
        this.f18214b = str;
        this.f18215c = lVar;
    }

    @UiThread
    public void a(InterfaceC0212d interfaceC0212d) {
        this.f18213a.setMessageHandler(this.f18214b, interfaceC0212d == null ? null : new c(interfaceC0212d));
    }
}
