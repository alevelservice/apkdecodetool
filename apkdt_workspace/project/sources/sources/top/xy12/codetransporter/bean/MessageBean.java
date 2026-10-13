package top.xy12.codetransporter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class MessageBean implements Parcelable {
    public static final Parcelable.Creator<MessageBean> CREATOR = new Parcelable.Creator<MessageBean>() { // from class: top.xy12.codetransporter.bean.MessageBean.1
        @Override // android.os.Parcelable.Creator
        public MessageBean createFromParcel(Parcel parcel) {
            return new MessageBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public MessageBean[] newArray(int i) {
            return new MessageBean[i];
        }
    };
    private int card;
    private String content;
    private int isShowLog;
    private String logInfo;
    private String phoneNumber;
    private String senderNumber;
    private int state;
    private long time;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MessageBean() {
    }

    protected MessageBean(Parcel parcel) {
        this.phoneNumber = parcel.readString();
        this.senderNumber = parcel.readString();
        this.time = parcel.readLong();
        this.content = parcel.readString();
        this.logInfo = parcel.readString();
        this.state = parcel.readInt();
        this.card = parcel.readInt();
        this.isShowLog = parcel.readInt();
    }

    public String getLogInfo() {
        return this.logInfo;
    }

    public void setLogInfo(String str) {
        this.logInfo = str;
    }

    public int getState() {
        return this.state;
    }

    public int getIsShowLog() {
        return this.isShowLog;
    }

    public void setIsShowLog(int i) {
        this.isShowLog = i;
    }

    public void setState(int i) {
        this.state = i;
    }

    public int getCard() {
        return this.card;
    }

    public void setCard(int i) {
        this.card = i;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public String getSenderNumber() {
        return this.senderNumber;
    }

    public void setSenderNumber(String str) {
        this.senderNumber = str;
    }

    public long getTime() {
        return this.time;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.phoneNumber);
        parcel.writeString(this.senderNumber);
        parcel.writeLong(this.time);
        parcel.writeString(this.content);
        parcel.writeString(this.logInfo);
        parcel.writeInt(this.state);
        parcel.writeInt(this.card);
        parcel.writeInt(this.isShowLog);
    }
}
