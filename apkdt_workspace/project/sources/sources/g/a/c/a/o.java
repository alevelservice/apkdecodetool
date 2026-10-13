package g.a.c.a;

import g.a.c.a.n;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: StandardMethodCodec.java */
/* loaded from: classes2.dex */
public final class o implements l {

    /* renamed from: b, reason: collision with root package name */
    public static final o f18237b = new o(n.f18234a);

    /* renamed from: a, reason: collision with root package name */
    private final n f18238a;

    public o(n nVar) {
        this.f18238a = nVar;
    }

    @Override // g.a.c.a.l
    public ByteBuffer a(j jVar) {
        n.a aVar = new n.a();
        this.f18238a.a(aVar, jVar.f18223a);
        this.f18238a.a(aVar, jVar.f18224b);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(aVar.size());
        allocateDirect.put(aVar.a(), 0, aVar.size());
        return allocateDirect;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (r0 == 1) goto L10;
     */
    @Override // g.a.c.a.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(java.nio.ByteBuffer r5) {
        /*
            r4 = this;
            java.nio.ByteOrder r0 = java.nio.ByteOrder.nativeOrder()
            r5.order(r0)
            byte r0 = r5.get()
            if (r0 == 0) goto L11
            r1 = 1
            if (r0 != r1) goto L4a
            goto L1e
        L11:
            g.a.c.a.n r0 = r4.f18238a
            java.lang.Object r0 = r0.b(r5)
            boolean r1 = r5.hasRemaining()
            if (r1 != 0) goto L1e
            return r0
        L1e:
            g.a.c.a.n r0 = r4.f18238a
            java.lang.Object r0 = r0.b(r5)
            g.a.c.a.n r1 = r4.f18238a
            java.lang.Object r1 = r1.b(r5)
            g.a.c.a.n r2 = r4.f18238a
            java.lang.Object r2 = r2.b(r5)
            boolean r3 = r0 instanceof java.lang.String
            if (r3 == 0) goto L4a
            if (r1 == 0) goto L3a
            boolean r3 = r1 instanceof java.lang.String
            if (r3 == 0) goto L4a
        L3a:
            boolean r5 = r5.hasRemaining()
            if (r5 != 0) goto L4a
            g.a.c.a.e r5 = new g.a.c.a.e
            java.lang.String r0 = (java.lang.String) r0
            java.lang.String r1 = (java.lang.String) r1
            r5.<init>(r0, r1, r2)
            throw r5
        L4a:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Envelope corrupted"
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: g.a.c.a.o.b(java.nio.ByteBuffer):java.lang.Object");
    }

    @Override // g.a.c.a.l
    public j a(ByteBuffer byteBuffer) {
        byteBuffer.order(ByteOrder.nativeOrder());
        Object b2 = this.f18238a.b(byteBuffer);
        Object b3 = this.f18238a.b(byteBuffer);
        if ((b2 instanceof String) && !byteBuffer.hasRemaining()) {
            return new j((String) b2, b3);
        }
        throw new IllegalArgumentException("Method call corrupted");
    }

    @Override // g.a.c.a.l
    public ByteBuffer a(Object obj) {
        n.a aVar = new n.a();
        aVar.write(0);
        this.f18238a.a(aVar, obj);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(aVar.size());
        allocateDirect.put(aVar.a(), 0, aVar.size());
        return allocateDirect;
    }

    @Override // g.a.c.a.l
    public ByteBuffer a(String str, String str2, Object obj) {
        n.a aVar = new n.a();
        aVar.write(1);
        this.f18238a.a(aVar, str);
        this.f18238a.a(aVar, str2);
        if (obj instanceof Throwable) {
            this.f18238a.a(aVar, a((Throwable) obj));
        } else {
            this.f18238a.a(aVar, obj);
        }
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(aVar.size());
        allocateDirect.put(aVar.a(), 0, aVar.size());
        return allocateDirect;
    }

    @Override // g.a.c.a.l
    public ByteBuffer a(String str, String str2, Object obj, String str3) {
        n.a aVar = new n.a();
        aVar.write(1);
        this.f18238a.a(aVar, str);
        this.f18238a.a(aVar, str2);
        if (obj instanceof Throwable) {
            this.f18238a.a(aVar, a((Throwable) obj));
        } else {
            this.f18238a.a(aVar, obj);
        }
        this.f18238a.a(aVar, str3);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(aVar.size());
        allocateDirect.put(aVar.a(), 0, aVar.size());
        return allocateDirect;
    }

    private static String a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
