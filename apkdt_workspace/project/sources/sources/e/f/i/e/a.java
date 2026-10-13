package e.f.i.e;

/* compiled from: DecodeException.java */
/* loaded from: classes.dex */
public class a extends RuntimeException {
    private final e.f.i.g.e mEncodedImage;

    public a(String str, e.f.i.g.e eVar) {
        super(str);
        this.mEncodedImage = eVar;
    }

    public e.f.i.g.e getEncodedImage() {
        return this.mEncodedImage;
    }

    public a(String str, Throwable th, e.f.i.g.e eVar) {
        super(str, th);
        this.mEncodedImage = eVar;
    }
}
