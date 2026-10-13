package kotlin.sequences;

import kotlin.jvm.c.b;
import kotlin.jvm.d.h;
import kotlin.text.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Sequences.kt */
/* loaded from: classes2.dex */
public class g extends f {
    @NotNull
    public static <T, R> a<R> a(@NotNull a<? extends T> aVar, @NotNull b<? super T, ? extends R> bVar) {
        h.b(aVar, "$this$map");
        h.b(bVar, "transform");
        return new TransformingSequence(aVar, bVar);
    }

    @NotNull
    public static final <T, A extends Appendable> A a(@NotNull a<? extends T> aVar, @NotNull A a2, @NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3, int i2, @NotNull CharSequence charSequence4, @Nullable b<? super T, ? extends CharSequence> bVar) {
        h.b(aVar, "$this$joinTo");
        h.b(a2, "buffer");
        h.b(charSequence, "separator");
        h.b(charSequence2, "prefix");
        h.b(charSequence3, "postfix");
        h.b(charSequence4, "truncated");
        a2.append(charSequence2);
        int i3 = 0;
        for (T t : aVar) {
            i3++;
            if (i3 > 1) {
                a2.append(charSequence);
            }
            if (i2 >= 0 && i3 > i2) {
                break;
            }
            i.a(a2, t, bVar);
        }
        if (i2 >= 0 && i3 > i2) {
            a2.append(charSequence4);
        }
        a2.append(charSequence3);
        return a2;
    }

    public static /* synthetic */ String a(a aVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, b bVar, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i3 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i3 & 4) == 0 ? charSequence3 : "";
        int i4 = (i3 & 8) != 0 ? -1 : i2;
        if ((i3 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i3 & 32) != 0) {
            bVar = null;
        }
        return a(aVar, charSequence, charSequence5, charSequence6, i4, charSequence7, bVar);
    }

    @NotNull
    public static final <T> String a(@NotNull a<? extends T> aVar, @NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3, int i2, @NotNull CharSequence charSequence4, @Nullable b<? super T, ? extends CharSequence> bVar) {
        h.b(aVar, "$this$joinToString");
        h.b(charSequence, "separator");
        h.b(charSequence2, "prefix");
        h.b(charSequence3, "postfix");
        h.b(charSequence4, "truncated");
        StringBuilder sb = new StringBuilder();
        a(aVar, sb, charSequence, charSequence2, charSequence3, i2, charSequence4, bVar);
        String sb2 = sb.toString();
        h.a((Object) sb2, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb2;
    }
}
