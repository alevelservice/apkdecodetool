.class public final Lcom/google/android/gms/internal/ads/ef0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bf0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bf0<",
        "Lcom/google/android/gms/internal/ads/d10;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/f00;

.field private final b:Lcom/google/android/gms/internal/ads/tz0;

.field private final c:Lcom/google/android/gms/internal/ads/k30;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/f00;Lcom/google/android/gms/internal/ads/tz0;Lcom/google/android/gms/internal/ads/k30;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ef0;->a:Lcom/google/android/gms/internal/ads/f00;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ef0;->b:Lcom/google/android/gms/internal/ads/tz0;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ef0;->c:Lcom/google/android/gms/internal/ads/k30;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/d10;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ef0;->a:Lcom/google/android/gms/internal/ads/f00;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f00;->c()Lcom/google/android/gms/internal/ads/ft0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ft0;->a()Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v4

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ef0;->c:Lcom/google/android/gms/internal/ads/k30;

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/k30;->a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/qz0;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a([Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/lz0;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/internal/ads/hf0;

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/hf0;-><init>(Lcom/google/android/gms/internal/ads/ef0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef0;->b:Lcom/google/android/gms/internal/ads/tz0;

    .line 12
    invoke-virtual {v0, v8, p1}, Lcom/google/android/gms/internal/ads/lz0;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/d10;
    .locals 3

    .line 13
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/l10;

    .line 14
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/y40;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ef0;->a:Lcom/google/android/gms/internal/ads/f00;

    new-instance v1, Lcom/google/android/gms/internal/ads/lr;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p4, v2}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/String;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/y10;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/y10;-><init>(Lcom/google/android/gms/internal/ads/l10;)V

    new-instance p4, Lcom/google/android/gms/internal/ads/s00;

    invoke-direct {p4, p5, p2}, Lcom/google/android/gms/internal/ads/s00;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/y40;)V

    .line 16
    invoke-virtual {v0, v1, p3, p4}, Lcom/google/android/gms/internal/ads/f00;->a(Lcom/google/android/gms/internal/ads/lr;Lcom/google/android/gms/internal/ads/y10;Lcom/google/android/gms/internal/ads/s00;)Lcom/google/android/gms/internal/ads/n10;

    move-result-object p3

    .line 17
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/n10;->h()Lcom/google/android/gms/internal/ads/z40;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/z40;->a()V

    .line 18
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/n10;->i()Lcom/google/android/gms/internal/ads/g50;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/g50;->a(Lcom/google/android/gms/internal/ads/y40;)V

    .line 19
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/n10;->j()Lcom/google/android/gms/internal/ads/i40;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/l10;->t()Lcom/google/android/gms/internal/ads/fi;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/i40;->a(Lcom/google/android/gms/internal/ads/fi;)V

    .line 20
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/p10;->g()Lcom/google/android/gms/internal/ads/d10;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/y40;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3

    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isNonagon"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/nc;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 39
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ns0;->p:Lcom/google/android/gms/internal/ads/rs0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rs0;->c:Lorg/json/JSONObject;

    const-string v2, "response"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sdk_params"

    .line 40
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "google.afma.nativeAds.preProcessJson"

    .line 41
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/y40;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/ff0;->a:Lcom/google/android/gms/internal/ads/qy0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ef0;->b:Lcom/google/android/gms/internal/ads/tz0;

    .line 42
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/d10;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ef0;->a:Lcom/google/android/gms/internal/ads/f00;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f00;->c()Lcom/google/android/gms/internal/ads/ft0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ft0;->a()Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ef0;->a:Lcom/google/android/gms/internal/ads/f00;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f00;->c()Lcom/google/android/gms/internal/ads/ft0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ft0;->a(Lcom/google/android/gms/internal/ads/qz0;)V

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/df0;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/df0;-><init>(Lcom/google/android/gms/internal/ads/ef0;Lcom/google/android/gms/internal/ads/ns0;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ef0;->b:Lcom/google/android/gms/internal/ads/tz0;

    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/gf0;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/gf0;-><init>(Lcom/google/android/gms/internal/ads/ef0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef0;->b:Lcom/google/android/gms/internal/ads/tz0;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 5

    .line 21
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/t90;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/t90;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget v0, v0, Lcom/google/android/gms/internal/ads/ws0;->k:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    .line 24
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ef0;->a:Lcom/google/android/gms/internal/ads/f00;

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f00;->c()Lcom/google/android/gms/internal/ads/ft0;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget v4, v4, Lcom/google/android/gms/internal/ads/ws0;->k:I

    .line 27
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/ft0;->a(I)V

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget v4, v4, Lcom/google/android/gms/internal/ads/ws0;->k:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    :goto_0
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget v4, v4, Lcom/google/android/gms/internal/ads/ws0;->k:I

    if-ge v2, v4, :cond_2

    if-ge v2, v0, :cond_1

    .line 30
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, p1, p2, v4}, Lcom/google/android/gms/internal/ads/ef0;->a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 31
    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/ads/t90;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/t90;-><init>(I)V

    .line 32
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v4

    .line 33
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1

    .line 35
    :cond_3
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ef0;->a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/if0;->a:Lcom/google/android/gms/internal/ads/pw0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ef0;->b:Lcom/google/android/gms/internal/ads/tz0;

    .line 36
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/pw0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ns0;->p:Lcom/google/android/gms/internal/ads/rs0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rs0;->c:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
