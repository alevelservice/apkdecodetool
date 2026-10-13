.class public final Lcom/google/android/gms/internal/ads/xd0;
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
        "Lcom/google/android/gms/internal/ads/zzalj;",
        "Lcom/google/android/gms/internal/ads/zzcgu;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/qp;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/qp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xd0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xd0;->b:Lcom/google/android/gms/internal/ads/qp;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/xd0;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xd0;->c:Landroid/view/View;

    return-object p1
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

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xd0;->a:Landroid/content/Context;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcgh;

    const/4 p2, 0x0

    invoke-direct {v6, p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzcgh;-><init>(Lcom/google/android/gms/internal/ads/xd0;Lcom/google/android/gms/internal/ads/bd0;Lcom/google/android/gms/internal/ads/yd0;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    move-object v7, p2

    check-cast v7, Lcom/google/android/gms/internal/ads/zzajj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/ws0;->e:Lcom/google/android/gms/internal/ads/zztw;

    .line 5
    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzalj;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzakx;Lcom/google/android/gms/internal/ads/zzajj;Lcom/google/android/gms/internal/ads/zztw;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xd0;->b:Lcom/google/android/gms/internal/ads/qp;

    new-instance v1, Lcom/google/android/gms/internal/ads/lr;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bd0;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/yo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xd0;->c:Landroid/view/View;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzalj;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/wd0;->a(Lcom/google/android/gms/internal/ads/zzalj;)Lcom/google/android/gms/internal/ads/pq;

    move-result-object v3

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ns0;->r:Ljava/util/List;

    const/4 v4, 0x0

    .line 2
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/ms0;

    const/4 v4, 0x0

    invoke-direct {p1, v2, v4, v3, p2}, Lcom/google/android/gms/internal/ads/yo;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/pq;Lcom/google/android/gms/internal/ads/ms0;)V

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/qp;->a(Lcom/google/android/gms/internal/ads/lr;Lcom/google/android/gms/internal/ads/yo;)Lcom/google/android/gms/internal/ads/to;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/to;->i()Lcom/google/android/gms/internal/ads/nx;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xd0;->c:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/nx;->a(Landroid/view/View;)V

    .line 5
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq;->f()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcgu;->zza(Lcom/google/android/gms/internal/ads/zzajj;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/to;->h()Lcom/google/android/gms/internal/ads/uo;

    move-result-object p1

    return-object p1
.end method
