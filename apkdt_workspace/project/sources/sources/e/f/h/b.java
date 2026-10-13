package e.f.h;

/* compiled from: DefaultImageFormats.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final c f17450a = new c("JPEG", "jpeg");

    /* renamed from: b, reason: collision with root package name */
    public static final c f17451b = new c("PNG", "png");

    /* renamed from: c, reason: collision with root package name */
    public static final c f17452c = new c("GIF", "gif");

    /* renamed from: d, reason: collision with root package name */
    public static final c f17453d = new c("BMP", "bmp");

    /* renamed from: e, reason: collision with root package name */
    public static final c f17454e = new c("ICO", "ico");

    /* renamed from: f, reason: collision with root package name */
    public static final c f17455f = new c("WEBP_SIMPLE", "webp");

    /* renamed from: g, reason: collision with root package name */
    public static final c f17456g = new c("WEBP_LOSSLESS", "webp");

    /* renamed from: h, reason: collision with root package name */
    public static final c f17457h = new c("WEBP_EXTENDED", "webp");

    /* renamed from: i, reason: collision with root package name */
    public static final c f17458i = new c("WEBP_EXTENDED_WITH_ALPHA", "webp");

    /* renamed from: j, reason: collision with root package name */
    public static final c f17459j = new c("WEBP_ANIMATED", "webp");

    /* renamed from: k, reason: collision with root package name */
    public static final c f17460k = new c("HEIF", "heif");

    public static boolean a(c cVar) {
        return cVar == f17455f || cVar == f17456g || cVar == f17457h || cVar == f17458i;
    }

    public static boolean b(c cVar) {
        return a(cVar) || cVar == f17459j;
    }
}
