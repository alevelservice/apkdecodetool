package kotlin.text;

import kotlin.jvm.c.b;
import kotlin.jvm.d.h;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StringBuilder.kt */
/* loaded from: classes2.dex */
public class i extends h {
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void a(@NotNull Appendable appendable, T t, @Nullable b<? super T, ? extends CharSequence> bVar) {
        h.b(appendable, "$this$appendElement");
        if (bVar != null) {
            appendable.append(bVar.invoke(t));
            return;
        }
        if (t != 0 ? t instanceof CharSequence : true) {
            appendable.append((CharSequence) t);
        } else if (t instanceof Character) {
            appendable.append(((Character) t).charValue());
        } else {
            appendable.append(String.valueOf(t));
        }
    }
}
