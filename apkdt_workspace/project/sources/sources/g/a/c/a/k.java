package g.a.c.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.ap.zoloz.hummer.biz.HummerConstants;
import g.a.c.a.c;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;

/* compiled from: MethodChannel.java */
/* loaded from: classes2.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private final g.a.c.a.c f18225a;

    /* renamed from: b, reason: collision with root package name */
    private final String f18226b;

    /* renamed from: c, reason: collision with root package name */
    private final l f18227c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MethodChannel.java */
    /* loaded from: classes2.dex */
    public final class b implements c.b {

        /* renamed from: a, reason: collision with root package name */
        private final d f18232a;

        b(d dVar) {
            this.f18232a = dVar;
        }

        @Override // g.a.c.a.c.b
        @UiThread
        public void a(ByteBuffer byteBuffer) {
            try {
                if (byteBuffer == null) {
                    this.f18232a.a();
                } else {
                    try {
                        this.f18232a.a(k.this.f18227c.b(byteBuffer));
                    } catch (e e2) {
                        this.f18232a.a(e2.code, e2.getMessage(), e2.details);
                    }
                }
            } catch (RuntimeException unused) {
                String str = "MethodChannel#" + k.this.f18226b;
            }
        }
    }

    /* compiled from: MethodChannel.java */
    /* loaded from: classes2.dex */
    public interface c {
        @UiThread
        void onMethodCall(@NonNull j jVar, @NonNull d dVar);
    }

    /* compiled from: MethodChannel.java */
    /* loaded from: classes2.dex */
    public interface d {
        @UiThread
        void a();

        @UiThread
        void a(@Nullable Object obj);

        @UiThread
        void a(String str, @Nullable String str2, @Nullable Object obj);
    }

    public k(g.a.c.a.c cVar, String str) {
        this(cVar, str, o.f18237b);
    }

    public k(g.a.c.a.c cVar, String str, l lVar) {
        this.f18225a = cVar;
        this.f18226b = str;
        this.f18227c = lVar;
    }

    @UiThread
    public void a(@NonNull String str, @Nullable Object obj) {
        a(str, obj, null);
    }

    @UiThread
    public void a(String str, @Nullable Object obj, @Nullable d dVar) {
        this.f18225a.send(this.f18226b, this.f18227c.a(new j(str, obj)), dVar == null ? null : new b(dVar));
    }

    @UiThread
    public void a(@Nullable c cVar) {
        this.f18225a.setMessageHandler(this.f18226b, cVar == null ? null : new a(cVar));
    }

    /* compiled from: MethodChannel.java */
    /* loaded from: classes2.dex */
    private final class a implements c.a {

        /* renamed from: a, reason: collision with root package name */
        private final c f18228a;

        /* compiled from: MethodChannel.java */
        /* renamed from: g.a.c.a.k$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0213a implements d {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ c.b f18230a;

            C0213a(c.b bVar) {
                this.f18230a = bVar;
            }

            @Override // g.a.c.a.k.d
            public void a(Object obj) {
                this.f18230a.a(k.this.f18227c.a(obj));
            }

            @Override // g.a.c.a.k.d
            public void a(String str, String str2, Object obj) {
                this.f18230a.a(k.this.f18227c.a(str, str2, obj));
            }

            @Override // g.a.c.a.k.d
            public void a() {
                this.f18230a.a(null);
            }
        }

        a(c cVar) {
            this.f18228a = cVar;
        }

        @Override // g.a.c.a.c.a
        @UiThread
        public void a(ByteBuffer byteBuffer, c.b bVar) {
            try {
                this.f18228a.onMethodCall(k.this.f18227c.a(byteBuffer), new C0213a(bVar));
            } catch (RuntimeException e2) {
                String str = "MethodChannel#" + k.this.f18226b;
                bVar.a(k.this.f18227c.a(HummerConstants.HUMMER_ERROR, e2.getMessage(), null, a(e2)));
            }
        }

        private String a(Exception exc) {
            StringWriter stringWriter = new StringWriter();
            exc.printStackTrace(new PrintWriter(stringWriter));
            return stringWriter.toString();
        }
    }
}
