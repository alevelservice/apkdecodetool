package com.google.android.gms.internal.ads;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class pa1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(oa1 oa1Var, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        a(oa1Var, sb, 0);
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0227, code lost:
    
        if (((java.lang.Double) r11).doubleValue() == 0.0d) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01f2, code lost:
    
        if (((java.lang.Boolean) r11).booleanValue() == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01f4, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0204, code lost:
    
        if (((java.lang.Integer) r11).intValue() == 0) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0215, code lost:
    
        if (((java.lang.Float) r11).floatValue() == 0.0f) goto L80;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(com.google.android.gms.internal.ads.oa1 r18, java.lang.StringBuilder r19, int r20) {
        /*
            Method dump skipped, instructions count: 676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.pa1.a(com.google.android.gms.internal.ads.oa1, java.lang.StringBuilder, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void a(StringBuilder sb, int i2, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                a(sb, i2, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                a(sb, i2, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(rb1.a(t71.zzhh((String) obj)));
            sb.append('\"');
            return;
        }
        if (obj instanceof t71) {
            sb.append(": \"");
            sb.append(rb1.a((t71) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof e91) {
            sb.append(" {");
            a((e91) obj, sb, i2 + 2);
            sb.append("\n");
            while (i3 < i2) {
                sb.append(' ');
                i3++;
            }
            sb.append("}");
            return;
        }
        if (obj instanceof Map.Entry) {
            sb.append(" {");
            Map.Entry entry = (Map.Entry) obj;
            int i5 = i2 + 2;
            a(sb, i5, "key", entry.getKey());
            a(sb, i5, HummerConstants.VALUE, entry.getValue());
            sb.append("\n");
            while (i3 < i2) {
                sb.append(' ');
                i3++;
            }
            sb.append("}");
            return;
        }
        sb.append(": ");
        sb.append(obj.toString());
    }

    private static final String a(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }
}
