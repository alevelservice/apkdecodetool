package com.alipay.iap.android.common.rpcintegration;

import com.alipay.mobile.framework.service.annotation.OperationType;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes.dex */
public class RpcInvocationHandlerHost implements InvocationHandler {

    /* renamed from: f, reason: collision with root package name */
    private static final String f3343f = RpcInvocationHandlerHost.class.getSimpleName();

    /* renamed from: e, reason: collision with root package name */
    private Map<String, String> f3344e;

    private String a(Method method) {
        OperationType operationType = (OperationType) method.getAnnotation(OperationType.class);
        if (operationType != null) {
            return operationType.value();
        }
        throw new IllegalStateException("OperationType must be set.");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00b7 A[Catch: all -> 0x016c, TryCatch #3 {, blocks: (B:3:0x0001, B:5:0x000e, B:7:0x0011, B:8:0x0017, B:10:0x0020, B:12:0x0028, B:15:0x0032, B:17:0x0042, B:18:0x00b0, B:20:0x00b7, B:22:0x00bd, B:24:0x00e3, B:30:0x00f9, B:31:0x0100, B:32:0x0159, B:36:0x0108, B:38:0x010e, B:40:0x0134, B:42:0x013c, B:44:0x0146, B:45:0x0152, B:46:0x0164, B:47:0x016b, B:50:0x004b, B:52:0x0050, B:55:0x0084, B:58:0x008a, B:59:0x0098, B:61:0x009e, B:66:0x00a6, B:70:0x0090, B:74:0x006b, B:78:0x00a9, B:27:0x00eb), top: B:2:0x0001, inners: #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x010e A[Catch: all -> 0x016c, TryCatch #3 {, blocks: (B:3:0x0001, B:5:0x000e, B:7:0x0011, B:8:0x0017, B:10:0x0020, B:12:0x0028, B:15:0x0032, B:17:0x0042, B:18:0x00b0, B:20:0x00b7, B:22:0x00bd, B:24:0x00e3, B:30:0x00f9, B:31:0x0100, B:32:0x0159, B:36:0x0108, B:38:0x010e, B:40:0x0134, B:42:0x013c, B:44:0x0146, B:45:0x0152, B:46:0x0164, B:47:0x016b, B:50:0x004b, B:52:0x0050, B:55:0x0084, B:58:0x008a, B:59:0x0098, B:61:0x009e, B:66:0x00a6, B:70:0x0090, B:74:0x006b, B:78:0x00a9, B:27:0x00eb), top: B:2:0x0001, inners: #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0164 A[Catch: all -> 0x016c, TRY_ENTER, TryCatch #3 {, blocks: (B:3:0x0001, B:5:0x000e, B:7:0x0011, B:8:0x0017, B:10:0x0020, B:12:0x0028, B:15:0x0032, B:17:0x0042, B:18:0x00b0, B:20:0x00b7, B:22:0x00bd, B:24:0x00e3, B:30:0x00f9, B:31:0x0100, B:32:0x0159, B:36:0x0108, B:38:0x010e, B:40:0x0134, B:42:0x013c, B:44:0x0146, B:45:0x0152, B:46:0x0164, B:47:0x016b, B:50:0x004b, B:52:0x0050, B:55:0x0084, B:58:0x008a, B:59:0x0098, B:61:0x009e, B:66:0x00a6, B:70:0x0090, B:74:0x006b, B:78:0x00a9, B:27:0x00eb), top: B:2:0x0001, inners: #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0083  */
    @Override // java.lang.reflect.InvocationHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.lang.Object invoke(java.lang.Object r10, java.lang.reflect.Method r11, java.lang.Object[] r12) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.iap.android.common.rpcintegration.RpcInvocationHandlerHost.invoke(java.lang.Object, java.lang.reflect.Method, java.lang.Object[]):java.lang.Object");
    }
}
