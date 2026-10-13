.class public final Lcom/google/android/gms/internal/ads/s1;
.super Lcom/google/android/gms/internal/ads/c2;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/y1;
.implements Lcom/google/android/gms/internal/ads/h2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/c2<",
        "Lcom/google/android/gms/internal/ads/p3;",
        ">;",
        "Lcom/google/android/gms/internal/ads/y1;",
        "Lcom/google/android/gms/internal/ads/h2;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final g:Lcom/google/android/gms/internal/ads/zzbdh;

.field private h:Lcom/google/android/gms/internal/ads/g2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/c2;-><init>()V

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdh;

    new-instance v1, Lcom/google/android/gms/internal/ads/z1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/z1;-><init>(Lcom/google/android/gms/internal/ads/s1;Lcom/google/android/gms/internal/ads/x1;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbdh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/hk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->g:Lcom/google/android/gms/internal/ads/zzbdh;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->g:Lcom/google/android/gms/internal/ads/zzbdh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->g:Lcom/google/android/gms/internal/ads/zzbdh;

    new-instance v1, Lcom/google/android/gms/internal/ads/v1;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/v1;-><init>(Lcom/google/android/gms/internal/ads/d2;Lcom/google/android/gms/internal/ads/x1;)V

    const-string v2, "GoogleJsInterface"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdh;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s1;->g:Lcom/google/android/gms/internal/ads/zzbdh;

    .line 6
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/wa;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-super {p0, p0}, Lcom/google/android/gms/internal/ads/c2;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/ads/ri;

    const-string v0, "Init failed."

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/ri;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/s1;)Lcom/google/android/gms/internal/ads/g2;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s1;->h:Lcom/google/android/gms/internal/ads/g2;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/s3;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/r3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/r3;-><init>(Lcom/google/android/gms/internal/ads/p3;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/g2;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s1;->h:Lcom/google/android/gms/internal/ads/g2;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/tz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/u1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/u1;-><init>(Lcom/google/android/gms/internal/ads/s1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

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

    const-string p1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>"

    .line 1
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/s1;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/tz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/r1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/r1;-><init>(Lcom/google/android/gms/internal/ads/s1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->g:Lcom/google/android/gms/internal/ads/zzbdh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdh;->destroy()V

    return-void
.end method

.method final synthetic e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->g:Lcom/google/android/gms/internal/ads/zzbdh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdh;->zzct(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->g:Lcom/google/android/gms/internal/ads/zzbdh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdh;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic g(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->g:Lcom/google/android/gms/internal/ads/zzbdh;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdh;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final isDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->g:Lcom/google/android/gms/internal/ads/zzbdh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdh;->isDestroyed()Z

    move-result v0

    return v0
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

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/b2;->a(Lcom/google/android/gms/internal/ads/y1;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzct(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/tz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/t1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/t1;-><init>(Lcom/google/android/gms/internal/ads/s1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
