.class public final Lcom/google/android/gms/internal/ads/k20;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/d60;

.field private final c:Lcom/google/android/gms/internal/ads/y40;

.field private final d:Lcom/google/android/gms/internal/ads/ao;

.field private final e:Lcom/google/android/gms/internal/ads/u10;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/y40;Lcom/google/android/gms/internal/ads/ao;Lcom/google/android/gms/internal/ads/u10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k20;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/k20;->b:Lcom/google/android/gms/internal/ads/d60;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/k20;->c:Lcom/google/android/gms/internal/ads/y40;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/k20;->d:Lcom/google/android/gms/internal/ads/ao;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/k20;->e:Lcom/google/android/gms/internal/ads/u10;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k20;->b:Lcom/google/android/gms/internal/ads/d60;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k20;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zztw;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/d60;->a(Lcom/google/android/gms/internal/ads/zztw;Z)Lcom/google/android/gms/internal/ads/fi;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/o20;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/o20;-><init>(Lcom/google/android/gms/internal/ads/k20;)V

    const-string v2, "/sendMessageToSdk"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/m20;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/m20;-><init>(Lcom/google/android/gms/internal/ads/k20;)V

    const-string v2, "/adMuted"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k20;->c:Lcom/google/android/gms/internal/ads/y40;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/q20;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/q20;-><init>(Lcom/google/android/gms/internal/ads/k20;)V

    const-string v4, "/loadHtml"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/y40;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k20;->c:Lcom/google/android/gms/internal/ads/y40;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/p20;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/p20;-><init>(Lcom/google/android/gms/internal/ads/k20;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/y40;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k20;->c:Lcom/google/android/gms/internal/ads/y40;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/s20;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/s20;-><init>(Lcom/google/android/gms/internal/ads/k20;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/y40;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/fi;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Hiding native ads overlay."

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->getView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k20;->d:Lcom/google/android/gms/internal/ads/ao;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ao;->a(Z)V

    return-void
.end method

.method final synthetic a(Ljava/util/Map;Z)V
    .locals 2

    .line 13
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "messageType"

    const-string v1, "htmlLoaded"

    .line 14
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k20;->c:Lcom/google/android/gms/internal/ads/y40;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/y40;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/fi;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Showing native ads overlay."

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k20;->d:Lcom/google/android/gms/internal/ads/ao;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ao;->a(Z)V

    return-void
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/fi;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k20;->e:Lcom/google/android/gms/internal/ads/u10;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/u10;->a()V

    return-void
.end method

.method final synthetic d(Lcom/google/android/gms/internal/ads/fi;Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k20;->c:Lcom/google/android/gms/internal/ads/y40;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/y40;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
