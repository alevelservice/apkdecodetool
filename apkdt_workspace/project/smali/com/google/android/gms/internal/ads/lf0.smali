.class public final Lcom/google/android/gms/internal/ads/lf0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dd0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dd0<",
        "Lcom/google/android/gms/internal/ads/d10;",
        "Lcom/google/android/gms/internal/ads/zzalj;",
        "Lcom/google/android/gms/internal/ads/zzcgu;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/f00;

.field private c:Lcom/google/android/gms/internal/ads/zzajw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/f00;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lf0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lf0;->b:Lcom/google/android/gms/internal/ads/f00;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/lf0;Lcom/google/android/gms/internal/ads/zzajw;)Lcom/google/android/gms/internal/ads/zzajw;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lf0;->c:Lcom/google/android/gms/internal/ads/zzajw;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            "Lcom/google/android/gms/internal/ads/bd0<",
            "Lcom/google/android/gms/internal/ads/zzalj;",
            "Lcom/google/android/gms/internal/ads/zzcgu;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzalj;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/ns0;->Q:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzalj;->zzdh(Ljava/lang/String;)V

    .line 2
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzalj;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/ns0;->K:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ns0;->s:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lf0;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzchz;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzchz;-><init>(Lcom/google/android/gms/internal/ads/lf0;Lcom/google/android/gms/internal/ads/bd0;Lcom/google/android/gms/internal/ads/of0;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzajj;

    .line 5
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzalj;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzald;Lcom/google/android/gms/internal/ads/zzajj;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ws0;->g:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lf0;->c:Lcom/google/android/gms/internal/ads/zzajw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/l10;->a(Lcom/google/android/gms/internal/ads/zzajw;)Lcom/google/android/gms/internal/ads/l10;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ws0;->g:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lf0;->b:Lcom/google/android/gms/internal/ads/f00;

    new-instance v2, Lcom/google/android/gms/internal/ads/lr;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/bd0;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/y10;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/y10;-><init>(Lcom/google/android/gms/internal/ads/l10;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/a30;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lf0;->c:Lcom/google/android/gms/internal/ads/zzajw;

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v0}, Lcom/google/android/gms/internal/ads/a30;-><init>(Lcom/google/android/gms/internal/ads/zzajr;Lcom/google/android/gms/internal/ads/zzajq;Lcom/google/android/gms/internal/ads/zzajw;)V

    .line 7
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/f00;->a(Lcom/google/android/gms/internal/ads/lr;Lcom/google/android/gms/internal/ads/y10;Lcom/google/android/gms/internal/ads/a30;)Lcom/google/android/gms/internal/ads/r10;

    move-result-object p1

    .line 8
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq;->f()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcgu;->zza(Lcom/google/android/gms/internal/ads/zzajj;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p10;->g()Lcom/google/android/gms/internal/ads/d10;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/bg0;

    const/4 p2, 0x0

    const-string p3, "No corresponding native ad listener"

    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/bg0;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/bg0;

    const/4 p2, 0x1

    const-string p3, "Unified must be used for RTB."

    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/bg0;-><init>(Ljava/lang/String;I)V

    throw p1
.end method
