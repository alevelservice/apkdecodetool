.class public final Lcom/google/android/gms/internal/ads/rg0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ad0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ad0<",
        "Lcom/google/android/gms/internal/ads/r50;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/d60;

.field private final c:Lcom/google/android/gms/internal/ads/y50;

.field private final d:Lcom/google/android/gms/internal/ads/ws0;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lcom/google/android/gms/internal/ads/zzawv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ws0;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/y50;Lcom/google/android/gms/internal/ads/d60;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rg0;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rg0;->d:Lcom/google/android/gms/internal/ads/ws0;

    .line 4
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/rg0;->c:Lcom/google/android/gms/internal/ads/y50;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/rg0;->e:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rg0;->f:Lcom/google/android/gms/internal/ads/zzawv;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/rg0;->b:Lcom/google/android/gms/internal/ads/d60;

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/u60;Lcom/google/android/gms/internal/ads/vs0;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/rg0;->b:Lcom/google/android/gms/internal/ads/d60;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/rg0;->d:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ws0;->e:Lcom/google/android/gms/internal/ads/zztw;

    iget-boolean v3, v10, Lcom/google/android/gms/internal/ads/ns0;->P:Z

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/d60;->a(Lcom/google/android/gms/internal/ads/zztw;Z)Lcom/google/android/gms/internal/ads/fi;

    move-result-object v11

    .line 7
    iget-boolean v1, v10, Lcom/google/android/gms/internal/ads/ns0;->M:Z

    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/ads/fi;->zzat(Z)V

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/rg0;->a:Landroid/content/Context;

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/fi;->getView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/u60;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 9
    new-instance v12, Lcom/google/android/gms/internal/ads/he;

    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/he;-><init>()V

    .line 10
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/rg0;->c:Lcom/google/android/gms/internal/ads/y50;

    new-instance v14, Lcom/google/android/gms/internal/ads/lr;

    const/4 v15, 0x0

    move-object/from16 v1, p3

    invoke-direct {v14, v1, v10, v15}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/internal/ads/w50;

    new-instance v8, Lcom/google/android/gms/internal/ads/xg0;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/rg0;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/rg0;->b:Lcom/google/android/gms/internal/ads/d60;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/rg0;->d:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/rg0;->f:Lcom/google/android/gms/internal/ads/zzawv;

    const/16 v16, 0x0

    move-object v1, v8

    move-object/from16 v6, p1

    move-object v7, v12

    move-object v15, v8

    move-object v8, v11

    move-object v0, v9

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/xg0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/ws0;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ug0;)V

    invoke-direct {v0, v15, v11}, Lcom/google/android/gms/internal/ads/w50;-><init>(Lcom/google/android/gms/internal/ads/sz;Lcom/google/android/gms/internal/ads/fi;)V

    .line 11
    invoke-virtual {v13, v14, v0}, Lcom/google/android/gms/internal/ads/y50;->a(Lcom/google/android/gms/internal/ads/lr;Lcom/google/android/gms/internal/ads/w50;)Lcom/google/android/gms/internal/ads/t50;

    move-result-object v0

    .line 12
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/ads/he;->b(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t50;->k()Lcom/google/android/gms/internal/ads/yx;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/google/android/gms/internal/ads/a1;->a(Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/z0;)V

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uq;->d()Lcom/google/android/gms/internal/ads/rt;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/sg0;

    invoke-direct {v2, v11}, Lcom/google/android/gms/internal/ads/sg0;-><init>(Lcom/google/android/gms/internal/ads/fi;)V

    .line 15
    sget-object v3, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/cw;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t50;->g()Lcom/google/android/gms/internal/ads/f60;

    move-result-object v1

    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/ads/f60;->a(Lcom/google/android/gms/internal/ads/fi;Z)V

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->I3:Lcom/google/android/gms/internal/ads/pv1;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v10, Lcom/google/android/gms/internal/ads/ns0;->P:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v1

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t50;->g()Lcom/google/android/gms/internal/ads/f60;

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/ns0;->p:Lcom/google/android/gms/internal/ads/rs0;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/rs0;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/rs0;->a:Ljava/lang/String;

    .line 24
    invoke-static {v11, v2, v1}, Lcom/google/android/gms/internal/ads/f60;->a(Lcom/google/android/gms/internal/ads/fi;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v1

    .line 25
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/vg0;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v11, v10, v0}, Lcom/google/android/gms/internal/ads/vg0;-><init>(Lcom/google/android/gms/internal/ads/rg0;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/t50;)V

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/rg0;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/pw0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    return-object v0
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
            "Lcom/google/android/gms/internal/ads/r50;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/u60;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/u60;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/qg0;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/qg0;-><init>(Lcom/google/android/gms/internal/ads/rg0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/u60;Lcom/google/android/gms/internal/ads/vs0;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rg0;->e:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tg0;->a(Lcom/google/android/gms/internal/ads/u60;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/qz0;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

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
