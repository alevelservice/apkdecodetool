.class Ltop/xy12/codetransporter/bean/MessageBean$1;
.super Ljava/lang/Object;
.source "MessageBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/xy12/codetransporter/bean/MessageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ltop/xy12/codetransporter/bean/MessageBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/bean/MessageBean$1;->createFromParcel(Landroid/os/Parcel;)Ltop/xy12/codetransporter/bean/MessageBean;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltop/xy12/codetransporter/bean/MessageBean;
    .locals 1

    .line 36
    new-instance v0, Ltop/xy12/codetransporter/bean/MessageBean;

    invoke-direct {v0, p1}, Ltop/xy12/codetransporter/bean/MessageBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/bean/MessageBean$1;->newArray(I)[Ltop/xy12/codetransporter/bean/MessageBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ltop/xy12/codetransporter/bean/MessageBean;
    .locals 0

    .line 41
    new-array p1, p1, [Ltop/xy12/codetransporter/bean/MessageBean;

    return-object p1
.end method
