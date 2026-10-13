package top.xy12.codetransporter.util;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes.dex */
public class PhoneNumberInfoUtil {

    /* loaded from: classes.dex */
    public interface CarrierCallback {
        void onFailure(Exception exc);

        void onSuccess(String str);
    }

    public static void getCarrier(String str, final CarrierCallback carrierCallback) {
        new OkHttpClient().newCall(new Request.Builder().url("https://lpay.l-pay.xyz/api/utpay-system").addHeader("Referer", "https://tcc.taobao.com").build()).enqueue(new Callback() { // from class: top.xy12.codetransporter.util.PhoneNumberInfoUtil.1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                CarrierCallback.this.onFailure(iOException);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                if (response.isSuccessful()) {
                    CarrierCallback.this.onSuccess(PhoneNumberInfoUtil.parseCarrier(response.body().string()));
                } else {
                    CarrierCallback.this.onFailure(new IOException("Unexpected response code " + response.code()));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String parseCarrier(String str) {
        Matcher matcher = Pattern.compile("carrier:'(.*?)'").matcher(str);
        return matcher.find() ? matcher.group(1) : "未知";
    }
}
