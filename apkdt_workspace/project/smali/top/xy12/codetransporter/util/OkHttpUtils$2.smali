.class Ltop/xy12/codetransporter/util/OkHttpUtils$2;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/xy12/codetransporter/util/OkHttpUtils;->login(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ltop/xy12/codetransporter/interfaces/ILoginCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Ltop/xy12/codetransporter/interfaces/ILoginCallBack;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltop/xy12/codetransporter/interfaces/ILoginCallBack;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Ltop/xy12/codetransporter/util/OkHttpUtils$2;->val$callBack:Ltop/xy12/codetransporter/interfaces/ILoginCallBack;

    iput-object p2, p0, Ltop/xy12/codetransporter/util/OkHttpUtils$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Ltop/xy12/codetransporter/util/OkHttpUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onFailure: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmsReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p1, p0, Ltop/xy12/codetransporter/util/OkHttpUtils$2;->val$callBack:Ltop/xy12/codetransporter/interfaces/ILoginCallBack;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ltop/xy12/codetransporter/interfaces/ILoginCallBack;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "access_token"

    .line 201
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "login response.message onResponse : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    url: https://bdapi.paybeidous.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltop/xy12/codetransporter/util/OkHttpUtils$2;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 205
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "msg"

    .line 206
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Ltop/xy12/codetransporter/util/OkHttpUtils$2;->val$callBack:Ltop/xy12/codetransporter/interfaces/ILoginCallBack;

    invoke-interface {v1, v0}, Ltop/xy12/codetransporter/interfaces/ILoginCallBack;->onFail(Ljava/lang/String;)V

    .line 210
    :cond_0
    iget-object v0, p0, Ltop/xy12/codetransporter/util/OkHttpUtils$2;->val$callBack:Ltop/xy12/codetransporter/interfaces/ILoginCallBack;

    invoke-interface {v0}, Ltop/xy12/codetransporter/interfaces/ILoginCallBack;->onSuccess()V

    const-string v0, "data"

    .line 211
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 213
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "login_receiver_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    sput-object p2, Ltop/xy12/codetransporter/util/OkHttpUtils;->access_token:Ljava/lang/String;

    .line 218
    iget-object p1, p0, Ltop/xy12/codetransporter/util/OkHttpUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " accessToken  eeeeeee: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_1
    iget-object p1, p0, Ltop/xy12/codetransporter/util/OkHttpUtils$2;->val$callBack:Ltop/xy12/codetransporter/interfaces/ILoginCallBack;

    invoke-interface {p1, v0}, Ltop/xy12/codetransporter/interfaces/ILoginCallBack;->onFail(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
