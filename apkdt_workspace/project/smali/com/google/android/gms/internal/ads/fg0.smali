.class public final Lcom/google/android/gms/internal/ads/fg0;
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
        "Lcom/google/android/gms/internal/ads/zzcgu;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fg0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fg0;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fg0;->c:Lcom/google/android/gms/internal/ads/y50;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            "Lcom/google/android/gms/internal/ads/bd0<",
            "Lcom/google/android/gms/internal/ads/zzaji;",
            "Lcom/google/android/gms/internal/ads/zzcgu;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fg0;->a:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ns0;->s:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzajj;

    .line 4
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzaji;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zztp;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Fail to load ad from adapter "

    .line 5
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/bd0;->a:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, p3

    :goto_0
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fg0;->c:Lcom/google/android/gms/internal/ads/y50;

    new-instance v1, Lcom/google/android/gms/internal/ads/lr;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bd0;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/w50;

    new-instance p2, Lcom/google/android/gms/internal/ads/ig0;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/ig0;-><init>(Lcom/google/android/gms/internal/ads/bd0;)V

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

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fg0;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/cw;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 5
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t50;->l()Lcom/google/android/gms/internal/ads/zzciz;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcgu;->zza(Lcom/google/android/gms/internal/ads/zzajj;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t50;->j()Lcom/google/android/gms/internal/ads/r50;

    move-result-object p1

    return-object p1
.end method
