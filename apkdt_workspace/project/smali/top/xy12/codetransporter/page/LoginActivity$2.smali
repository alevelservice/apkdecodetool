.class Ltop/xy12/codetransporter/page/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/xy12/codetransporter/page/LoginActivity;->doRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/xy12/codetransporter/page/LoginActivity;


# direct methods
.method constructor <init>(Ltop/xy12/codetransporter/page/LoginActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity$2;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onFailure$0(Ljava/io/IOException;)V
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6700\u7ec8\u5931\u8d25 SmsReceiver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SmsReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$onResponse$1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 153
    iget-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity$2;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    new-instance v0, Ltop/xy12/codetransporter/page/LoginActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Ltop/xy12/codetransporter/page/LoginActivity$2$$ExternalSyntheticLambda0;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Ltop/xy12/codetransporter/page/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "SmsReceiver: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmsReceiver"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity$2;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    new-instance p2, Ltop/xy12/codetransporter/page/LoginActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Ltop/xy12/codetransporter/page/LoginActivity$2$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2}, Ltop/xy12/codetransporter/page/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
