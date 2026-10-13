package e.b.b.a.a.d.h;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import e.b.b.a.a.d.i;
import e.b.b.a.a.e.j;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: BaseUploader.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: c, reason: collision with root package name */
    public static String f17021c = "BaseUploader";

    /* renamed from: a, reason: collision with root package name */
    protected File f17022a;

    /* renamed from: b, reason: collision with root package name */
    protected Context f17023b;

    public a(File file, Context context) {
        this.f17022a = file;
        this.f17023b = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        if (e.b.b.a.a.e.g.c(this.f17022a) < f.f17029e) {
            return;
        }
        File[] fileArr = null;
        try {
            fileArr = this.f17022a.listFiles();
        } catch (Throwable unused) {
        }
        if (fileArr == null || fileArr.length < 4) {
            return;
        }
        Arrays.sort(fileArr, f.f17028d);
        int length = fileArr.length / 4;
        for (int i2 = 0; i2 < length; i2++) {
            File file = fileArr[i2];
            if (file != null && file.exists() && file.isFile()) {
                try {
                    file.delete();
                    i.c().a(f17021c, "cleanExpiresFile: " + file.getName() + " is too large or too old, total: " + fileArr.length);
                } catch (Throwable th) {
                    i.c().a(f17021c, file.getName() + " cleanExpiresFile", th);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(File file, String str, String str2, String str3) {
        if (file != null) {
            try {
                String a2 = e.b.b.a.a.e.g.a(file);
                if (!TextUtils.isEmpty(a2)) {
                    String a3 = a(a2);
                    if (!TextUtils.isEmpty(a3)) {
                        String j2 = i.a().j();
                        if (!TextUtils.isEmpty(j2)) {
                            if (j.b()) {
                                a(this.f17023b, "com.alipay.mobile.logmonitor.ClientMonitorExtReceiver");
                                Intent intent = new Intent(this.f17023b.getPackageName() + ".monitor.action.UPLOAD_MDAP_LOG");
                                intent.setPackage(this.f17023b.getPackageName());
                                intent.putExtra("file", file.getName());
                                try {
                                    this.f17023b.sendBroadcast(intent);
                                } catch (Throwable unused) {
                                }
                            }
                            byte[] b2 = j.b(a3);
                            HashMap hashMap = new HashMap();
                            hashMap.put("Content-type", "text/xml");
                            hashMap.put("ProcessName", i.b().d());
                            hashMap.put("bizCode", str);
                            hashMap.put(HummerConstants.UID, i.a().e());
                            hashMap.put(ZdocRecordService.PRODUCT_ID, i.a().d());
                            hashMap.put("event", str3);
                            hashMap.put("productVersion", i.a().g());
                            hashMap.put("utdId", i.a().f());
                            if (TextUtils.isEmpty(str2)) {
                                str2 = j2 + "/loggw/logUpload.do";
                            } else {
                                i.c().e(f17021c, "uploadUrl = " + str2 + " logCategory = " + str);
                            }
                            i.c().c(f17021c, "uploadLogUrl: " + str2);
                            try {
                                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
                                httpURLConnection.setDoOutput(true);
                                httpURLConnection.setDoOutput(true);
                                httpURLConnection.setUseCaches(false);
                                httpURLConnection.setRequestMethod("POST");
                                httpURLConnection.setRequestProperty("Content-Length", String.valueOf(b2.length));
                                for (String str4 : hashMap.keySet()) {
                                    httpURLConnection.setRequestProperty(str4, (String) hashMap.get(str4));
                                }
                                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                                bufferedOutputStream.write(b2);
                                bufferedOutputStream.flush();
                                bufferedOutputStream.close();
                                int responseCode = httpURLConnection.getResponseCode();
                                if (200 == responseCode) {
                                    StringBuffer stringBuffer = new StringBuffer();
                                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"));
                                    while (true) {
                                        String readLine = bufferedReader.readLine();
                                        if (readLine == null) {
                                            break;
                                        }
                                        stringBuffer.append(readLine);
                                        stringBuffer.append("\n");
                                    }
                                    bufferedReader.close();
                                    String stringBuffer2 = stringBuffer.toString();
                                    try {
                                        int i2 = new JSONObject(stringBuffer2).getInt(HummerConstants.CODE);
                                        if (i2 == 200) {
                                            try {
                                                file.delete();
                                                if (!j.b() || TextUtils.isEmpty(stringBuffer2)) {
                                                    return;
                                                }
                                                String str5 = null;
                                                try {
                                                    int indexOf = stringBuffer2.indexOf("logSwitch=");
                                                    if (indexOf > 0) {
                                                        str5 = stringBuffer2.substring(indexOf + 10);
                                                    }
                                                } catch (Throwable th) {
                                                    i.c().b(f17021c, th);
                                                }
                                                String str6 = "logswitch: " + str5;
                                                return;
                                            } catch (Throwable th2) {
                                                throw new IllegalStateException("delete file error: " + th2, th2);
                                            }
                                        }
                                        throw new IllegalStateException("responseContent code is " + i2);
                                    } catch (JSONException unused2) {
                                        throw new IllegalStateException("get responseContent code error,JSONException");
                                    }
                                }
                                throw new IllegalStateException("response code is " + responseCode);
                            } catch (Throwable th3) {
                                throw new IllegalStateException("POST request error: " + th3, th3);
                            }
                        }
                        throw new IllegalStateException("log host is empty");
                    }
                    throw new IllegalStateException("decode file content is empty");
                }
                file.delete();
                throw new IllegalStateException("file content is empty");
            } catch (Throwable th4) {
                throw new IllegalStateException("read file error: " + th4, th4);
            }
        }
        throw new IllegalStateException("file object is NULL");
    }

    protected void a(Context context, String str) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, str), 1, 1);
        } catch (Throwable th) {
            i.c().a(f17021c, "setComponentEnabled: " + th);
        }
    }

    protected String a(String str) {
        e.b.b.a.a.a.e i2 = i.a().i();
        if (i2 == null) {
            return str;
        }
        String[] split = str.split("\\$\\$");
        StringBuffer stringBuffer = new StringBuffer();
        for (String str2 : split) {
            if (!TextUtils.isEmpty(str2)) {
                if (str2.startsWith("1_")) {
                    try {
                        String b2 = i2.b(str2.substring(2));
                        if (!TextUtils.isEmpty(b2)) {
                            stringBuffer.append(b2);
                            stringBuffer.append("$$");
                        }
                    } catch (Throwable unused) {
                    }
                } else {
                    stringBuffer.append(str2);
                    stringBuffer.append("$$");
                }
            }
        }
        return stringBuffer.toString();
    }
}
