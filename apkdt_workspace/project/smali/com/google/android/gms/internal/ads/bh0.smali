.class public final Lcom/google/android/gms/internal/ads/bh0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dd0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dd0<",
        "Lcom/google/android/gms/internal/ads/r50;",
        "Lcom/google/android/gms/internal/ads/zzaji;",
        "Lcom/google/android/gms/internal/ads/zzcgt;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/y50;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/y50;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bh0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bh0;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bh0;->c:Lcom/google/android/gms/internal/ads/y50;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bh0;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bh0;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bh0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)V
    .locals 0

    .line 10
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/bh0;->c(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)V

    return-void
.end method

.method private static c(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            "Lcom/google/android/gms/internal/ads/bd0<",
            "Lcom/google/android/gms/internal/ads/zzaji;",
            "Lcom/google/android/gms/internal/ads/zzcgt;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaji;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ns0;->s:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzaji;->zza(Lcom/google/android/gms/internal/ads/zztp;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Fail to load ad from adapter "

    .line 4
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/bd0;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            "Lcom/google/android/gms/internal/ads/bd0<",
            "Lcom/google/android/gms/internal/ads/zzaji;",
            "Lcom/google/android/gms/internal/ads/zzcgt;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaji;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaji;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/dh0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dh0;-><init>(Lcom/google/android/gms/internal/ads/bh0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)V

    .line 3
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcgt;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zza(Lcom/google/android/gms/internal/ads/by;)V

    .line 4
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bh0;->a:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    const/4 v4, 0x0

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzapz;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ns0;->s:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzaji;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zztp;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapz;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/bh0;->c(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bh0;->c:Lcom/google/android/gms/internal/ads/y50;

    new-instance v1, Lcom/google/android/gms/internal/ads/lr;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bd0;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/w50;

    new-instance p2, Lcom/google/android/gms/internal/ads/ah0;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/ah0;-><init>(Lcom/google/android/gms/internal/ads/bd0;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/w50;-><init>(Lcom/google/android/gms/internal/ads/sz;)V

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/y50;->a(Lcom/google/android/gms/internal/ads/lr;Lcom/google/android/gms/internal/ads/w50;)Lcom/google/android/gms/internal/ads/t50;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq;->a()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/dn;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaji;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dn;-><init>(Lcom/google/android/gms/internal/ads/zzaji;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bh0;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/cw;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq;->b()Lcom/google/android/gms/internal/ads/fu;

    move-result-object v6

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq;->c()Lcom/google/android/gms/internal/ads/it;

    move-result-object v5

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t50;->h()Lcom/google/android/gms/internal/ads/yu;

    move-result-object v4

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t50;->k()Lcom/google/android/gms/internal/ads/yx;

    move-result-object v7

    .line 9
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcgt;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcjs;

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzcjs;-><init>(Lcom/google/android/gms/internal/ads/bh0;Lcom/google/android/gms/internal/ads/yu;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/fu;Lcom/google/android/gms/internal/ads/yx;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcgt;->zza(Lcom/google/android/gms/internal/ads/zzapz;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t50;->j()Lcom/google/android/gms/internal/ads/r50;

    move-result-object p1

    return-object p1
.end method
