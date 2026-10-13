.class Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$1;
.super Ljava/lang/Object;
.source "PhoneNumberInfoUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil;->getCarrier(Ljava/lang/String;Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$CarrierCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$CarrierCallback;


# direct methods
.method constructor <init>(Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$CarrierCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$1;->val$callback:Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$CarrierCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 29
    iget-object p1, p0, Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$1;->val$callback:Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$CarrierCallback;

    invoke-interface {p1, p2}, Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$CarrierCallback;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p1}, Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object p2, p0, Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$1;->val$callback:Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$CarrierCallback;

    invoke-interface {p2, p1}, Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$CarrierCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$1;->val$callback:Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$CarrierCallback;

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected response code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$CarrierCallback;->onFailure(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
