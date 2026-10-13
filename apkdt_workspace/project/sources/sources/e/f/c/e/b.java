package e.f.c.e;

import android.webkit.MimeTypeMap;
import com.facebook.common.internal.e;
import java.util.Map;

/* compiled from: MimeTypeMapWrapper.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static final MimeTypeMap f17151a = MimeTypeMap.getSingleton();

    /* renamed from: b, reason: collision with root package name */
    private static final Map<String, String> f17152b;

    static {
        e.of("image/heif", "heif", "image/heic", "heic");
        f17152b = e.of("heif", "image/heif", "heic", "image/heic");
    }

    public static String a(String str) {
        String str2 = f17152b.get(str);
        return str2 != null ? str2 : f17151a.getMimeTypeFromExtension(str);
    }
}
