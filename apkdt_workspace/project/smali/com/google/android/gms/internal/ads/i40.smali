.class public final Lcom/google/android/gms/internal/ads/i40;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/internal/ads/ao;

.field private final c:Lcom/google/android/gms/internal/ads/nx;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/ao;Lcom/google/android/gms/internal/ads/nx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i40;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/i40;->c:Lcom/google/android/gms/internal/ads/nx;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i40;->b:Lcom/google/android/gms/internal/ads/ao;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/fi;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i40;->c:Lcom/google/android/gms/internal/ads/nx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nx;->a(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i40;->c:Lcom/google/android/gms/internal/ads/nx;

    new-instance v1, Lcom/google/android/gms/internal/ads/l40;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/l40;-><init>(Lcom/google/android/gms/internal/ads/fi;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i40;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cw;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i40;->c:Lcom/google/android/gms/internal/ads/nx;

    new-instance v1, Lcom/google/android/gms/internal/ads/k40;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/k40;-><init>(Lcom/google/android/gms/internal/ads/fi;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i40;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cw;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i40;->c:Lcom/google/android/gms/internal/ads/nx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i40;->b:Lcom/google/android/gms/internal/ads/ao;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i40;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cw;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i40;->b:Lcom/google/android/gms/internal/ads/ao;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ao;->a(Lcom/google/android/gms/internal/ads/fi;)V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/n40;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/n40;-><init>(Lcom/google/android/gms/internal/ads/i40;)V

    const-string v1, "/trackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/m40;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/m40;-><init>(Lcom/google/android/gms/internal/ads/i40;)V

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    return-void
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/fi;Ljava/util/Map;)V
    .locals 0

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/i40;->b:Lcom/google/android/gms/internal/ads/ao;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ao;->a()V

    return-void
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/fi;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/i40;->b:Lcom/google/android/gms/internal/ads/ao;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ao;->b()V

    return-void
.end method
