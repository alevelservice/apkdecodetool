.class public final Lcom/google/android/gms/internal/ads/oh0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ad0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ad0<",
        "Lcom/google/android/gms/internal/ads/uo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/qp;

.field private final c:Lcom/google/android/gms/internal/ads/zzzn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/tz0;

.field private final e:Lcom/google/android/gms/internal/ads/zu0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/qp;Lcom/google/android/gms/internal/ads/zu0;Lcom/google/android/gms/internal/ads/tz0;Lcom/google/android/gms/internal/ads/zzzn;)V
    .locals 0
    .param p5    # Lcom/google/android/gms/internal/ads/zzzn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oh0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oh0;->b:Lcom/google/android/gms/internal/ads/qp;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/oh0;->e:Lcom/google/android/gms/internal/ads/zu0;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/oh0;->d:Lcom/google/android/gms/internal/ads/tz0;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/oh0;->c:Lcom/google/android/gms/internal/ads/zzzn;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/uo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/ph0;

    new-instance v2, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oh0;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/nh0;->a:Lcom/google/android/gms/internal/ads/pq;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/ns0;->r:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/ms0;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ph0;-><init>(Lcom/google/android/gms/internal/ads/oh0;Landroid/view/View;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/pq;Lcom/google/android/gms/internal/ads/ms0;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oh0;->b:Lcom/google/android/gms/internal/ads/qp;

    new-instance v1, Lcom/google/android/gms/internal/ads/lr;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/ads/qp;->a(Lcom/google/android/gms/internal/ads/lr;Lcom/google/android/gms/internal/ads/yo;)Lcom/google/android/gms/internal/ads/to;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzk;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/to;->j()Lcom/google/android/gms/internal/ads/sh0;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ns0;->p:Lcom/google/android/gms/internal/ads/rs0;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/rs0;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/rs0;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzzk;-><init>(Lcom/google/android/gms/ads/internal/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/oh0;->e:Lcom/google/android/gms/internal/ads/zu0;

    sget-object v1, Lcom/google/android/gms/internal/ads/wu0;->zzgmc:Lcom/google/android/gms/internal/ads/wu0;

    .line 8
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/ku0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/pu0;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/ads/qh0;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/qh0;-><init>(Lcom/google/android/gms/internal/ads/oh0;Lcom/google/android/gms/internal/ads/zzzk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oh0;->d:Lcom/google/android/gms/internal/ads/tz0;

    .line 9
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/ads/pu0;->a(Lcom/google/android/gms/internal/ads/iu0;Lcom/google/android/gms/internal/ads/tz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/wu0;->zzgmd:Lcom/google/android/gms/internal/ads/wu0;

    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/ru0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/to;->h()Lcom/google/android/gms/internal/ads/uo;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ru0;->a()Lcom/google/android/gms/internal/ads/hu0;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/zzzk;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oh0;->c:Lcom/google/android/gms/internal/ads/zzzn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzzn;->zza(Lcom/google/android/gms/internal/ads/zzzm;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oh0;->c:Lcom/google/android/gms/internal/ads/zzzn;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ns0;->p:Lcom/google/android/gms/internal/ads/rs0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rs0;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
