.class public final Lcom/google/android/gms/internal/ads/oh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/o0<",
        "Lcom/google/android/gms/internal/ads/tf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Precache invalid numeric parameter \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 9

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/tf;

    const/4 v0, 0x3

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "google.afma.Notify_dt"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Precache GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->y()Lcom/google/android/gms/internal/ads/gh;

    const-string v0, "abort"

    .line 10
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gh;->a(Lcom/google/android/gms/internal/ads/tf;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Precache abort but no precache task running."

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "src"

    .line 13
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "demuxed"

    .line 14
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 15
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 17
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 18
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move-object v2, v6

    goto :goto_2

    :catch_0
    nop

    const-string v2, "Malformed demuxed URL list for precache: "

    .line 19
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    move-object v2, v5

    :cond_5
    :goto_2
    if-nez v2, :cond_6

    new-array v2, v1, [Ljava/lang/String;

    aput-object v0, v2, v3

    .line 20
    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gh;->b(Lcom/google/android/gms/internal/ads/tf;)Lcom/google/android/gms/internal/ads/eh;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string p1, "Precache task is already running."

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/tf;->zzxm()Lcom/google/android/gms/ads/internal/b;

    move-result-object v1

    if-nez v1, :cond_8

    const-string p1, "Precache requires a dependency provider."

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void

    .line 24
    :cond_8
    new-instance v1, Lcom/google/android/gms/internal/ads/qf;

    const-string v4, "flags"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/qf;-><init>(Ljava/lang/String;)V

    const-string v4, "player"

    .line 25
    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/oh;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_9

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 27
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/tf;->zzxm()Lcom/google/android/gms/ads/internal/b;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/internal/ads/rh;

    .line 29
    invoke-interface {v4, p1, v3, v5, v1}, Lcom/google/android/gms/internal/ads/rh;->a(Lcom/google/android/gms/internal/ads/tf;ILjava/lang/String;Lcom/google/android/gms/internal/ads/qf;)Lcom/google/android/gms/internal/ads/jh;

    move-result-object v1

    .line 30
    new-instance v3, Lcom/google/android/gms/internal/ads/eh;

    invoke-direct {v3, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/eh;-><init>(Lcom/google/android/gms/internal/ads/tf;Lcom/google/android/gms/internal/ads/jh;Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ja;->b()Lcom/google/android/gms/internal/ads/qz0;

    goto :goto_3

    .line 32
    :cond_a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gh;->b(Lcom/google/android/gms/internal/ads/tf;)Lcom/google/android/gms/internal/ads/eh;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 33
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/eh;->d:Lcom/google/android/gms/internal/ads/jh;

    :goto_3
    const-string p1, "minBufferMs"

    .line 34
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/oh;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/jh;->a(I)V

    :cond_b
    const-string p1, "maxBufferMs"

    .line 36
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/oh;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/jh;->b(I)V

    :cond_c
    const-string p1, "bufferForPlaybackMs"

    .line 38
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/oh;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/jh;->c(I)V

    :cond_d
    const-string p1, "bufferForPlaybackAfterRebufferMs"

    .line 40
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/oh;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/jh;->d(I)V

    :cond_e
    return-void

    :cond_f
    const-string p1, "Precache must specify a source."

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void
.end method
