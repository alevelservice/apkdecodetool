package androidx.webkit.e;

import android.webkit.SafeBrowsingResponse;
import android.webkit.WebResourceError;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.WebkitToCompatConverterBoundaryInterface;

/* compiled from: WebkitToCompatConverter.java */
/* loaded from: classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    private final WebkitToCompatConverterBoundaryInterface f3094a;

    public l(WebkitToCompatConverterBoundaryInterface webkitToCompatConverterBoundaryInterface) {
        this.f3094a = webkitToCompatConverterBoundaryInterface;
    }

    @NonNull
    public InvocationHandler a(@NonNull WebResourceError webResourceError) {
        return this.f3094a.convertWebResourceError(webResourceError);
    }

    @NonNull
    @RequiresApi(23)
    public WebResourceError b(@NonNull InvocationHandler invocationHandler) {
        return (WebResourceError) this.f3094a.convertWebResourceError(invocationHandler);
    }

    @NonNull
    public InvocationHandler a(@NonNull SafeBrowsingResponse safeBrowsingResponse) {
        return this.f3094a.convertSafeBrowsingResponse(safeBrowsingResponse);
    }

    @NonNull
    @RequiresApi(27)
    public SafeBrowsingResponse a(@NonNull InvocationHandler invocationHandler) {
        return (SafeBrowsingResponse) this.f3094a.convertSafeBrowsingResponse(invocationHandler);
    }
}
