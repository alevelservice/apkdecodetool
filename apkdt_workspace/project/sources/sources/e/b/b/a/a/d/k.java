package e.b.b.a.a.d;

import android.content.Context;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.lang.reflect.Method;

/* compiled from: UtdidDeviceIdProvider.java */
/* loaded from: classes.dex */
public class k implements e.b.b.a.a.a.b {
    @Override // e.b.b.a.a.a.b
    public String getDeviceId() {
        Method declaredMethod;
        try {
            Class<?> cls = Class.forName("com.ut.device.UTDevice");
            return (cls == null || (declaredMethod = cls.getDeclaredMethod("getUtdid", Context.class)) == null) ? HanziToPinyin.Token.SEPARATOR : (String) declaredMethod.invoke(null, i.a().a());
        } catch (Exception e2) {
            i.c().a("UtdidDeviceIdProvider", e2);
            return HanziToPinyin.Token.SEPARATOR;
        }
    }
}
