package top.xy12.codetransporter.util;

import android.content.Context;
import android.os.Build;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import androidx.core.app.ActivityCompat;
import com.hjq.permissions.Permission;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class SimUtils {
    public static List<String> getPhoneNumber(Context context) {
        TelephonyManager telephonyManager;
        ArrayList arrayList = new ArrayList();
        try {
            telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Log.e("SmsReceiver", "simOperator: " + telephonyManager.getSimOperator());
        } catch (Exception e) {
            Log.d("SmsReceiver", " eeeeeeeeeeeeeeeeeeeeeee  " + e.getMessage());
        }
        if (ActivityCompat.checkSelfPermission(context, Permission.READ_SMS) != 0 && ActivityCompat.checkSelfPermission(context, Permission.READ_PHONE_NUMBERS) != 0 && ActivityCompat.checkSelfPermission(context, Permission.READ_PHONE_STATE) != 0) {
            return null;
        }
        String line1Number = telephonyManager.getLine1Number();
        Log.e("SmsReceiver", "phoneNumber: " + line1Number);
        Log.e("SmsReceiver", "phoneCount: " + (Build.VERSION.SDK_INT >= 23 ? telephonyManager.getPhoneCount() : 0));
        Iterator<SubscriptionInfo> it = SubscriptionManager.from(context).getActiveSubscriptionInfoList().iterator();
        while (it.hasNext()) {
            String number = it.next().getNumber();
            Log.d("SmsReceiver", " Number is  " + number);
            arrayList.add(number);
        }
        if (arrayList.isEmpty() && !line1Number.isEmpty()) {
            arrayList.add(line1Number);
        }
        return arrayList;
    }
}
