package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
final class f implements DynamiteModule.b {
    @Override // com.google.android.gms.dynamite.DynamiteModule.b
    public final DynamiteModule.b.a a(Context context, String str, DynamiteModule.b.InterfaceC0091b interfaceC0091b) {
        DynamiteModule.b.a aVar = new DynamiteModule.b.a();
        aVar.f5465a = interfaceC0091b.a(context, str);
        if (aVar.f5465a != 0) {
            aVar.f5466b = interfaceC0091b.a(context, str, false);
        } else {
            aVar.f5466b = interfaceC0091b.a(context, str, true);
        }
        if (aVar.f5465a == 0 && aVar.f5466b == 0) {
            aVar.f5467c = 0;
        } else if (aVar.f5466b >= aVar.f5465a) {
            aVar.f5467c = 1;
        } else {
            aVar.f5467c = -1;
        }
        return aVar;
    }
}
