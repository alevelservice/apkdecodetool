package androidx.webkit.e;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* compiled from: WebViewProviderAdapter.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    WebViewProviderBoundaryInterface f3078a;

    public f(@NonNull WebViewProviderBoundaryInterface webViewProviderBoundaryInterface) {
        this.f3078a = webViewProviderBoundaryInterface;
    }

    @SuppressLint({"LambdaLast"})
    public void a(@Nullable Executor executor, @Nullable androidx.webkit.d dVar) {
        this.f3078a.setWebViewRendererClient(dVar != null ? BoundaryInterfaceReflectionUtil.a(new i(executor, dVar)) : null);
    }
}
