.class public Ltop/xy12/codetransporter/bean/MessageBean;
.super Ljava/lang/Object;
.source "MessageBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/xy12/codetransporter/bean/MessageBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private card:I

.field private content:Ljava/lang/String;

.field private isShowLog:I

.field private logInfo:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private senderNumber:Ljava/lang/String;

.field private state:I

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ltop/xy12/codetransporter/bean/MessageBean$1;

    invoke-direct {v0}, Ltop/xy12/codetransporter/bean/MessageBean$1;-><init>()V

    sput-object v0, Ltop/xy12/codetransporter/bean/MessageBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->phoneNumber:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->senderNumber:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->time:J

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->content:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->logInfo:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->state:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->card:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Ltop/xy12/codetransporter/bean/MessageBean;->isShowLog:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCard()I
    .locals 1

    .line 69
    iget v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->card:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowLog()I
    .locals 1

    .line 57
    iget v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->isShowLog:I

    return v0
.end method

.method public getLogInfo()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->logInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderNumber()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->senderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 53
    iget v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->state:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 93
    iget-wide v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->time:J

    return-wide v0
.end method

.method public setCard(I)V
    .locals 0

    .line 73
    iput p1, p0, Ltop/xy12/codetransporter/bean/MessageBean;->card:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Ltop/xy12/codetransporter/bean/MessageBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setIsShowLog(I)V
    .locals 0

    .line 61
    iput p1, p0, Ltop/xy12/codetransporter/bean/MessageBean;->isShowLog:I

    return-void
.end method

.method public setLogInfo(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Ltop/xy12/codetransporter/bean/MessageBean;->logInfo:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Ltop/xy12/codetransporter/bean/MessageBean;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setSenderNumber(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Ltop/xy12/codetransporter/bean/MessageBean;->senderNumber:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 65
    iput p1, p0, Ltop/xy12/codetransporter/bean/MessageBean;->state:I

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 97
    iput-wide p1, p0, Ltop/xy12/codetransporter/bean/MessageBean;->time:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 115
    iget-object p2, p0, Ltop/xy12/codetransporter/bean/MessageBean;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Ltop/xy12/codetransporter/bean/MessageBean;->senderNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-wide v0, p0, Ltop/xy12/codetransporter/bean/MessageBean;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-object p2, p0, Ltop/xy12/codetransporter/bean/MessageBean;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object p2, p0, Ltop/xy12/codetransporter/bean/MessageBean;->logInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget p2, p0, Ltop/xy12/codetransporter/bean/MessageBean;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget p2, p0, Ltop/xy12/codetransporter/bean/MessageBean;->card:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget p2, p0, Ltop/xy12/codetransporter/bean/MessageBean;->isShowLog:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
