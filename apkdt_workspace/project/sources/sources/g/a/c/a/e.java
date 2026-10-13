package g.a.c.a;

/* compiled from: FlutterException.java */
/* loaded from: classes2.dex */
public class e extends RuntimeException {
    public final String code;
    public final Object details;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str, String str2, Object obj) {
        super(str2);
        this.code = str;
        this.details = obj;
    }
}
