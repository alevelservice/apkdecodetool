.class public abstract Lcom/google/android/gms/internal/ads/by0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cz0;


# static fields
.field protected static volatile x:Lcom/google/android/gms/internal/ads/cf1;


# instance fields
.field protected e:Landroid/view/MotionEvent;

.field protected f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected g:J

.field protected h:J

.field protected i:J

.field protected j:J

.field protected k:J

.field protected l:J

.field protected m:J

.field protected n:D

.field private o:D

.field private p:D

.field protected q:F

.field protected r:F

.field protected s:F

.field protected t:F

.field private u:Z

.field protected v:Z

.field protected w:Landroid/util/DisplayMetrics;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/by0;->f:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->g:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->h:J

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->i:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->j:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->k:J

    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->l:J

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->m:J

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/by0;->u:Z

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/by0;->v:Z

    .line 12
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->C1:Lcom/google/android/gms/internal/ads/pv1;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/nf0;->a()V

    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/by0;->x:Lcom/google/android/gms/internal/ads/cf1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jf1;->a(Lcom/google/android/gms/internal/ads/cf1;)Z

    .line 17
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/by0;->w:Landroid/util/DisplayMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 53
    array-length v7, v5

    if-lez v7, :cond_0

    .line 54
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/q81;->c()Lcom/google/android/gms/internal/ads/q81;

    move-result-object v7

    .line 55
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/yq;->a([BLcom/google/android/gms/internal/ads/q81;)Lcom/google/android/gms/internal/ads/yq;

    move-result-object v5
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/o91; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v5, v6

    .line 56
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 57
    sget-object v9, Lcom/google/android/gms/internal/ads/aw1;->r1:Lcom/google/android/gms/internal/ads/pv1;

    .line 58
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v9

    .line 59
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 60
    sget-object v10, Lcom/google/android/gms/internal/ads/by0;->x:Lcom/google/android/gms/internal/ads/cf1;

    if-eqz v10, :cond_1

    sget-object v10, Lcom/google/android/gms/internal/ads/by0;->x:Lcom/google/android/gms/internal/ads/cf1;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/cf1;->i()Lcom/google/android/gms/internal/ads/ax0;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v6

    .line 61
    :goto_1
    sget-object v11, Lcom/google/android/gms/internal/ads/aw1;->C1:Lcom/google/android/gms/internal/ads/pv1;

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v11

    .line 63
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "be"

    goto :goto_2

    :cond_2
    const-string v11, "te"

    goto :goto_2

    :cond_3
    move-object v10, v6

    move-object v11, v10

    :goto_2
    const/16 v19, -0x1

    .line 64
    :try_start_1
    sget v12, Lcom/google/android/gms/internal/ads/dc1;->c:I

    if-ne v2, v12, :cond_4

    const/16 v5, 0x3ea

    .line 65
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/by0;->a(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/ev$b;

    move-result-object v6

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/by0;->u:Z

    const/16 v13, 0x3ea

    goto :goto_3

    .line 67
    :cond_4
    sget v12, Lcom/google/android/gms/internal/ads/dc1;->b:I

    if-ne v2, v12, :cond_5

    const/16 v5, 0x3f0

    .line 68
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/by0;->b(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/ev$b;

    move-result-object v0

    move-object v6, v0

    const/16 v13, 0x3f0

    goto :goto_3

    :cond_5
    const/16 v3, 0x3e8

    .line 69
    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/internal/ads/by0;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yq;)Lcom/google/android/gms/internal/ads/ev$b;

    move-result-object v0

    move-object v6, v0

    const/16 v13, 0x3e8

    :goto_3
    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    const/4 v14, -0x1

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v15, v3, v7

    move-object v12, v10

    move-object/from16 v17, v11

    .line 71
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/ax0;->a(IIJLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v18, v0

    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    .line 72
    sget v0, Lcom/google/android/gms/internal/ads/dc1;->c:I

    if-ne v2, v0, :cond_6

    const/16 v0, 0x3eb

    const/16 v13, 0x3eb

    goto :goto_4

    .line 73
    :cond_6
    sget v0, Lcom/google/android/gms/internal/ads/dc1;->b:I

    if-ne v2, v0, :cond_7

    const/16 v0, 0x3f1

    const/16 v13, 0x3f1

    goto :goto_4

    .line 74
    :cond_7
    sget v0, Lcom/google/android/gms/internal/ads/dc1;->a:I

    if-ne v2, v0, :cond_8

    const/16 v0, 0x3e9

    const/16 v13, 0x3e9

    goto :goto_4

    :cond_8
    const/4 v13, -0x1

    :goto_4
    const/4 v14, -0x1

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v15, v3, v7

    move-object v12, v10

    move-object/from16 v17, v11

    .line 76
    invoke-virtual/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/ax0;->a(IIJLjava/lang/String;Ljava/lang/Exception;)V

    .line 77
    :cond_9
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v6, :cond_e

    .line 78
    :try_start_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/e91;

    check-cast v0, Lcom/google/android/gms/internal/ads/ev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91;->d()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_7

    .line 79
    :cond_a
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/e91;

    check-cast v0, Lcom/google/android/gms/internal/ads/ev;

    move-object/from16 v5, p2

    .line 80
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/nf0;->a(Lcom/google/android/gms/internal/ads/ev;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_12

    if-eqz v10, :cond_12

    .line 81
    sget v5, Lcom/google/android/gms/internal/ads/dc1;->c:I

    if-ne v2, v5, :cond_b

    const/16 v5, 0x3ee

    const/16 v13, 0x3ee

    goto :goto_6

    .line 82
    :cond_b
    sget v5, Lcom/google/android/gms/internal/ads/dc1;->b:I

    if-ne v2, v5, :cond_c

    const/16 v5, 0x3f2

    const/16 v13, 0x3f2

    goto :goto_6

    .line 83
    :cond_c
    sget v5, Lcom/google/android/gms/internal/ads/dc1;->a:I

    if-ne v2, v5, :cond_d

    const/16 v5, 0x3ec

    const/16 v13, 0x3ec

    goto :goto_6

    :cond_d
    const/4 v13, -0x1

    :goto_6
    const/4 v14, -0x1

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v15, v5, v3

    move-object v12, v10

    move-object/from16 v17, v11

    .line 85
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/ax0;->a(IIJLjava/lang/String;)V

    goto :goto_9

    :cond_e
    :goto_7
    const/4 v0, 0x5

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v18, v0

    const/4 v0, 0x7

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_12

    if-eqz v10, :cond_12

    .line 88
    sget v5, Lcom/google/android/gms/internal/ads/dc1;->c:I

    if-ne v2, v5, :cond_f

    const/16 v2, 0x3ef

    const/16 v13, 0x3ef

    goto :goto_8

    .line 89
    :cond_f
    sget v5, Lcom/google/android/gms/internal/ads/dc1;->b:I

    if-ne v2, v5, :cond_10

    const/16 v2, 0x3f3

    const/16 v13, 0x3f3

    goto :goto_8

    .line 90
    :cond_10
    sget v5, Lcom/google/android/gms/internal/ads/dc1;->a:I

    if-ne v2, v5, :cond_11

    const/16 v2, 0x3ed

    const/16 v13, 0x3ed

    goto :goto_8

    :cond_11
    const/4 v13, -0x1

    :goto_8
    const/4 v14, -0x1

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v15, v5, v3

    move-object v12, v10

    move-object/from16 v17, v11

    .line 92
    invoke-virtual/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/ax0;->a(IIJLjava/lang/String;Ljava/lang/Exception;)V

    :cond_12
    :goto_9
    return-object v0
.end method


# virtual methods
.method protected abstract a([Ljava/lang/StackTraceElement;)J
.end method

.method protected abstract a(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/ev$b;
.end method

.method protected abstract a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yq;)Lcom/google/android/gms/internal/ads/ev$b;
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/kf1;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->E1:Lcom/google/android/gms/internal/ads/pv1;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The caller must not be called from the UI thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 5
    sget v4, Lcom/google/android/gms/internal/ads/dc1;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/by0;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/by0;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 7

    .line 7
    sget v3, Lcom/google/android/gms/internal/ads/dc1;->c:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/by0;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(III)V
    .locals 16

    move-object/from16 v0, p0

    .line 47
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/by0;->e:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 49
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/by0;->w:Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    move/from16 v4, p3

    int-to-long v4, v4

    const/4 v6, 0x1

    move/from16 v7, p1

    int-to-float v7, v7

    .line 50
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v1

    move/from16 v8, p2

    int-to-float v8, v8

    mul-float v8, v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/by0;->e:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 51
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/by0;->e:Landroid/view/MotionEvent;

    :goto_0
    const/4 v1, 0x0

    .line 52
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/by0;->v:Z

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 14

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/by0;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/by0;->j:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/by0;->i:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/by0;->h:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/by0;->g:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/by0;->k:J

    .line 10
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/by0;->m:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/by0;->l:J

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/by0;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 12
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/by0;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/by0;->e:Landroid/view/MotionEvent;

    .line 15
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/by0;->u:Z

    .line 16
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v4, v0

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v6, v0

    .line 19
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/by0;->o:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v4, v8

    .line 20
    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/by0;->p:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v10, v6, v10

    .line 21
    iget-wide v12, p0, Lcom/google/android/gms/internal/ads/by0;->n:D

    mul-double v8, v8, v8

    mul-double v10, v10, v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v12, v8

    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/by0;->n:D

    .line 22
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/by0;->o:D

    .line 23
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/by0;->p:D

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    .line 24
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/by0;->n:D

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/by0;->o:D

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/by0;->p:D

    .line 27
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v4, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_5

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto/16 :goto_3

    .line 28
    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->j:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->j:J

    goto/16 :goto_3

    .line 29
    :cond_5
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/by0;->h:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    add-int/2addr v0, v3

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/by0;->h:J

    .line 30
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/by0;->b(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/lf1;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 31
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lf1;->d:Ljava/lang/Long;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lf1;->g:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 32
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/by0;->l:J

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lf1;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lf1;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/by0;->l:J

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/by0;->w:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lf1;->e:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lf1;->h:Ljava/lang/Long;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_c

    .line 34
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->m:J

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/lf1;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/lf1;->h:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->m:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/bf1; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 35
    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/by0;->e:Landroid/view/MotionEvent;

    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/by0;->f:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/by0;->e:Landroid/view/MotionEvent;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/by0;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_a

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/by0;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 39
    :cond_a
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->i:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->i:J

    .line 40
    :try_start_1
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/by0;->a([Ljava/lang/StackTraceElement;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->k:J
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/bf1; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 41
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/by0;->q:F

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/by0;->r:F

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/by0;->s:F

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/by0;->t:F

    .line 45
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->g:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/by0;->g:J

    .line 46
    :catch_0
    :cond_c
    :goto_3
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/by0;->v:Z

    return-void
.end method

.method protected abstract b(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/ev$b;
.end method

.method protected abstract b(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/lf1;
.end method
