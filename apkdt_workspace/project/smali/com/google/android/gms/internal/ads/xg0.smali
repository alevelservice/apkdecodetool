.class final Lcom/google/android/gms/internal/ads/xg0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/sz;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/d60;

.field private final c:Lcom/google/android/gms/internal/ads/ws0;

.field private final d:Lcom/google/android/gms/internal/ads/zzawv;

.field private final e:Lcom/google/android/gms/internal/ads/ns0;

.field private final f:Lcom/google/android/gms/internal/ads/qz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/t50;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/fi;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/ws0;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/fi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/d60;",
            "Lcom/google/android/gms/internal/ads/ws0;",
            "Lcom/google/android/gms/internal/ads/zzawv;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/t50;",
            ">;",
            "Lcom/google/android/gms/internal/ads/fi;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xg0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xg0;->b:Lcom/google/android/gms/internal/ads/d60;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xg0;->c:Lcom/google/android/gms/internal/ads/ws0;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xg0;->d:Lcom/google/android/gms/internal/ads/zzawv;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/xg0;->e:Lcom/google/android/gms/internal/ads/ns0;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/xg0;->f:Lcom/google/android/gms/internal/ads/qz0;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/xg0;->g:Lcom/google/android/gms/internal/ads/fi;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/ws0;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ug0;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/internal/ads/xg0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/ws0;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/fi;)V

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/xg0;->f:Lcom/google/android/gms/internal/ads/qz0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/t50;

    .line 2
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/xg0;->e:Lcom/google/android/gms/internal/ads/ns0;

    .line 3
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/xg0;->g:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/fi;->zzzn()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/xg0;->g:Lcom/google/android/gms/internal/ads/fi;

    :goto_0
    move-object v11, v2

    goto :goto_1

    .line 5
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/aw1;->E0:Lcom/google/android/gms/internal/ads/pv1;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/xg0;->g:Lcom/google/android/gms/internal/ads/fi;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/xg0;->b:Lcom/google/android/gms/internal/ads/d60;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/xg0;->c:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/ws0;->e:Lcom/google/android/gms/internal/ads/zztw;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/d60;->a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/fi;

    move-result-object v3

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t50;->k()Lcom/google/android/gms/internal/ads/yx;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/a1;->a(Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/z0;)V

    .line 11
    new-instance v5, Lcom/google/android/gms/internal/ads/u60;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/u60;-><init>()V

    .line 12
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/xg0;->a:Landroid/content/Context;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/fi;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/ads/u60;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t50;->g()Lcom/google/android/gms/internal/ads/f60;

    move-result-object v6

    .line 14
    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/internal/ads/f60;->a(Lcom/google/android/gms/internal/ads/fi;Z)V

    .line 15
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/fi;->zzyy()Lcom/google/android/gms/internal/ads/oj;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/wg0;

    invoke-direct {v7, v5, v3}, Lcom/google/android/gms/internal/ads/wg0;-><init>(Lcom/google/android/gms/internal/ads/u60;Lcom/google/android/gms/internal/ads/fi;)V

    .line 16
    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/ads/oj;->a(Lcom/google/android/gms/internal/ads/rj;)V

    .line 17
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/fi;->zzyy()Lcom/google/android/gms/internal/ads/oj;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zg0;->a(Lcom/google/android/gms/internal/ads/fi;)Lcom/google/android/gms/internal/ads/qj;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/oj;->a(Lcom/google/android/gms/internal/ads/qj;)V

    .line 18
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/ns0;->p:Lcom/google/android/gms/internal/ads/rs0;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/rs0;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ns0;->p:Lcom/google/android/gms/internal/ads/rs0;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/rs0;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v5, v2, v6}, Lcom/google/android/gms/internal/ads/fi;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/ri; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v3

    .line 19
    :goto_1
    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/ads/fi;->zzaq(Z)V

    .line 20
    new-instance v2, Lcom/google/android/gms/ads/internal/zzi;

    const/4 v13, 0x0

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/xg0;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/wa;->n(Landroid/content/Context;)Z

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/xg0;->e:Lcom/google/android/gms/internal/ads/ns0;

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/ns0;->F:Z

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/ns0;->G:Z

    move-object v12, v2

    move/from16 v18, p1

    move/from16 v19, v5

    move/from16 v20, v3

    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/ads/internal/zzi;-><init>(ZZZFIZZZ)V

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->b()Lcom/google/android/gms/ads/internal/overlay/j;

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v8, 0x0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t50;->i()Lcom/google/android/gms/internal/ads/jz;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/xg0;->e:Lcom/google/android/gms/internal/ads/ns0;

    iget v12, v0, Lcom/google/android/gms/internal/ads/ns0;->H:I

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/xg0;->d:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/ns0;->y:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ns0;->p:Lcom/google/android/gms/internal/ads/rs0;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/rs0;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rs0;->a:Ljava/lang/String;

    move-object v7, v3

    move-object v15, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    invoke-direct/range {v7 .. v17}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/st1;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/internal/ads/fi;ILcom/google/android/gms/internal/ads/zzawv;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzi;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    .line 24
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/j;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, ""

    .line 25
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
