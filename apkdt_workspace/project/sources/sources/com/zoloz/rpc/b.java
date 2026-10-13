package com.zoloz.rpc;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: NormalRequest.java */
/* loaded from: classes2.dex */
public class b {
    public static e.o.a.e a(String str, Object obj, boolean z) {
        e.o.a.e eVar = new e.o.a.e();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setReadTimeout(RpcConfig.getInstance().getReadTimeout());
            httpURLConnection.setConnectTimeout(RpcConfig.getInstance().getConnectTimeout());
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestProperty(HummerConstants.APP_ID_KEY, RpcConfig.getInstance().getAppId());
            httpURLConnection.setRequestProperty(HummerConstants.WORKSPACE_ID_KEY, RpcConfig.getInstance().getWorkspaceId());
            httpURLConnection.setRequestProperty("Charset", "UTF-8");
            if (z) {
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setRequestProperty("Content-Type", "application/json");
            }
            OutputStream outputStream = httpURLConnection.getOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
            if (obj != null) {
                String str2 = "params " + obj.getClass();
                if (obj instanceof List) {
                    bufferedWriter.write(a((List<String>) obj));
                } else if (obj instanceof Map) {
                    bufferedWriter.write(a((Map<String, Object>) obj));
                } else if (obj instanceof String) {
                    bufferedWriter.write((String) obj);
                }
            }
            bufferedWriter.write(new StringBuilder().toString());
            bufferedWriter.flush();
            bufferedWriter.close();
            outputStream.close();
            httpURLConnection.connect();
            if (httpURLConnection != null) {
                try {
                    int responseCode = httpURLConnection.getResponseCode();
                    String str3 = "";
                    if (responseCode == 200) {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            str3 = str3 + readLine;
                        }
                    } else {
                        String str4 = "response status " + responseCode;
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                        while (true) {
                            String readLine2 = bufferedReader2.readLine();
                            if (readLine2 == null) {
                                break;
                            }
                            str3 = str3 + readLine2;
                        }
                    }
                    eVar.f18187a = str3;
                    eVar.f18189c = responseCode;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    eVar.f18189c = 4;
                }
            }
            return eVar;
        } catch (IOException unused) {
            throw new ZolozRpcException((Integer) 2, "network error");
        }
    }

    public static e.o.a.e a(String str, Object obj) {
        return a(str, obj, false);
    }

    private static String a(List<String> list) {
        if (list == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : list) {
            if (z) {
                z = false;
            } else {
                sb.append("&");
            }
            sb.append(str);
        }
        return sb.toString();
    }

    private static String a(Map<String, Object> map) {
        Set<Map.Entry<String, Object>> entrySet = map.entrySet();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Map.Entry<String, Object> entry : entrySet) {
            if (z) {
                z = false;
            } else {
                sb.append("&");
            }
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(entry.getValue());
            String str = entry.getKey() + "=" + entry.getValue();
        }
        return sb.toString();
    }
}
