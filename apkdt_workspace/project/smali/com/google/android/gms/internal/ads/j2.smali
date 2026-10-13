.class public final Lcom/google/android/gms/internal/ads/j2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/y1;
.implements Lcom/google/android/gms/internal/ads/h2;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/fi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/ads/internal/b;)V
    .locals 14
    .param p3    # Lcom/google/android/gms/internal/ads/t11;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->d()Lcom/google/android/gms/internal/ads/oi;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/uj;->f()Lcom/google/android/gms/internal/ads/uj;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/ks1;->a()Lcom/google/android/gms/internal/ads/ks1;

    move-result-object v11

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    .line 5
    invoke-static/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/oi;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/qr1;Z)Lcom/google/android/gms/internal/ads/fi;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/j2;->e:Lcom/google/android/gms/internal/ads/fi;

    .line 6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/j2;->e:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/fi;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/j2;)Lcom/google/android/gms/internal/ads/fi;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/j2;->e:Lcom/google/android/gms/internal/ads/fi;

    return-object p0
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/gd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/s3;
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/r3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/r3;-><init>(Lcom/google/android/gms/internal/ads/p3;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/g2;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j2;->e:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzyy()Lcom/google/android/gms/internal/ads/oj;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k2;->a(Lcom/google/android/gms/internal/ads/g2;)Lcom/google/android/gms/internal/ads/qj;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/oj;->a(Lcom/google/android/gms/internal/ads/qj;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/p2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/p2;-><init>(Lcom/google/android/gms/internal/ads/j2;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/b2;->a(Lcom/google/android/gms/internal/ads/y1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    .line 1
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/n2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/n2;-><init>(Lcom/google/android/gms/internal/ads/j2;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/m2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/m2;-><init>(Lcom/google/android/gms/internal/ads/j2;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j2;->e:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/r2;->zzct(Ljava/lang/String;)V

    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j2;->e:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->destroy()V

    return-void
.end method

.method public final isDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j2;->e:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/o0<",
            "-",
            "Lcom/google/android/gms/internal/ads/p3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j2;->e:Lcom/google/android/gms/internal/ads/fi;

    new-instance v1, Lcom/google/android/gms/internal/ads/o2;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/o2;-><init>(Lcom/google/android/gms/internal/ads/j2;Lcom/google/android/gms/internal/ads/o0;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/b2;->a(Lcom/google/android/gms/internal/ads/y1;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/b2;->b(Lcom/google/android/gms/internal/ads/y1;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/o0<",
            "-",
            "Lcom/google/android/gms/internal/ads/p3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j2;->e:Lcom/google/android/gms/internal/ads/fi;

    new-instance v1, Lcom/google/android/gms/internal/ads/l2;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/l2;-><init>(Lcom/google/android/gms/internal/ads/o0;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/b2;->a(Lcom/google/android/gms/internal/ads/y1;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzct(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/i2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/i2;-><init>(Lcom/google/android/gms/internal/ads/j2;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j2;->a(Ljava/lang/Runnable;)V

    return-void
.end method
