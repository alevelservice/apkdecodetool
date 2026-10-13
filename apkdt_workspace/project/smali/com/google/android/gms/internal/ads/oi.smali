.class public final Lcom/google/android/gms/internal/ads/oi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/qr1;Z)Lcom/google/android/gms/internal/ads/fi;
    .locals 15
    .param p5    # Lcom/google/android/gms/internal/ads/t11;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/aw1;->a(Landroid/content/Context;)V

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->y0:Lcom/google/android/gms/internal/ads/pv1;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    .line 7
    invoke-static/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/ak;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/qr1;Z)Lcom/google/android/gms/internal/ads/fi;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/qi;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/qi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/qr1;Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xc;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/ri;

    const-string v2, "Webview initialization failed."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ri;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/ads/internal/b;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzawv;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/t11;",
            "Lcom/google/android/gms/ads/internal/b;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/fi;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/ads/ni;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ni;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/ads/internal/b;Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/tz0;

    .line 2
    invoke-static {v0, v7, p0}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p0

    return-object p0
.end method
