.class public Lcom/google/android/gms/internal/ads/qy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sz;

.field private final b:Lcom/google/android/gms/internal/ads/fi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sz;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/qy;-><init>(Lcom/google/android/gms/internal/ads/sz;Lcom/google/android/gms/internal/ads/fi;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/sz;Lcom/google/android/gms/internal/ads/fi;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/fi;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qy;->a:Lcom/google/android/gms/internal/ads/sz;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qy;->b:Lcom/google/android/gms/internal/ads/fi;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/fi;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qy;->b:Lcom/google/android/gms/internal/ads/fi;

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/ox;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/ox<",
            "Lcom/google/android/gms/internal/ads/wv;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qy;->b:Lcom/google/android/gms/internal/ads/fi;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/ox;

    new-instance v2, Lcom/google/android/gms/internal/ads/sy;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/sy;-><init>(Lcom/google/android/gms/internal/ads/fi;)V

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/ox;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method public a(Lcom/google/android/gms/internal/ads/tz;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/tz;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ox<",
            "Lcom/google/android/gms/internal/ads/jt;",
            ">;>;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ox;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/ox;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/sz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qy;->a:Lcom/google/android/gms/internal/ads/sz;

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qy;->b:Lcom/google/android/gms/internal/ads/fi;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method
