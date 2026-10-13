.class public final Lcom/google/android/gms/internal/ads/sd0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dd0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dd0<",
        "Lcom/google/android/gms/internal/ads/uo;",
        "Lcom/google/android/gms/internal/ads/zzaji;",
        "Lcom/google/android/gms/internal/ads/zzcgu;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzawv;

.field private final c:Lcom/google/android/gms/internal/ads/qp;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/qp;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sd0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sd0;->b:Lcom/google/android/gms/internal/ads/zzawv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sd0;->c:Lcom/google/android/gms/internal/ads/qp;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/sd0;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)V
    .locals 9
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sd0;->a:Landroid/content/Context;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/ns0;->r:Ljava/util/List;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/at0;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v4

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sd0;->b:Lcom/google/android/gms/internal/ads/zzawv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzawv;->g:I

    const v1, 0x3e8fa0

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sd0;->a:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ns0;->s:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzajj;

    .line 7
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzaji;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zztw;Lcom/google/android/gms/internal/ads/zztp;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajj;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sd0;->a:Landroid/content/Context;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ns0;->s:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ns0;->p:Lcom/google/android/gms/internal/ads/rs0;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nc;->a(Lcom/google/android/gms/internal/ads/sc;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzajj;

    .line 12
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzaji;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zztw;Lcom/google/android/gms/internal/ads/zztp;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajj;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sd0;->c:Lcom/google/android/gms/internal/ads/qp;

    new-instance v1, Lcom/google/android/gms/internal/ads/lr;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bd0;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/yo;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaji;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaji;->zzrk()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaji;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/vd0;->a(Lcom/google/android/gms/internal/ads/zzaji;)Lcom/google/android/gms/internal/ads/pq;

    move-result-object v3

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ns0;->r:Ljava/util/List;

    const/4 v4, 0x0

    .line 3
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/ms0;

    const/4 v4, 0x0

    invoke-direct {p1, v2, v4, v3, p2}, Lcom/google/android/gms/internal/ads/yo;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/pq;Lcom/google/android/gms/internal/ads/ms0;)V

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/qp;->a(Lcom/google/android/gms/internal/ads/lr;Lcom/google/android/gms/internal/ads/yo;)Lcom/google/android/gms/internal/ads/to;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/to;->i()Lcom/google/android/gms/internal/ads/nx;

    move-result-object p2

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaji;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaji;->zzrk()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/nx;->a(Landroid/view/View;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq;->a()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p2

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/dn;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaji;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dn;-><init>(Lcom/google/android/gms/internal/ads/zzaji;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sd0;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/cw;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 8
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq;->f()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcgu;->zza(Lcom/google/android/gms/internal/ads/zzajj;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/to;->h()Lcom/google/android/gms/internal/ads/uo;

    move-result-object p1

    return-object p1
.end method
