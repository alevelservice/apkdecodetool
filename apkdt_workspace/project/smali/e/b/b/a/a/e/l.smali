.class public Le/b/b/a/a/e/l;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field private static a:J

.field private static b:Ljava/lang/String;


# direct methods
.method public static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static a(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    const-string v0, "GSM"

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_4

    const-string v0, "TD-CDMA"

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    const-string v0, "TDS-HSDPSA"

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_6

    const-string v0, "TDS-HSUPA"

    :cond_6
    :goto_0
    if-eqz v0, :cond_7

    .line 10
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    sget-wide v2, Le/b/b/a/a/e/l;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 3
    invoke-static {p0}, Le/b/b/a/a/e/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Le/b/b/a/a/e/l;->b:Ljava/lang/String;

    .line 4
    sput-wide v0, Le/b/b/a/a/e/l;->a:J

    .line 5
    :cond_0
    sget-object v2, Le/b/b/a/a/e/l;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "no default network"

    if-nez v2, :cond_1

    sget-object v2, Le/b/b/a/a/e/l;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    :cond_1
    invoke-static {p0}, Le/b/b/a/a/e/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Le/b/b/a/a/e/l;->b:Ljava/lang/String;

    .line 7
    sput-wide v0, Le/b/b/a/a/e/l;->a:J

    .line 8
    :cond_2
    sget-object p0, Le/b/b/a/a/e/l;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 9
    sput-object v3, Le/b/b/a/a/e/l;->b:Ljava/lang/String;

    .line 10
    :cond_3
    sget-object p0, Le/b/b/a/a/e/l;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Le/b/b/a/a/e/l;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 2
    invoke-static {p0}, Le/b/b/a/a/e/l;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
