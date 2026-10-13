package top.xy12.codetransporter.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.intercept.sms.R;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import top.xy12.codetransporter.bean.MessageBean;

/* loaded from: classes.dex */
public class RecycleViewAdapter extends RecyclerView.Adapter<MyViewHoder> {
    private Context context;
    private List<MessageBean> list;

    public RecycleViewAdapter(Context context, List<MessageBean> list) {
        this.context = context;
        this.list = list;
    }

    public void setData(MessageBean messageBean) {
        if (messageBean != null) {
            if (this.list.size() >= 100) {
                this.list.clear();
                this.list.add(messageBean);
            } else {
                this.list.add(messageBean);
            }
        }
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHoder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHoder(View.inflate(this.context, R.layout.message_item_layout, null));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHoder myViewHoder, int i) {
        StringBuffer stringBuffer = new StringBuffer();
        int state = this.list.get(i).getState();
        if (state == 0) {
            stringBuffer.append("[").append(convertTimestampToDate(System.currentTimeMillis())).append("]\n手机号：").append(this.list.get(i).getPhoneNumber()).append("\n发件人：").append(this.list.get(i).getSenderNumber()).append("\n时间：").append(convertTimestampToDate(this.list.get(i).getTime())).append("\n内容：").append(this.list.get(i).getContent());
        } else if (state == 1) {
            stringBuffer.append("[").append(convertTimestampToDate(System.currentTimeMillis())).append("] ").append(this.list.get(i).getContent()).append("\n");
        }
        if (this.list.get(i).getIsShowLog() == 0) {
            myViewHoder.content_tv.setText(stringBuffer);
            return;
        }
        myViewHoder.content_tv.setText(((Object) stringBuffer) + " 日志：" + this.list.get(i).getLogInfo());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class MyViewHoder extends RecyclerView.ViewHolder {
        TextView content_tv;

        public MyViewHoder(View view) {
            super(view);
            this.content_tv = (TextView) view.findViewById(R.id.content_tv);
        }
    }

    public String convertTimestampToDate(long j) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(j));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
