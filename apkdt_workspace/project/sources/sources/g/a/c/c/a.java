package g.a.c.c;

import android.annotation.TargetApi;
import android.view.PointerIcon;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.alipay.mobile.security.zim.api.ZIMResponseCode;
import io.flutter.embedding.engine.i.f;
import io.reactivex.rxjava3.annotations.SchedulerSupport;
import java.util.HashMap;

/* compiled from: MouseCursorPlugin.java */
@RequiresApi(24)
@TargetApi(24)
/* loaded from: classes2.dex */
public class a {

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    private static HashMap<String, Integer> f18243c;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final c f18244a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final f f18245b;

    /* compiled from: MouseCursorPlugin.java */
    /* renamed from: g.a.c.c.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0214a implements f.b {
        C0214a() {
        }

        @Override // io.flutter.embedding.engine.i.f.b
        public void a(@NonNull String str) {
            a.this.f18244a.setPointerIcon(a.this.a(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MouseCursorPlugin.java */
    /* loaded from: classes2.dex */
    public class b extends HashMap<String, Integer> {
        private static final long serialVersionUID = 1;

        b() {
            put("alias", 1010);
            put("allScroll", 1013);
            put("basic", 1000);
            put("cell", 1006);
            put("click", 1002);
            put("contextMenu", 1001);
            put("copy", 1011);
            put("forbidden", 1012);
            put("grab", 1020);
            put("grabbing", 1021);
            put("help", 1003);
            put("move", 1013);
            put(SchedulerSupport.NONE, 0);
            put("noDrop", 1012);
            put("precise", 1007);
            put("text", 1008);
            put("resizeColumn", 1014);
            put("resizeDown", 1015);
            put("resizeUpLeft", 1016);
            put("resizeDownRight", 1017);
            put("resizeLeft", 1014);
            put("resizeLeftRight", 1014);
            put("resizeRight", 1014);
            put("resizeRow", 1015);
            put("resizeUp", 1015);
            put("resizeUpDown", 1015);
            put("resizeUpLeft", 1017);
            put("resizeUpRight", 1016);
            put("resizeUpLeftDownRight", 1017);
            put("resizeUpRightDownLeft", 1016);
            put("verticalText", 1009);
            put("wait", Integer.valueOf(ZIMResponseCode.ZIM_RESPONSE_TIMEOUT_BY_USER));
            put("zoomIn", 1018);
            put("zoomOut", 1019);
        }
    }

    /* compiled from: MouseCursorPlugin.java */
    /* loaded from: classes2.dex */
    public interface c {
        PointerIcon getSystemPointerIcon(int i2);

        void setPointerIcon(@NonNull PointerIcon pointerIcon);
    }

    public a(@NonNull c cVar, @NonNull f fVar) {
        this.f18244a = cVar;
        this.f18245b = fVar;
        fVar.a(new C0214a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PointerIcon a(@NonNull String str) {
        if (f18243c == null) {
            f18243c = new b();
        }
        return this.f18244a.getSystemPointerIcon(f18243c.getOrDefault(str, 1000).intValue());
    }

    public void a() {
        this.f18245b.a((f.b) null);
    }
}
