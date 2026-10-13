package e.a.a.b.b.a;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

/* compiled from: StringUtil.java */
/* loaded from: classes.dex */
final class b extends ThreadLocal<DateFormat> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.lang.ThreadLocal
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public DateFormat initialValue() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    }
}
