package e.d.c.a;

import android.app.Activity;
import android.content.Context;
import android.provider.Settings;
import com.ap.zoloz.hummer.api.BaseFacade;
import com.ap.zoloz.hummer.api.EkycFacade;
import com.ap.zoloz.hummer.api.EkycRequest;
import com.ap.zoloz.hummer.api.EkycResponse;
import com.ap.zoloz.hummer.api.IEkycCallback;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.zoloz.builder.buildconfig.ZolozBuildConfig;
import com.zoloz.builder.buildconfig.ZolozConfig;
import g.a.c.a.c;
import g.a.c.a.j;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;
import java.util.HashMap;

/* compiled from: ZolozPlugin.java */
/* loaded from: classes.dex */
public class b implements k.c, io.flutter.embedding.engine.g.a, io.flutter.embedding.engine.g.c.a {

    /* renamed from: f, reason: collision with root package name */
    private static k f17089f;

    /* renamed from: e, reason: collision with root package name */
    private Activity f17090e;

    private void a(Context context, c cVar) {
        f17089f = new k(cVar, "zoloz_plugin");
        f17089f.a(this);
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(io.flutter.embedding.engine.g.c.c cVar) {
        this.f17090e = cVar.getActivity();
        this.f17090e.getApplicationContext();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.a(), bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        this.f17090e = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        k kVar = f17089f;
        if (kVar != null) {
            kVar.a((k.c) null);
            f17089f = null;
        }
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, final k.d dVar) {
        char c2;
        String str;
        String str2 = jVar.f18223a;
        int hashCode = str2.hashCode();
        if (hashCode == -2129739342) {
            if (str2.equals("startEkyc")) {
                c2 = 2;
            }
            c2 = 65535;
        } else if (hashCode != -1226762744) {
            if (hashCode == 1627103689 && str2.equals("getMetaInfo")) {
                c2 = 1;
            }
            c2 = 65535;
        } else {
            if (str2.equals("initZolozSDK")) {
                c2 = 0;
            }
            c2 = 65535;
        }
        if (c2 == 0) {
            ZolozConfig.init(this.f17090e.getApplication(), new ZolozBuildConfig().setDeviceId(Settings.Secure.getString(this.f17090e.getApplicationContext().getContentResolver(), "android_id")).setGWUrl((String) jVar.a("gwUrl")).build());
            dVar.a(true);
            return;
        }
        if (c2 == 1) {
            EkycFacade.getInstance();
            dVar.a(BaseFacade.getMetaInfo(this.f17090e.getApplicationContext()));
            return;
        }
        if (c2 != 2) {
            dVar.a();
            return;
        }
        String str3 = jVar.b(HummerConstants.HUMMER_LOCALE) ? (String) jVar.a(HummerConstants.HUMMER_LOCALE) : "en-EN";
        EkycRequest ekycRequest = new EkycRequest();
        ekycRequest.eKYCId = (String) jVar.a("eKYCId");
        ekycRequest.bizConfig = new HashMap();
        ekycRequest.bizConfig.put(HummerConstants.HUMMER_CONTEXT, this.f17090e);
        ekycRequest.bizConfig.put(HummerConstants.HUMMER_LOCALE, str3);
        if (jVar.b("rsaPublicKey") && (str = (String) jVar.a("rsaPublicKey")) != null && !str.isEmpty()) {
            ekycRequest.bizConfig.put(HummerConstants.PUBLIC_KEY, str);
        }
        ekycRequest.clientCfg = (String) jVar.a("clientCfg");
        EkycFacade.getInstance().startEkyc(ekycRequest, new IEkycCallback() { // from class: e.d.c.a.a
            @Override // com.ap.zoloz.hummer.api.IEkycCallback
            public final void onCompletion(EkycResponse ekycResponse) {
                k.d.this.a(Integer.valueOf(r1 != null ? ekycResponse.code : 2006));
            }
        });
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(io.flutter.embedding.engine.g.c.c cVar) {
        onAttachedToActivity(cVar);
    }
}
