package top.xy12.codetransporter.util;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.json.JSONException;
import org.json.JSONObject;
import top.xy12.codetransporter.bean.MessageBean;
import top.xy12.codetransporter.interfaces.CallBack;
import top.xy12.codetransporter.interfaces.ILoginCallBack;
import top.xy12.codetransporter.page.LoginActivity;
import top.xy12.codetransporter.page.MainActivity;

/* loaded from: classes.dex */
public class OkHttpUtils {
    public static final String URL = "https://bdapi.paybeidous.com/";
    public static String access_token = "";

    public static void heartbeat(Context context, final String str, Map<String, Object> map, final CallBack callBack) {
        try {
            Log.d("SmsReceiver", "Context params: " + context);
            OkHttpClient okHttpClient = new OkHttpClient();
            MediaType mediaType = MediaType.get("application/json; charset=utf-8");
            map.put("sign", "kq2hkiG9w0BA2QE7FA$ASCAm");
            String json = new Gson().toJson(map);
            Log.d("SmsReceiver", "heartbeat post params: " + json);
            okHttpClient.newCall(new Request.Builder().addHeader("authorization", "Bearer " + access_token).url(URL + str).post(RequestBody.create(json, mediaType)).build()).enqueue(new Callback() { // from class: top.xy12.codetransporter.util.OkHttpUtils.1
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    Log.e("SmsReceiver", "onFailure: " + iOException.getMessage());
                    CallBack.this.onFail(iOException.getMessage());
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                    String string = response.body().string();
                    try {
                        Log.w("SmsReceiver", "string: " + string);
                        int i = new JSONObject(string).getInt("code");
                        Log.w("SmsReceiver", "code: " + i + "           access_token:  " + OkHttpUtils.access_token);
                        if (i == 200) {
                            CallBack.this.onSuccess();
                        } else {
                            CallBack.this.onFail(string);
                        }
                        Log.e("SmsReceiver", "heartbeat response.message onResponse : " + string + "    url: https://bdapi.paybeidous.com/" + str);
                        if (i != 401) {
                            TextUtils.isEmpty(OkHttpUtils.access_token);
                        }
                    } catch (Exception e) {
                        Log.e("SmsReceiver", "onFailure eeee: " + e.getMessage());
                        CallBack.this.onFail("eee: " + string);
                    }
                }
            });
        } catch (Exception e) {
            callBack.onFail("eee111: " + e.getMessage());
        }
    }

    public static void smsReportOtp(Context context, String str, Map<String, Object> map) {
        OkHttpClient okHttpClient = new OkHttpClient();
        MediaType parse = MediaType.parse("application/x-www-form-urlencoded");
        map.put("sign", "kq2hkiG9w0BA2QE7FA$ASCAm");
        String buildFormData = buildFormData(map);
        Log.d("SmsReceiver", "smsReportOtp params formBody: " + buildFormData);
        RequestBody create = RequestBody.create(parse, buildFormData);
        Log.d("SmsReceiver", URL + str);
        try {
            Response execute = okHttpClient.newCall(new Request.Builder().addHeader("authorization", "Bearer " + access_token).url(URL + str).post(create).build()).execute();
            if (execute.isSuccessful()) {
                String string = execute.body().string();
                Log.e("SmsReceiver", "smsReportOtp response.message onResponse : " + string);
                MessageBean messageBean = new MessageBean();
                messageBean.setState(1);
                Intent intent = new Intent(MainActivity.BROAD_ACTION);
                if (execute.code() == 200) {
                    messageBean.setContent("推送成功: " + string);
                } else {
                    messageBean.setContent("推送失败：" + execute.message());
                }
                intent.putExtra("smsMessage", messageBean);
                context.sendBroadcast(intent);
                return;
            }
            Log.e("SmsReceiver", "Error post1 : " + execute.code());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void apkSubmit(Context context, String str, Map<String, Object> map) {
        OkHttpClient okHttpClient = new OkHttpClient();
        MediaType mediaType = MediaType.get("application/json; charset=utf-8");
        map.put("sign", "kq2hkiG9w0BA2QE7FA$ASCAm");
        String jSONObject = new JSONObject(map).toString();
        Log.d("SmsReceiver", "smsReportOtp params formBody: " + jSONObject);
        RequestBody create = RequestBody.create(mediaType, jSONObject);
        Log.d("SmsReceiver", URL + str);
        try {
            Response execute = okHttpClient.newCall(new Request.Builder().addHeader("authorization", "Bearer " + access_token).url(URL + str).post(create).build()).execute();
            if (execute.isSuccessful()) {
                MessageBean messageBean = new MessageBean();
                String string = execute.body().string();
                Log.e("SmsReceiver", "smsReportOtp response.message onResponse : " + string);
                messageBean.setState(1);
                Intent intent = new Intent(MainActivity.BROAD_ACTION);
                if (execute.code() == 200) {
                    messageBean.setContent("手动推送成功: " + string);
                } else {
                    messageBean.setContent("手动推送失败：" + execute.message());
                }
                intent.putExtra("smsMessage", messageBean);
                context.sendBroadcast(intent);
                return;
            }
            Log.e("SmsReceiver", "Error post1 : " + execute.code());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void login(final Context context, final String str, Map<String, Object> map, final ILoginCallBack iLoginCallBack) {
        if (iLoginCallBack == null) {
            return;
        }
        try {
            Log.d("SmsReceiver", "Context params: " + context);
            OkHttpClient okHttpClient = new OkHttpClient();
            MediaType mediaType = MediaType.get("application/json; charset=utf-8");
            String json = new Gson().toJson(map);
            Log.d("SmsReceiver", "login post params: " + json);
            okHttpClient.newCall(new Request.Builder().url(URL + str).post(RequestBody.create(json, mediaType)).build()).enqueue(new Callback() { // from class: top.xy12.codetransporter.util.OkHttpUtils.2
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    Log.e("SmsReceiver", "onFailure: " + iOException.getMessage());
                    ILoginCallBack.this.onFail(iOException.getMessage());
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                    String string = response.body().string();
                    Log.e("SmsReceiver", "login response.message onResponse : " + string + "    url: https://bdapi.paybeidous.com/" + str);
                    if (response.isSuccessful()) {
                        try {
                            JSONObject jSONObject = new JSONObject(string);
                            String string2 = jSONObject.getString(NotificationCompat.CATEGORY_MESSAGE);
                            if (!TextUtils.isEmpty(string2) && !string2.equals("null")) {
                                ILoginCallBack.this.onFail(string2);
                            }
                            ILoginCallBack.this.onSuccess();
                            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                            if (jSONObject2 != null) {
                                String string3 = jSONObject2.getString("access_token");
                                if (TextUtils.isEmpty(string3)) {
                                    return;
                                }
                                Intent intent = new Intent(LoginActivity.LOGIN_RECEIVER_ACTION);
                                intent.putExtra("access_token", string3);
                                OkHttpUtils.access_token = string3;
                                context.sendBroadcast(intent);
                                return;
                            }
                            return;
                        } catch (JSONException e) {
                            Log.e("SmsReceiver", " accessToken  eeeeeee: " + e.getMessage());
                            return;
                        }
                    }
                    ILoginCallBack.this.onFail(string);
                }
            });
        } catch (Exception unused) {
        }
    }

    private static String buildFormData(Map<String, Object> map) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (sb.length() != 0) {
                sb.append("&");
            }
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(entry.getValue());
        }
        return sb.toString();
    }
}
