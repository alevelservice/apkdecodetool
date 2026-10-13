.class public Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil;
.super Ljava/lang/Object;
.source "PhoneNumberInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$CarrierCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-static {p0}, Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil;->parseCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCarrier(Ljava/lang/String;Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$CarrierCallback;)V
    .locals 3

    .line 18
    new-instance p0, Lokhttp3/OkHttpClient;

    invoke-direct {p0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 21
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "https://lpay.l-pay.xyz/api/utpay-system"

    .line 22
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Referer"

    const-string v2, "https://tcc.taobao.com"

    .line 23
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance v0, Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$1;

    invoke-direct {v0, p1}, Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$1;-><init>(Ltop/xy12/codetransporter/util/PhoneNumberInfoUtil$CarrierCallback;)V

    invoke-interface {p0, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private static parseCarrier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "carrier:\'(.*?)\'"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "\u672a\u77e5"

    return-object p0
.end method
