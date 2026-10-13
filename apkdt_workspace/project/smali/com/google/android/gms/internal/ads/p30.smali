.class public final Lcom/google/android/gms/internal/ads/p30;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/f30;

.field private final c:Lcom/google/android/gms/internal/ads/t11;

.field private final d:Lcom/google/android/gms/internal/ads/zzawv;

.field private final e:Lcom/google/android/gms/ads/internal/b;

.field private final f:Lcom/google/android/gms/internal/ads/ks1;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lcom/google/android/gms/internal/ads/zzaai;

.field private final i:Lcom/google/android/gms/internal/ads/d40;

.field private final j:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/f30;Lcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ks1;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/ws0;Lcom/google/android/gms/internal/ads/d40;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p30;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/p30;->b:Lcom/google/android/gms/internal/ads/f30;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/p30;->c:Lcom/google/android/gms/internal/ads/t11;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/p30;->d:Lcom/google/android/gms/internal/ads/zzawv;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/p30;->e:Lcom/google/android/gms/ads/internal/b;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/p30;->f:Lcom/google/android/gms/internal/ads/ks1;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/p30;->g:Ljava/util/concurrent/Executor;

    .line 9
    iget-object p1, p8, Lcom/google/android/gms/internal/ads/ws0;->i:Lcom/google/android/gms/internal/ads/zzaai;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p30;->h:Lcom/google/android/gms/internal/ads/zzaai;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/p30;->i:Lcom/google/android/gms/internal/ads/d40;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/p30;->j:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "TT;>;TT;)",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "TT;>;"
        }
    .end annotation

    .line 43
    const-class p1, Ljava/lang/Exception;

    new-instance v0, Lcom/google/android/gms/internal/ads/s30;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/s30;-><init>(Ljava/lang/Object;)V

    .line 44
    sget-object v1, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 45
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "ZZ)",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaae;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/google/android/gms/internal/ads/p30;->a(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v2

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/n30;->a:Lcom/google/android/gms/internal/ads/pw0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/p30;->g:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/pw0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method private final a(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/qz0;
    .locals 12
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/zzaae;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "url"

    .line 12
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v4, "scale"

    .line 15
    invoke-virtual {p1, v4, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const/4 v1, 0x1

    const-string v2, "is_transparent"

    .line 16
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, -0x1

    const-string v4, "width"

    .line 17
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v4, "height"

    .line 18
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz p2, :cond_2

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaae;

    const/4 v6, 0x0

    .line 20
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzaae;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1

    .line 22
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p30;->b:Lcom/google/android/gms/internal/ads/f30;

    .line 23
    invoke-virtual {p2, v3, v8, v9, v1}, Lcom/google/android/gms/internal/ads/f30;->a(Ljava/lang/String;DZ)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/ads/r30;

    move-object v2, v1

    move-wide v4, v8

    move v6, v10

    move v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/r30;-><init>(Ljava/lang/String;DII)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/p30;->g:Ljava/util/concurrent/Executor;

    .line 24
    invoke-static {p2, v1, v2}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/pw0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p2

    const-string v1, "require"

    .line 25
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/p30;->a(ZLcom/google/android/gms/internal/ads/qz0;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method private static a(ZLcom/google/android/gms/internal/ads/qz0;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "TT;>;TT;)",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 46
    new-instance p0, Lcom/google/android/gms/internal/ads/v30;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/v30;-><init>(Lcom/google/android/gms/internal/ads/qz0;)V

    .line 47
    sget-object p2, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 48
    invoke-static {p1, p0, p2}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 49
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/p30;->a(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzxd;",
            ">;"
        }
    .end annotation

    const-string v0, "mute"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "reasons"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/p30;->d(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 9
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzxd;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "mute"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "default_reason"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/p30;->d(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzxd;
    .locals 3
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "reason"

    .line 1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ping_url"

    .line 2
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxd;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzxd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "r"

    .line 6
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "g"

    .line 7
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "b"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 9
    invoke-static {p1, v0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 13

    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->d()Lcom/google/android/gms/internal/ads/oi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p30;->a:Landroid/content/Context;

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/uj;->f()Lcom/google/android/gms/internal/ads/uj;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/p30;->c:Lcom/google/android/gms/internal/ads/t11;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/p30;->d:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/p30;->e:Lcom/google/android/gms/ads/internal/b;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/p30;->f:Lcom/google/android/gms/internal/ads/ks1;

    const-string v2, "native-omid"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 52
    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/oi;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/qr1;Z)Lcom/google/android/gms/internal/ads/fi;

    move-result-object p2

    .line 53
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ee;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ee;

    move-result-object v0

    .line 54
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/fi;->zzyy()Lcom/google/android/gms/internal/ads/oj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/u30;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/u30;-><init>(Lcom/google/android/gms/internal/ads/ee;)V

    .line 55
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/oj;->a(Lcom/google/android/gms/internal/ads/rj;)V

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    .line 56
    invoke-interface {p2, p1, v1, v2}, Lcom/google/android/gms/internal/ads/fi;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/fi;",
            ">;"
        }
    .end annotation

    const-string v0, "html_containers"

    const-string v1, "instream"

    .line 26
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/nc;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "video"

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "vast_xml"

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Required field \'vast_xml\' is missing"

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p30;->i:Lcom/google/android/gms/internal/ads/d40;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/d40;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->Q1:Lcom/google/android/gms/internal/ads/pv1;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/p30;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    invoke-static {p1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    .line 38
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/p30;->a(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p30;->i:Lcom/google/android/gms/internal/ads/d40;

    const-string v2, "base_url"

    .line 40
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/d40;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    const-string v2, "require"

    .line 42
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/p30;->a(ZLcom/google/android/gms/internal/ads/qz0;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/zzaae;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p30;->h:Lcom/google/android/gms/internal/ads/zzaai;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzaai;->f:Z

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/p30;->a(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzzz;
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 57
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "text"

    .line 58
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "bg_color"

    .line 59
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/p30;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v1, "text_color"

    .line 60
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/p30;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const/4 v1, -0x1

    const-string v2, "text_size"

    .line 61
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "allow_pub_rendering"

    .line 62
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    const/16 v2, 0x3e8

    const-string v4, "animation_ms"

    .line 63
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0xfa0

    const-string v7, "presentation_ms"

    .line 64
    invoke-virtual {p1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 65
    new-instance v11, Lcom/google/android/gms/internal/ads/zzzz;

    if-lez v1, :cond_1

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v7, v0

    add-int v8, p1, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p30;->h:Lcom/google/android/gms/internal/ads/zzaai;

    iget v9, p1, Lcom/google/android/gms/internal/ads/zzaai;->i:I

    move-object v2, v11

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzzz;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V

    return-object v11

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaae;",
            ">;>;"
        }
    .end annotation

    .line 10
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p30;->h:Lcom/google/android/gms/internal/ads/zzaai;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzaai;->f:Z

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzaai;->h:Z

    .line 11
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/p30;->a(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/zzzz;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "images"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "image"

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 8
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 10
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/p30;->a(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/q30;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/q30;-><init>(Lcom/google/android/gms/internal/ads/p30;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/p30;->g:Ljava/util/concurrent/Executor;

    .line 12
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/pw0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    const-string v1, "require"

    .line 13
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 14
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/p30;->a(ZLcom/google/android/gms/internal/ads/qz0;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method
