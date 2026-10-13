package e.b.b.a.a.d.a;

import android.text.TextUtils;

/* compiled from: EncryptAppender.java */
/* loaded from: classes.dex */
public abstract class f extends b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e.b.b.a.a.a.d dVar, String str) {
        super(dVar, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(String str, boolean z) {
        if (z) {
            e.b.b.a.a.a.e i2 = e.b.b.a.a.d.i.a().i();
            if (i2 != null) {
                String[] split = str.split("\\$\\$");
                int length = split.length;
                StringBuffer stringBuffer = new StringBuffer();
                for (int i3 = 0; i3 < length; i3++) {
                    String a2 = i2.a(split[i3]);
                    if (!TextUtils.isEmpty(a2)) {
                        stringBuffer.append("1_");
                        stringBuffer.append(a2);
                        stringBuffer.append("$$");
                    } else {
                        stringBuffer.append(split[i3]);
                        stringBuffer.append("$$");
                    }
                }
                return a(stringBuffer.toString());
            }
            return a(str);
        }
        return a(str);
    }
}
