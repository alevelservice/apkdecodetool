package e.b.b.a.a.d.c$b;

import android.os.Process;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* compiled from: MasTraceLog.java */
/* loaded from: classes.dex */
public class i implements e<e.b.b.a.a.b.f> {

    /* renamed from: b, reason: collision with root package name */
    private static ThreadLocal<StringBuilder> f17002b = new ThreadLocal<>();

    /* renamed from: a, reason: collision with root package name */
    private SimpleDateFormat f17003a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS", Locale.getDefault());

    @Override // e.b.b.a.a.d.c$b.e
    public String a(e.b.b.a.a.b.f fVar) {
        StringBuilder sb = f17002b.get();
        if (sb == null) {
            sb = new StringBuilder();
            f17002b.set(sb);
        }
        String format = this.f17003a.format(new Date(System.currentTimeMillis()));
        int myTid = Process.myTid();
        String name = Thread.currentThread().getName();
        sb.append(format);
        sb.append(' ');
        sb.append(fVar.f());
        sb.append('/');
        sb.append(fVar.e());
        sb.append(':');
        sb.append('[');
        sb.append(myTid);
        sb.append(':');
        sb.append(name);
        sb.append("] ");
        sb.append(fVar.g());
        if (fVar.h() != null) {
            sb.append(HanziToPinyin.Token.SEPARATOR);
            sb.append(fVar.h());
        }
        String sb2 = sb.toString();
        sb.setLength(0);
        return sb2;
    }
}
