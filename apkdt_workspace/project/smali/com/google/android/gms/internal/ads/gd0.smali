.class public final Lcom/google/android/gms/internal/ads/gd0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ad0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ad0<",
        "Lcom/google/android/gms/internal/ads/po;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/lo;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/d60;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/lo;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/ws0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gd0;->b:Landroid/content/Context;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gd0;->a:Lcom/google/android/gms/internal/ads/lo;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gd0;->d:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/gd0;->c:Lcom/google/android/gms/internal/ads/d60;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/po;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/fd0;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/fd0;-><init>(Lcom/google/android/gms/internal/ads/gd0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gd0;->d:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 5

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/gd0;->b:Landroid/content/Context;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/ns0;->r:Ljava/util/List;

    .line 4
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/at0;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object p3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gd0;->c:Lcom/google/android/gms/internal/ads/d60;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/d60;->a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/fi;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gd0;->a:Lcom/google/android/gms/internal/ads/lo;

    new-instance v2, Lcom/google/android/gms/internal/ads/lr;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/go;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->getView()Landroid/view/View;

    move-result-object v3

    .line 8
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/at0;->a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/ms0;

    move-result-object p3

    iget v4, p2, Lcom/google/android/gms/internal/ads/ns0;->R:I

    invoke-direct {p1, v3, v0, p3, v4}, Lcom/google/android/gms/internal/ads/go;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ms0;I)V

    .line 9
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/lo;->a(Lcom/google/android/gms/internal/ads/lr;Lcom/google/android/gms/internal/ads/go;)Lcom/google/android/gms/internal/ads/ho;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ho;->h()Lcom/google/android/gms/internal/ads/f60;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/ads/f60;->a(Lcom/google/android/gms/internal/ads/fi;Z)V

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq;->d()Lcom/google/android/gms/internal/ads/rt;

    move-result-object p3

    new-instance v1, Lcom/google/android/gms/internal/ads/id0;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/id0;-><init>(Lcom/google/android/gms/internal/ads/fi;)V

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 13
    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/ads/cw;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ho;->h()Lcom/google/android/gms/internal/ads/f60;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ns0;->p:Lcom/google/android/gms/internal/ads/rs0;

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/rs0;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/rs0;->a:Ljava/lang/String;

    .line 15
    invoke-static {v0, p3, p2}, Lcom/google/android/gms/internal/ads/f60;->a(Lcom/google/android/gms/internal/ads/fi;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p2

    .line 16
    new-instance p3, Lcom/google/android/gms/internal/ads/hd0;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/hd0;-><init>(Lcom/google/android/gms/internal/ads/ho;)V

    .line 17
    sget-object p1, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 18
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/pw0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Z
    .locals 0

    .line 1
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
